*** Settings ***
Library  RequestsLibrary
Library  SeleniumLibrary


*** Variables ***
${URL}  http://127.0.0.1:5000/


*** Test Cases ***
TC_001_Get_Request
    create session  Get_Student_Details  ${URL}
    ${res}=  get request  Get_Student_Details  /login
    ${actual_code}=  convert to string  ${res.status_code}
    should be equal  ${actual_code}  200
    log to console  ${res.status_code}
    log to console  ${res.content}
