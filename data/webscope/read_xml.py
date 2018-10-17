from bs4 import BeautifulSoup

infile = open('/Users/xuyunlong/Documents/PHD/MLRG/papers-arti/project/WebscopeDataset/Webscope_L6/FullOct2007.xml', 'r', encoding='utf-8')

contents = infile.read()

soup = BeautifulSoup(contents, "html.parser")

questionArray = []

question_dict = {}

count = 0

def read_in_chunks(file_object, chunk_size=10240):
    """Lazy function (generator) to read a file piece by piece.
    Default chunk size: 1k."""
    while True:
        data = file_object.read(chunk_size)
        if not data:
            break
        yield data


for piece in read_in_chunks(infile):
    vespaadds = soup.find_all('vespaadd')
    for question in vespaadds:
        count = count + 1
        question_dict = {}
        uri = question.uri.text
        subject = question.subject.text
        nbestanswers = []
        answers = question.nbestanswers.find_all('answer_item')
        # print(answers)
        for answer in answers:
            answer_item = answer.text
            nbestanswers.append(answer_item)
        id = question.id.text
        best_id = question.best_id

        question_dict["uri"] = uri
        question_dict["subject"] = subject
        question_dict["id"] = id
        question_dict["best_id"] = best_id
        question_dict["nbestanswers"] = nbestanswers

        if count % 100 == 0:
            print(question_dict)

        questionArray.append(question_dict)

# for ques in questionArray:
#     print(ques)
