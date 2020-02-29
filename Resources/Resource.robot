*** Settings ***
Library  SeleniumLibrary
Library  String
Library  ../ExternalKeywords/UserKeywords.py


*** Variables ***
${BROWSER}  Chrome
${URL}  http://127.0.0.1:5000/
${user}  PriyankaUser
${pass}  priyanka123
${unregisterUN}  priyankatil


*** Keywords ***
Open Browser Page
    [Documentation]    Opens browser to login page
    Open Browser  ${URL}  ${BROWSER}

Click Register
    click link  xpath://a[@href="/register"]
    ${Title}  Get Title
    Title Should Be  ${Title}

Input Username
    ${username}=  string_generator
    Input Text  id:username  ${username}


Input Password
    ${password}=  string_generator
    Input Text  id:password  ${password}


Input FirstName
    ${firstname}=  string_generator
    Input Text  id:firstname  ${firstname}

Input LastName
    ${lastname}=  string_generator
    Input Text  id:lastname  ${lastname}

Input PhoneNUmber
    ${phonenumber}=  string_num_generator
    Input Text  id:phone  ${phonenumber}

Submit Credentials
    Click Button  xpath://input[@value="Register"]

Input Login username
    Input Text  id:username  ${user}

Input Login Password
    Input Text  id:password  ${pass}

click OnLogin
    Click Link  xpath://a[@href="/login"]

click logout
    Click Link   xpath:/html/body/nav/ul/li[2]/a

Invalid username
    Input Text  id:username   yiu

Invalid password
    Input Text  id:password  1234

click loginButton
    Click Button  xpath://input[@value="Log In"]



verify title
    ${title}  Get Title
    Title Should Be  ${title}
