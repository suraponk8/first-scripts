*** Settings ***
Documentation  This is some basic info about the whole suite
Library  DatabaseLibrary

*** Keywords ***


*** Variables ***
${DB_NAME} =  DBWebOFM
${DB_USER_NAME} =  sa
${DB_USER_PASSWORD} =  ofm@dev
${DB_HOST} =  dev-server
${DB_PORT} =  1433

*** Test Cases ***
ConnectDB
#    Connect To Database  pymssql ${DB_HOST} ${DB_PORT} ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_NAME}

     Connect To Database  pymssql  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST}  ${DB_PORT}

     ${current_row_count} =  Row Count  SELECT top 5 orderId FROM Tborder;

     log   ${current_row_count}


     @{queryResults} =	Query	SELECT top 5 orderId FROM Tborder;
    Log Many	@{queryResults}


#    pymssql.connect(server, user, password, "tempdb")

    #Connect To Database  pyodbc  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST} ${DB_PORT}


