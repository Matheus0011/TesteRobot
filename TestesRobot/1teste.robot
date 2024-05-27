*** Settings ***
Library    SeleniumLibrary



*** Variables ***
&{browser logging capability}    browser=chrome
&{capabilities}    browserName=chrome    version=${EMPTY}    platform=ANY    goog:loggingPrefs=${browser logging capability}
@{element_ids}
...    //html/body/header/button[1]/i    //html/body/div[2]/span[19]    #Grid
...    //html/body/header/button[2]    //html/body/div[2]/span[19]    #Grid Sincronizada
...    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[2]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[3]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[4]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[5]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[6]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[7]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[8]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[9]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[10]    //html/body/header/button[3]/i[1]    //html/body/ul[1]/li[11]    //html/body/header/button[3]/i[1]    #Botão Esquerdo
...    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[2]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[3]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[4]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[5]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[6]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[7]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[8]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[9]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[10]    //html/body/header/button[4]/i[1]    //html/body/ul[1]/li[11]    //html/body/header/button[4]/i[1]  #Botão do Meio
...    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[2]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[3]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[4]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[5]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[6]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[7]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[8]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[9]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[10]    //html/body/header/button[5]/i[1]    //html/body/ul[1]/li[11]    //html/body/header/button[5]/i[1]    #Botão direito
...    //html/body/header/button[6]/i[1]    //html/body/ul[1]/li[3]    //html/body/header/button[6]/i[1]    //html/body/ul[1]/li[4]    //html/body/header/button[6]/i[1]    //html/body/ul[1]/li[5]    //html/body/header/button[6]/i[1]    //html/body/ul[1]/li[6]    //html/body/header/button[6]/i[1]    //html/body/ul[1]/li[11]    //html/body/header/button[6]/i[1]
...    //html/body/header/button[7]/i    //html/body/ul[2]/li[2]    //html/body/header/button[7]/i    //html/body/ul[2]/li[3]    //html/body/header/button[7]/i    //html/body/ul[2]/li[4]    //html/body/header/button[7]/i    //html/body/ul[2]/li[5]    //html/body/header/button[7]/i    //html/body/ul[2]/li[6]    //html/body/header/button[7]/i    //html/body/ul[2]/li[7]    //html/body/header/button[7]/i    //html/body/ul[2]/li[8]    //html/body/header/button[7]/i    //html/body/ul[2]/li[9]    #Janelamento
...    //html/body/header/button[8]    //html/body/ul[3]/li[2]    //html/body/header/button[8]     //html/body/ul[3]/li[3]    //html/body/header/button[8]     //html/body/ul[3]/li[5]    //html/body/header/button[8]     //html/body/ul[3]/li[6]    //html/body/header/button[8]     //html/body/ul[3]/li[7]    //html/body/header/button[8]     //html/body/ul[3]/li[8]    //html/body/header/button[8]     //html/body/ul[3]/li[9]
...    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[2]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[3]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[4]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[5]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[6]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[7]    //html/body/header/button[9]/i[1]    //html/body/ul[4]/li[8]    //html/body/header/button[9]/i[1]    /html/body/ul[4]/li[9]
...    //html/body/header/button[10]/i    //html/body/header/button[11]/i    //html/body/header/button[12]    //html/body/header/button[13]/i    //html/body/header/button[14]
...    //html/body/header/button[15]    //html/body/header/button[16]    //html/body/header/button[17]    //html/body/header/button[18]    //html/body/header/button[19]    //html/body/header/button[23]    //html/body/header/div[1]/button[8]    //html/body/div[4]/div/div/div/div/div[3]/button[2]



${url}    https://viewer.optixone.com.br/pacs/viewers/optixDev/?id=10001021&cdi=1&H=36947ad783829afc000fb6ed8a1a371e&SD=022c6714d0168a2bc32f78dd921a795bbd248ca7f9aa685db8159ef82d40d893191faf787d18788d1267771a1a4a130ab5b209af9b47b7e7927aa32ef2eaec2f9c05438fc3f4758cd10786889cae520498786ee6d99289c2434487b9d2cc802567b875e4036983c78ab1452eacf71eff633d3a835e1da31686d963f059f67a636a6c23de365c410c9f78c92d25b475f4&r=65618




*** Test Cases ***
Browser Log Cases

    Open Browser    ${url}    Chrome    desired_capabilities=${capabilities}
    Maximize Browser Window
    Sleep    8
    FOR    ${element_id}    IN    @{element_ids}
        Click Element    ${element_id}
        Sleep    1
        ${log entries}=    Get Browser Console Log Entries
        IF     ${log entries} == []    Log To Console   Elemento:${element_id} PASS       ELSE    Fail    ${log entries} ${element_id}
    END
    [Teardown]    Close All Browsers


*** Keywords ***
Get Browser Console Log Entries
    ${selenium}=    Get Library Instance    SeleniumLibrary
    ${webdriver}=    Set Variable     ${selenium._drivers.active_drivers}[0]
    ${log entries}=    Evaluate    $webdriver.get_log('browser')
    [Return]    ${log entries}
