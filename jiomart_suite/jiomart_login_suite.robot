*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

Test Teardown       Close Browser
*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.jiomart.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    Click Element    xpath=//a[normalize-space()='Sign in / Sign up']
    Input Text    xpath=//input[@formcontrolname='loginfirst_mobileno']    7878787878
    Click Element    xpath=//button[@class='btn-signpass arrowbtn']
    Click Element    xpath=(//button[@type='submit'])[1]

    Mouse Over    xpath=//a[@title='Fruits & Vegetables']
    Click Element    xpath=//a[@title='Fresh Fruits']
    Click Element    xpath=(//img[@alt='Tender Coconut 3 pcs'])[1]
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]
    Click Element    xpath=(//button[@type='button'])[6]

    Mouse Over    xpath=//a[@title='Fruits & Vegetables']
    Click Element    xpath=//a[@title='Fresh Vegetables']
    Click Element    xpath=//img[@alt='Onion 1 kg']
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]

    Mouse Over    xpath=//a[@title='Premium Fruits']
    Click Element    xpath=//a[@title='Avocado, Peach, Plum']
    Click Element    xpath=//img[@alt='Plum Black Premium Imported 2 Pc (Approx 180 g - 240 g)']
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]
    
    Mouse Over    xpath=//a[@title='Dairy & Bakery']
    Click Element    xpath=//a[@title='Dairy']
    Click Element    xpath=//img[@alt='Amul Butter 100 g (Carton)']
    Click Element    xpath=//button[@title='ADD TO CART']


TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://www.jiomart.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    Mouse Over    xpath=//a[@title='Staples']
    Click Element    xpath=//a[@title='Atta, Flours & Sooji']
    Click Element    xpath=//img[@alt='Suji / Rawa 1 kg']
    Click Element    xpath=//button[@title='ADD TO CART']

    Mouse Over    xpath=//a[@title='Men']
    Click Element    xpath=//a[@title='Ethnic Wear']
    Click Element    xpath=//img[@alt='112A_Printed_Nehru_38']
    Click Element    xpath=//span[normalize-space()='XXL']
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]

    Mouse Over    xpath=//a[@title='Boys']
    Click Element    xpath=//a[@title='Ethnic Wear']
    Click Element    xpath=//img[@alt='DIGIMART Boys Multicolored Designer Cotton Pack of 1 Kurta Pyjama Set']
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]
    
    Mouse Over    xpath=//a[@title='Girls']
    Click Element    xpath=//a[@title='Eyewear']
    Click Element    xpath=//img[@alt='Zyaden Uv Protection Cat-Eye Full-Frame Black Sunglasses ,Girls']
    Click Element    xpath=(//button[@title='ADD TO CART'])[1]
