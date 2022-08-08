*** Settings ***
Documentation   Accessing Calculator
Resource        KeywordLibrary/id-based.robot
Resource        KeywordLibrary/image-based.robot


*** Tasks ***
Run Example1
    id-based.Calculate using app ids
       
*** Tasks ***
Run Example2
    image-based.Calculate using image locators
