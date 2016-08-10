*** Settings ***

Library           Selenium2Library
Library  MyLibrary

*** Variables ***

*** Test Cases ***
Loggin test
    log  jaahans test1
    open browser  about:blank  gc
    go to  http://www.yle.fi
    close browser

Python keyword call
    ${result}=  join two string  hello  world
    should be equal as strings  ${result}  hello world   mismatch in strings
    ${output}=  Combine two strings  hjellou  worldi
    log  ${output
*** Keywords ***
Combine two strings
    [Arguments]  ${arg1}  ${arg2}
    ${combined}=  join two string  ${arg1}  ${arg2}
    [Return]  ${combined}