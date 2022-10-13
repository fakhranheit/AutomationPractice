*** Settings ***
Library     SeleniumLibrary
Variables   ../Resources/Test_locators.yaml

*** Variables ***

${URL}        http://automationpractice.com/index.php
${CHROME_BROWSER}       googlechrome

*** Keywords ***
# General
Buka Browser 
        Open Browser    url=${URL}    browser=${CHROME_BROWSER}
        Maximize Browser Window



# Homepage
Verify Banner Discount
        Element Should Be Visible       ${bannerDiscount}

Verify Sign In Button
        Element Should Be Visible       ${SignInButton}

Verify Contact Us Button        
        Element Should Be Visible       ${ContactUs}

Verify Search Banner    
        Element Should Be Visible       ${searchInput}

Verify Cart Button
        Element Should Be Visible       ${cartUser}

Verify Footer Homepage
        Element Should Be Visible       ${footerHomepage}

Verify Login In Button
        Wait Until Element Is Visible  ${SignInButton}
        Click Element                  ${SignInButton}
        Element Should Be Visible       ${buttonLogin}



# Form Registrasi
Klik Button Sign In
        Wait Until Element Is Visible  ${SignInButton}
        Click Element                  ${SignInButton}

Mengisi Form Email Registrasi
        Input Text                     ${formEmailRegis}          text=fakhranwfirdaus@gmail.com
        Click Element                  ${createAccount}
Mengisi Gender
        Wait Until Element Is Visible  ${manGender}
        Click Element                  ${manGender}

Mengisi Nama Lengkap
        input Text                     ${fieldFirstName}         text=fakhran
        Input Text                     ${fieldLastName}          text=firdaus

Mengisi Password        
        Input Text                     ${fieldPassword}          text= 12345678

Mengisi Tanggal Lahir
        Click Element                  ${daysDropdown}                 
        Click Element                  ${date}   
        Click Element                  ${monthsDropdown}
        Click Element                  ${months}
        Click Element                  ${yearDropdown}
        Click Element                  ${years}

Mengisi Alamat Rumah
        Input Text                     ${fieldCompany}          text= Personal fieldCompany
        Input Text                     ${fieldAddress1}          text= Alamat 1
        Input Text                     ${fieldAddress2}          text= Alamat 2
        Input Text                     ${fieldCity}          text= Kota
        Input Text                     ${zipcode}          text= 12345
        Click Element                  ${dropdownState}
        Click Element                  ${state}

Mengisi Nomor Telepon
        Input Text                     ${additionalInfo}          text= additional Info
        Input Text                     ${homePhone}          text= 02918171617
        Input Text                     ${mobilePhone}          text= 02918171617121

Klik Checkbox
        Click Element                  ${newsletter}
        Click Element                  ${specialOffer}

Klik Button Registrasi
        Wait Until Element Is Visible  ${buttonRegister}
        Click Element                  ${buttonRegister}


# Form Login
Mengisi Form Login Salah
        Wait Until Element Is Visible  ${fieldEmailLogin}
        Input Text                     ${fieldEmailLogin}          text= cobainaja@gmail.com
        Input Text                     ${fieldPasswordLogin}          text= Password
        Click Element                  ${buttonLogin}

Mengisi Form Login Benar
        Wait Until Element Is Visible  ${fieldEmailLogin}               
        Input Text                     ${fieldEmailLogin}          text= fakhranwahyuf@gmail.com
        Input Text                     ${fieldPasswordLogin}       text= 12345
        Click Element                  ${buttonLogin}

User Klik Button Sign Out
        Wait Until Element Is Visible   ${buttonSignOut}
        Click Element                   ${buttonSignOut}


# Contact Us
User Klik Contact Us
        Click Element                   ${contactUs}

User Mengisi Form Contact Us
        Select From List By Index       ${subjectHeading}       2
        Input Text                      ${fieldEmailContact}    text=fakhranwahyuf@gmail.com
        Input Text                      ${fieldOrder}           text=12345
        Input Text                      ${fieldMessage}         text=test message
        Choose File                     ${chooseFile}           C:/Users/fakhran/Downloads/Fb-w8zhXkAEhg_Q.png
        Click Element                   ${buttonSubmit}