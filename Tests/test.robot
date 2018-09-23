*** Settings ***

Resource     ../Resources/Resource.robot
Resource     ../Resources/Common.robot
Resource     ../Resources/Resource.robot
Resource     ../Resources/Common.robot
Test Setup   Begin Web Test
Test Teardown  End Web Test
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Library  Dialogs


# Test Change Code

*** Variables ***
${User_Name}  = Surapon

@{Telephone_List}  = 1234  4567  8910

*** Test Cases ***

Test case 5

       ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  firefox
       Open Browser  https://www.amazon.com/  ${new_browser}
       Execute Manual Step  Do Something manually! It false
       Pause Execution
       Close Browser



#      Open Browser  http://oasys.officemate.co.th/Order/Task/SuperviserPendingDocument.aspx  chrome
#      Input Text    username  surapon@officemate.int
#      Input Text    password  Zxcv1234!
#
#
#
#      Click Button  Sign In
#      Wait Until Page Contains  Supervisor Pending Document
##      Input Text    docNoKey    1234
#      Select Checkbox  chkDocNo
#      Input Text    docNoKey   1234
#      Set Selenium Speed  1 seconds
#      Click Button  Find
#      Wait Until Page Contains  SO1807123492
#      Click Element       //u[contains(text(),'SO1807123492')]


#<u>
 #					SO1807123492</u>
#   \    Input Text    twotabsearchtextbox  ${i}
#    \    Click Button  Go
#    \    Wait Until Page Contains ${i}

#        sono
#    :FOR    ${i}  IN   1234  2345  6789
#    \   Input Text    docNoKey   ${i}
#    \   Set Selenium Speed  1 seconds
#    \   Click Button  Find
#    Log    Exited

#   Close Browser


#Test case 4
#    @{my_Telephone_List} =  Create list  111  222  333
#
#    log  @{Telephone_List}[0]
#    log  @{Telephone_List}[1]
#    log  @{Telephone_List}[2]
#
#    log  @{my_Telephone_List}[0]
#    log  @{my_Telephone_List}[1]
#    log  @{my_Telephone_List}[2]
#
#Test case 3
#    ${my_email} =  Set variable   surapon@officemate.co.th
#
#

Test case 1
        Common.Begin Test
        Resource.Do Something
        Resource.Do Something Else
        Common.End Test

๒Test case 2
#        Common.Begin Test
#        Resource.Do Another Thing
#        Resource.Do Something Else
#        Common.End Test




