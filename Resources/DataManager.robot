*** Settings ***
Library  C:/git-Signup/Resources/CustomLibs/CSV.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv  ${FilePath}
    [Return]  ${Data}
