import os
import ast

class GYAFCData:
    def __init__(self, dirName):
        self.lines_in_formal = {}
        self.lines_in_informal = {}
        self.conversations = []

        self.loadLines(os.path.join(dirName, "Entertainment_Music", "train"))
        self.loadConversations(os.path.join(dirName, "Entertainment_Music", "train"))

    def loadLines(self, fileName):
        self.lines_in_formal = {}
        lineno = 0
        with open(os.path.join(fileName, 'formal'), 'r', encoding='utf-8-sig') as file1:
            for line in file1.readlines():
                lineno = lineno + 1
                lineinfo = {}
                lineinfo["text"] = line.strip('\n')
                self.lines_in_formal[str(lineno)] = lineinfo

        self.lines_in_informal = {}
        lineno = 0
        with open(os.path.join(fileName, 'informal'), 'r', encoding='utf-8-sig') as file2:
            for line in file2.readlines():
                lineno = lineno + 1
                lineinfo = {}
                lineinfo["text"] = line.strip('\n')
                self.lines_in_informal[str(lineno)] = lineinfo

    def loadConversations(self, fileName):
        conversations = []
        lineno = 0
        for it in self.lines_in_formal:
            lineno = lineno + 1
            convObj = {}
            convObj["lines"] = []
            convObj["lines"].append(self.lines_in_formal[str(lineno)])
            convObj["lines"].append(self.lines_in_informal[str(lineno)])
            conversations.append(convObj)
        self.conversations = conversations

    def getConversations(self):
        return self.conversations

