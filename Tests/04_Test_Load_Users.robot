*** Settings ***
Documentation    Simple Robot Framework test setup
Resource         ../Resources/Functionality_Keywords/Load_Users.resource

Test Tags        load_user

*** Variables ***
${NAME}          Artur Ziółkowski
@{FRIENDS_LIST}       Adam    Bartek    Celina
&{FRIENDS_DICT}  Adam=Friend    Bartek=Best Friend    Celina=Close Friend

*** Test Cases ***
TC1: Create Keyword To Print Your Name
    [Tags]    keyword_name
    ${users}    Load_Users.Read Users From JSON File
    Log    ${users["users"][0]["Full Name"]}


python -m robot -i demo -L TRACE --outputdir logs C:\workshop\TestingGround2025\Tests\02_Test_Keywords.robot