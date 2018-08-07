*** Settings ***
Library       OperatingSystem

*** Variables ***
${MESSAGE}    Hello, world!

*** Test Cases ***
My Test
    [Documentation]    Example test
    Log    ${MESSAGE}
    My Keyword    /tmp
My Test-1
    [Documentation]    Example test
    Log    ${restconf/data/running/openconfig-system:system/ntp/servers/server=$IP/config/address -v}
    My Keyword    /tmp
    
Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}
*** Curl command ****
