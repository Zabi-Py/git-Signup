*** Settings ***
Library  Selenium2Library

*** Variables ***
${Firstname} =  first
${Lastname} =  last
${Department} =  dept
${Username} =  usr
${Password} =  pwd
${ConfirmPassword} =  cnfpwd
${Email} =  email
${ContactNo} =  contact
${Submit} =  submitbtn
${Firstname_error} =  firstnameerror
${Lastname_error} =  lastnameerror
${Department_error} =  depterror
${Username_error} =  usrerror
${Password_error} =  pwderror
${ConfirmPassword_error} =  cnfpwderror
${Email_error} =  emailerror
${ContactNo_error} =  contacterror

*** Keywords ***
SignUp Invalid Verification
    [Arguments]  ${InvalidData}
    :FOR  ${Data}  IN  ${InvalidData}
    \   Invalid Testcases  ${Data}

Invalid Testcases
    [Arguments]  ${Data}
    input text  ${Firstname}  ${Data[0]}
    input text  ${Lastname}  ${Data[2]}
    input text  ${Department}  ${Data[4]}
    input text  ${Username}  ${Data[6]}
    input text  ${Password}  ${Data[8]}
    input text  ${ConfirmPassword}  ${Data[10]}
    input text  ${Email}  ${Data[12]}
    input text  ${ContactNo}  ${Data[14]}
    click element  ${Submit}
    Verify Error Message  ${Firstname_error}  ${Data[1]}
    Verify Error Message  ${Lastname_error}  ${Data[3]}
    Verify Error Message  ${Department_error}  ${Data[5]}
    Verify Error Message  ${Username_error}  ${Data[7]}
    Verify Error Message  ${Password_error}  ${Data[9]}
    Verify Error Message  ${ConfirmPassword_error}  ${Data[11]}
    Verify Error Message  ${Email_error}  ${Data[13]}
    Verify Error Message  ${ContactNo_error}  ${Data[15]}

Verify Error Message
    [Arguments]  ${ErrorLocator}  ${ExpectedMsg}
    ${ActualMsg} =  get text  ${ErrorLocator}
    should be equal as strings  ${ActualMsg}  ${ExpectedMsg}

SignUp Valid Verification
   [Arguments]  ${ValidData}
    :FOR  ${Data}  IN  ${ValidData}
    \   Valid Testcases  ${Data}

Valid Testcases
    [Arguments]  ${Data}
    input text  ${Firstname}  ${Data[0]}
    input text  ${Lastname}  ${Data[1]}
    input text  ${Department}  ${Data[2]}
    input text  ${Username}  ${Data[3]}
    input text  ${Password}  ${Data[4]}
    input text  ${ConfirmPassword}  ${Data[5]}
    input text  ${Email}  ${Data[6]}
    input text  ${ContactNo}  ${Data[7]}
    click element  ${Submit}
