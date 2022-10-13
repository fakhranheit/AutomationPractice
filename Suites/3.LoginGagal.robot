*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***
User Gagal Login 
    Buka Browser 
    Klik Button Sign In
    Mengisi Form Login Salah
    # Klik Buton Login

    