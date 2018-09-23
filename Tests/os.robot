*** Settings ***
Library  OperatingSystem

*** Variables ***
${directory_FirstLayer} =  FirstLayer
${directory_Test1} =  Test_1 directory
${directory_Test2} =  Test_2 directory
${file_1} =  file_test_1.txt
${file_2} =  file_test_2.txt

*** Keywords ***

*** Test Cases ***
#Create the Base Directory
#    Create Directory  ${directory_FirstLayer}
#    Should Exist  ${directory_FirstLayer}
#
#Create Directory 1
#    ${directory_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test1}
#    Create Directory  ${directory_path}
#    Should Exist  ${directory_path}
#
#Create Directory 2
#    ${directory_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test2}
#    Create Directory  ${directory_path}
#    Should Exist  ${directory_path}
#
#Create the First File
#    ${file_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test1}  ${file_1}
#    Create File  ${file_path}  This is some text in file one!
#    Should Exist  ${file_path}
#

# Test Change Code
Create the Second File
    ${file_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test2}  ${file_2}
    Create File  ${file_path}  This is some text in file one!
    Should Exist  ${file_path}


Move File 3 from Directory 2 to Directory 1
    ${source_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test2}  ${file_2}
    ${target_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test1}  ${file_2}

    Move File  ${source_path}  ${target_path}

    # verify that file 3 was moved from directory 2 to directory 1
    Should Exist  ${target_path}
    Should Not Exist  ${source_path}

Copy File 1 from Directory 1 to Directory 2
    ${source_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test1}  ${file_1}
    ${target_path} =  Join Path  ${directory_FirstLayer}  ${directory_Test2}  ${file_1}

    Copy File  ${source_path}  ${target_path}

    # verify that file 1 is now present in both directory 1 and directory 2
    Should Exist  ${source_path}
    Should Exist  ${target_path}