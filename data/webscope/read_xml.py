from bs4 import BeautifulSoup

infile = open('small_sample.xml', 'r', encoding='utf-8')

contents = infile.read()

soup = BeautifulSoup(contents, "html.parser")

questionArray = []

question_dict = {}

vespaadd = soup.find_all('vespaadd')

count = 0

for question in vespaadd:
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

    if count % 1 == 0:
        print(question_dict)

    questionArray.append(question_dict)

# for ques in questionArray:
#     print(ques)
