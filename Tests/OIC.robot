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


User account found
      Open Browser  http://uat-erp.oic.officemate.int/  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Wait Until Page Contains   Server :
      Close Browser



User account not found
      Open Browser  http://uat-erp.oic.officemate.int/  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  1234
      Input Text    Password  5678
      Click Button  Sign In
      Wait Until Page Contains   ไม่สามารถเข้าสู่ระบบได้
      Close Browser

Used Command TS009
      Open Browser  http://uat-erp.oic.officemate.int/Transport/TS009  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Wait Until Page Contains  ค้นหาประวัติการมอบหมาย (TS009)
      Input Text    TS009Search_SoNo  SO1804093842
      Click Button  Search
      Wait Until Page Contains  T18050200030
      Close Browser

Used Command SO015
      Open Browser  http://uat-erp.oic.officemate.int/SaleOrder/SO015  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Wait Until Page Contains  ค้นหา SO ที่มีการ Transfer Order (SO015)
      Select Radio Button  SO015Search.IsCheck  SoNo
      Input Text   SO015Search_SoNo  SO1807029540
      Click Button  Search
      Wait Until Page Contains   ทั้งหมด 1 รายการ
      Select Radio Button  SO015Search.IsCheck  SoDate
      Input Text   SO015Search_SearchDateFrom  18/07/2018
      Input Text   SO015Search_SearchDateTo  18/07/2018
      Wait Until Page Contains  SO1807029540
      Close Browser



Used Command IR009 Get Type IsThaiPost
      Open Browser  http://uat-erp.oic.officemate.int/InventoryReport/IR009  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/InventoryReport/IR009
      Wait Until Page Contains  รายงานสรุปยอดรวม SO แพ็คผ่านขนส่ง (IR009)
      Select Radio Button  Search.IsWorkType   post
      Click Button  Search
      Wait Until Page Contains  Zone ID
      Close Browser


Used Command TS008 search by Date Document
      Open Browser  http://www.oic.officemate.int/Transport/TS008  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://www.oic.officemate.int/Transport/TS008
      Wait Until Page Contains  รายงานตรวจสอบสถานะการจัดส่งของ Kerry (TS008)
      Input Text    Search_SearchDateFromInv  10/07/2018
      Input Text    Search_SearchDateToInv   10/07/2018
      Click Button  Search
      Wait Until Page Contains   Consignment No
      Close Browser


Used Command TS008 search by payment type cash
      Open Browser  http://www.oic.officemate.int/Transport/TS008  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://www.oic.officemate.int/Transport/TS008
      Wait Until Page Contains  รายงานตรวจสอบสถานะการจัดส่งของ Kerry (TS008)
      Select Radio Button  Search.IsDate   StatusDate
      Input Text    Search_SearchDateFromStatus  10/07/2018
      Input Text    Search_SearchDateToStatus   10/07/2018
      Select Checkbox  Search.IsPaymentCode
      Select Checkbox  Search.Cash
      Click Button  Search
      Wait Until Page Contains   Consignment No
      Close Browser


Used Command TS008 search by payment type credit
      Open Browser  http://www.oic.officemate.int/Transport/TS008  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://www.oic.officemate.int/Transport/TS008
      Wait Until Page Contains  รายงานตรวจสอบสถานะการจัดส่งของ Kerry (TS008)
      Select Radio Button  Search.IsDate   StatusDate
      Input Text    Search_SearchDateFromStatus  10/07/2018
      Input Text    Search_SearchDateToStatus   10/07/2018
      Select Checkbox  Search.IsPaymentCode
      Select Checkbox  Search.Credit
      Click Button  Search
      Wait Until Page Contains   Consignment No
      Close Browser



Used Command SI002 search less than 3 months
      Open Browser  http://www.oic.officemate.int/Invoice/SI002  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://www.oic.officemate.int/Invoice/SI002
      Wait Until Page Contains  ค้นหาข้อมูล Invoices แบบมีเงื่อนไข (SI002)
      Input Text    SearchInv_SearchDateFromInv  01/03/2018
      Input Text    SearchInv_SearchDateToInv   07/03/2018
      Click Button  Search
      Wait Until Page Contains   เลขที่ Inv
      Close Browser


