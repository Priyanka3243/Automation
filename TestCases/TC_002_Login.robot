*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resource.robot
Library  String
Test Setup  Open Browser Page
Test Teardown   Close Browser





*** Test Cases ***

Login User
    click OnLogin
    Input Username
    Input Password
    click loginButton
    verify title
    click logout

Invalid Login User
    click OnLogin
    Invalid Username
    Invalid Password
    click loginButton
    verify title

