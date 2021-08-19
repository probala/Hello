*** Settings ***
Library    SeleniumLibrary


Test Setup    Test Init
Test Teardown    Kill Browser

*** Test Cases ***
Successfully Logging In
    User Login
   ##  Getting To Facilities
    ## Getting To Seventeen Nine One Entry Device
*** Keywords ***
Test Init
    #Start Virtual Display    ${WIDTH}    ${HEIGHT}
    Open Browser    ${LOGIN_URL}    headlesschrome
    Set Selenium Speed    .33
Kill Browser
    Delete All Cookies
    Close All Browsers
User Login
    Input Text    ${user_id_element}    ${USERNAME}
    Input Password    ${password_element}    ${PASSWORD}
    Click Element    ${login_button_element}
 ##Getting To Facilities
     ##Click Element    ${monitor_system_icon_element}
     ##Wait Until Element Is Visible    ${dcs_monitoring_view_tab_element}
     ##Click Element    ${dcs_monitoring_view_tab_element}
     ## Select Frame    DcsMonitor
     ## Wait Until Element Is Visible    ${welcome_message_slider_element}
     ## Click Element    ${welcome_message_slider_element}
     ##CLick Element    ${welcome_message_close_button_element}
    ## Wait Until Element Is Visible    ${seventeen_nine_tp_one_element}

 ##Getting To Seventeen Nine One Entry Device
     ##Wait Until Element Is Visible    ${seventeen_nine_tp_one_element}
     ##Click Element    ${seventeen_nine_tp_one_element}
     ##Wait Until Element Is Visible    ${seventeen_nine_tp_one_entry_element}
     ##Click Element    ${seventeen_nine_tp_one_entry_element}
     ##Wait Until Element Is Visible    ${seventeen_nine_tp_one_access_entry_element}
    ## Element Should Be Visible    ${seventeen_nine_tp_one_access_entry_element}
    ##Capture Page Screenshot    EMBED
*** Variables ***
${WIDTH} =    1920
${HEIGHT} =    1080


${USERNAME} =    amy
${PASSWORD} =    t2d3f@ult
${LOGIN_URL} =    https://duke.t2qa.com/DUKEQA1/PowerPark/login.aspx

${user_id_element} =    //*[@id="ctl00_pageContent_UserID_T2FormTextBox_TextBox"]
${password_element} =    //*[@id="ctl00_pageContent_Password_T2FormTextBox_TextBox"]
${login_button_element} =    //*[@id="ctl00_pageContent_LoginButton"]
${monitor_system_icon_element} =    //*[@id="aspnetForm"]/table/tbody/tr[2]/td/div/a[18]/img
${dcs_monitoring_view_tab_element} =    //*[@id="TabStrip_MSTabStrip_2"]/tbody/tr/td/nobr
${seventeen_nine_tp_one_element} =    //*[@id="main-area"]/table/tbody/tr[1]/td[1]/a
${seventeen_nine_tp_three_element} =    //*[@id="main-area"]/table/tbody/tr[2]/td[1]/a
${seventeen_nine_tp_five_element} =    //*[@id="main-area"]/table/tbody/tr[3]/td[1]/a
${seventeen_nine_tp_six_element} =    //*[@id="main-area"]/table/tbody/tr[4]/td[1]/a

${seventeen_nine_tp_one_entry_element} =    //*[@id="main-area"]/table/tbody/tr[4]/td[2]/a
${seventeen_nine_tp_one_exit_element} =    //*[@id="main-area"]/table/tbody/tr[5]/td[2]/a
${seventeen_nine_tp_three_entry_element} =    //*[@id="main-area"]/table/tbody/tr[4]/td[2]/a
${seventeen_nine_tp_five_entry_element} =    //*[@id="main-area"]/table/tbody/tr[3]/td[2]/a
${seventeen_nine_tp_six_entry_element} =    //*[@id="main-area"]/table/tbody/tr[3]/td[2]/a

${seventeen_nine_tp_one_access_entry_element} =    //*[@id="marquee-area"]/div/div/h1
${welcome_message_slider_element} =    //*[@id="mat-slide-toggle-1"]/label/div/div/div[1]
${welcome_message_close_button_element} =    //*[@id="mat-dialog-0"]/app-intro/div/div[2]/button/span[1]

# Login To Flex
# Select Eye Ball Icon
# Select DCS Monitor View Tab
# Select ANY facility
# Select ANY Device EXCEPT CASHIER STATIONS