Used Command CC001 search by delivery date and display reptsaleId
      Open Browser  http://uat-erp.oic.officemate.int/CRCOnlineReport/CC001  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/CRCOnlineReport/CC001
      Wait Until Page Contains  รายงานสรุปยอดรวมระหว่าง SO และ SI ในรอบวัน (CC001)
      Select Checkbox  Search.IsDateDli
      Input Text    Search_SearchDateFromDli  18/07/2018
      Click Button  Search
      Wait Until Page Contains   ReptSaleID
      Close Browser


Used Command IR025 Display columns [SoRemark ,Remark ,ShippingRemark,ConfirmTruck]
      Open Browser  http://uat-erp.oic.officemate.int/InventoryReport/IR025  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/InventoryReport/IR025
      Wait Until Page Contains    รายงาน route plan ที่่ยังไม่ถูกจัดสาย (IR025)
      Input Text    search_SearchDeliveryDateFrom     01/07/2018
      Input Text    search_SearchDeliveryDateTo    02/07/2018
      Click Button  Search
      Wait Until Page Contains   รหัสรถจัดส่ง
	   Wait Until Page Contains   หมายเหตุภายใน
	   Wait Until Page Contains   หมายเหตุ inv
	   Wait Until Page Contains   หมายเหตุจัดส่ง
      Close Browser


Used Command P001 Display popup where click num of product hold
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/Product/P001
      Wait Until Page Contains    ค้นหาข้อมูลสินค้า (P001)
      Input Text    searchKey     0000116
      Click Button  Search
      Wait Until Page Contains    จำนวนสินค้า Hold
      Click Link   50
	   Wait Until Page Contains   ประเภท Hold
      Close Browser


Used Command SIO29 Search Data
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/Invoice/SI029
      Wait Until Page Contains    ค้นหาข้อมูล Invoice ส่งจุดให้บริการ (SI029)
      Input Text    FromInv     01/07/2018
      Input Text    ToInv     01/07/2018
      Click Button  Search
      Wait Until Page Contains   วันที่ออก Invoice
      Close Browser


Used Command SI010 search by invoice date and dellivery by Thai post
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/Product/SI010
      Wait Until Page Contains  ข้อมูลการขายสินค้าตามวัน (SI010)
      Select Checkbox  SearchField.Postoffice
      Input Text     SearchField_SearchDateFrom  01/07/2018
      Input Text    SearchField_SearchDateTo  03/07/2018
      Click Button  Search
      Wait Until Page Contains   รหัสสินค้า
      Close Browser


Used Command SI007 search by all data
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/Invoice/SI007
      Wait Until Page Contains  ข้อมูล Invoices ที่ยังไม่เข้าระบบบัญชี (SI007)
      Input Text     search_SearchDateFrom  01/07/2018
      Input Text    search_SearchDateTo  19/07/2018
      Click Button  Search
      Wait Until Page Contains   รหัสลูกค้า
      Close Browser



Used Command SO001 search data
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/SaleOrder/SO001
      Wait Until Page Contains  ข้อมูล SO/SN/DO (SO001)
      Input Text    soText   DO-180500002
      Click Button  Search
      Wait Until Page Contains   เลขที่ Inv
      Select Radio Button  radioView   Detail
      Wait Until Page Contains   ใบแจ้งยอด | Sales Order
      Close Browser


Used Command C006 search data
      Open Browser  http://uat-erp.oic.officemate.int  chrome
      Wait Until Page Contains  Username
      Input Text    UserId  surapon@officemate.int
      Input Text    Password  Zxcv1234!
      Click Button  Sign In
      Go To  http://uat-erp.oic.officemate.int/MonthlySummary/C006
      Wait Until Page Contains  ข้อมูลยอดหนึ้และใบวางบิลตามรหัสลูกค้า (C006)
      Input Text    searchField   145055
      Click Button  Search
      Wait Until Page Contains    สรุปข้อมูล
      Click Link   BI-170730300
      Wait Until Page Contains    ค้นหาข้อมูล Bill (SI003)
      Close Browser
























