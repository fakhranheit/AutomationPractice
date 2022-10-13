*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***
User Gagal Registrasi 
    Buka Browser 
    Klik Button Sign In
    Mengisi Form Email Registrasi
    Klik Button Registrasi

    