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
      Open Browser  http://www.oic.officemate.int/Transport/TS009  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To   http://www.oic.officemate.int/Transport/TS009
      Wait Until Page Contains  ค้นหาประวัติการมอบหมาย (TS009)
      Input Text    TS009Search_SoNo  SO1804093842
      Click Button  Search
      Wait Until Page Contains  T18050200030
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




























