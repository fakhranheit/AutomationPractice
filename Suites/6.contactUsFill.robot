*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***

User bisa mengakses Contact Us
    Buka Browser
    User Klik Contact Us


User berhasil mengisi Form Contact Us
    User Mengisi Form Contact Us