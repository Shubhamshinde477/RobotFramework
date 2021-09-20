import json
from robot.api.deco import library
import os

class jsonOperations:
    ROBOT_LIBRARY_SCOPE = "SUITE"
    def __init__(self):
        with open(os.getcwd()+"\\TestData\\JsonData.json")  as file:
            self.json_data = json.load(file)

    def access_user(self):
        return self.json_data["user"]

    def access_password(self):
        return self.json_data["password"]



