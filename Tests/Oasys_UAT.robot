*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
#Test Setup  Open OIC
#Test Teardown   Close Browser

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Keywords ***

*** Variables ***


*** Test Cases ***



Used Command TS009
      Open Browser  http://uat-erp.oasys.officemate.int/  chrome
      Wait Until Page Contains  Username
      Input Text    username  surapon@officemate.int
      Input Text    password  Zxcv1234!
      Click Button  Sign In
      Wait Until Page Contains  OfficeMateUAT
      Click Element  xpath://*[@id="topnav"]/li[1]
      Click Element  xpath://*[@id="Menu_Order"]/div[2]/ul/li[2]/a
      Wait Until Page Contains  เลือกเงื่อนไขการค้นหา
      Input Text     search-customer   100100
      Click Button   btnGo
      Close Browser





#Used Command SI007 search by all data
#      Open Browser  http://www.oic.officemate.int  chrome
#      Wait Until Page Contains  Username
#      Input Text    UserId  surapon@officemate.int
#      Input Text    Password  Zxcv1234!
#      Click Button  Sign In
#      Go To  http://www.oic.officemate.int/Invoice/SI007
#      Wait Until Page Contains  ข้อมูล Invoices ที่ยังไม่เข้าระบบบัญชี (SI007)
#      Input Text     search_SearchDateFrom  01/07/2018
#      Input Text    search_SearchDateTo  19/07/2018
#      Click Button  Search
#      Wait Until Page Contains   รหัสลูกค้า
#      Close Browser




























