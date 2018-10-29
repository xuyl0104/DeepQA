import os
import ast

class MSParaphraseData:
    def __init__(self, dirName):
        self.lines = {}
        self.conversations = []

        self.validation_lines = {}
        self.validation_conversations = []

        PARAPHRASE_LINES_FIELDS = ["sentenceID","text","author","url_agency","date","web_date"]
        PARAPHRASE_CONVERSATIONS_FIELDS = ["quality","string1ID","string2ID","string1","string2"]

        self.lines = self.loadLines(os.path.join(dirName, "msr_paraphrase_data.txt"), PARAPHRASE_LINES_FIELDS)
        self.conversations = self.loadConversations(os.path.join(dirName, "msr_paraphrase_train.txt"), PARAPHRASE_CONVERSATIONS_FIELDS)

        self.validation_lines = self.loadLines(os.path.join(dirName, "msr_paraphrase_data.txt"), PARAPHRASE_LINES_FIELDS)
        self.validation_conversations = self.loadConversations(os.path.join(dirName, "msr_paraphrase_test.txt"), PARAPHRASE_CONVERSATIONS_FIELDS)

    def loadLines(self, fileName, fields):
        lines = {}

        with open(fileName, 'r', encoding="utf-8-sig") as f:  # TODO: Solve Iso encoding pb !
            for line in f:
                values = line.split("\t")

                # Extract fields
                lineObj = {}
                for i, field in enumerate(fields):
                    lineObj[field] = values[i]

                lines[lineObj['sentenceID']] = lineObj

        return lines

    def loadConversations(self, fileName, fields):
        conversations = []

        with open(fileName, 'r', encoding='utf-8-sig') as f:  # TODO: Solve Iso encoding pb !
            for line in f:
                values = line.split("\t")
                print (values[0] == '1')
                if values[0] == '1':
                    # Extract fields
                    convObj = {}
                    for i, field in enumerate(fields):
                        convObj[field] = values[i]

                    lineIds = [convObj["string1ID"], convObj["string2ID"]]
                    # Reassemble lines
                    convObj["lines"] = []
                    for lineId in lineIds:
                        convObj["lines"].append(self.lines[lineId])

                    conversations.append(convObj)

        return conversations

    def getConversations(self):
        return self.conversations


    def getValidationConversations(self):
        return self.validation_conversations