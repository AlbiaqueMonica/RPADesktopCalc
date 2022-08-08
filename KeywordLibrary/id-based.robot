*** Settings ***
Documentation   Accessing Calculator
Library           String
Library           RPA.Windows


*** Keywords ***
Open the Calculator
    Windows Search    Calculadora
    #Foreground Window    Calculator

Add two numbers using app ids
    [Arguments]    ${first}    ${second}
    RPA.Windows.Click    id:clearEntryButton
    RPA.Windows.Click    id:num${first}Button
    RPA.Windows.Click    id:plusButton
    RPA.Windows.Click    id:num${second}Button
    RPA.Windows.Click    id:equalButton

Log results
    ${result}=    Get Attribute    id:CalculatorResults    Name
    Log    ${result}
    Screenshot    Calculadora   %{ROBOT_ARTIFACTS}${/}id-based-result.png

Calculate using app ids
    id-based.Open the Calculator
    Add two numbers using app ids    9    5
    Log results
    [Teardown]     Close Window     name:Calculadora
