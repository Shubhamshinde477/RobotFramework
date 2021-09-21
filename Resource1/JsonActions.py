import json
from robot.api.deco import library
from robot.api.deco import keyword
import os

@library(scope='GLOBAL', auto_keywords=True)
class JsonActions(object):
    ROBOT_LIBRARY_SCOPE = "Global"
    def __init__(self):
        with open("/home/swapnil/PycharmProjects/RobotFramework/TestData/JsonData.json")  as file:
            self.json_data = json.load(file)
    @keyword
    def access_user(self):
        return self.json_data["user"]

    @keyword
    def access_password(self):
        return self.json_data["password"]
    @keyword
    def access_url(self):
        return self.json_data['url']
    @keyword
    def change_result(self, value):
        self.json_data['Result'] = value







