*** Settings ***
Library  Selenium2Library
Resource  C:/git-Signup/Resources/PO/SignUpPage.robot
Resource  C:/git-Signup/Resources/Common.robot
Resource  C:/git-Signup/Resources/DataManager.robot
Suite Setup  Begin Test
Suite Teardown  End Test

*** Variables ***
${URL} =  http://testurl.com
${BROWSER} =  chrome
${CSV_FILEPATH1} =  C:\\git-Signup\\Resources\\Data\\SignupInvalid.csv
${CSV_FILEPATH2} =  C:\\git-Signup\\Resources\\Data\\SignupValid.csv

*** Test Cases ***
Sign Up Test
    go to  ${URL}
    ${SignUpInvalid} =  Get CSV Data  ${CSV_FILEPATH1}
    SignUp Invalid Verification  ${SignUpInvalid}
    ${SignUpValid} =  Get CSV Data  ${CSV_FILEPATH2}
    SignUp Valid Verification  ${SignUpValid}
