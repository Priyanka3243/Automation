*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resource.robot
Library  String
Test Setup  Open Browser Page
Test Teardown  Close Browser



*** Test Cases ***
Register User
    Click Register
    verify title
    Input Username
    Input Password
    Input FirstName
    Input LastName
    Input PhoneNUmber
    Submit Credentials
    verify title



