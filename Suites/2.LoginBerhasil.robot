*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***
User Berhasil Login 
    Buka Browser 
    Klik Button Sign In
    Mengisi Form Login Benar
    User Klik Button Sign Out

    