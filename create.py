import sys
import os
from github import Github
import getpass


path = "/Users/sat/Documents/Projects/"

username = "nicegeeker"

def create():
    """
    create a repo on github
    """
    folderName = str(sys.argv[1])
    user = Github(username, password).get_user()
    repo = user.create_repo(folderName)
    print("Succesfully created repository {}".format(folderName))

if __name__ == "__main__":
    password = getpass.getpass("Input password for Github:")
    create()
