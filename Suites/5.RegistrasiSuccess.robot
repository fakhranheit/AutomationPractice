*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***
User Berhasil Verifikasi Email 
    Buka Browser  
    Klik Button Sign In
    Mengisi Form Email Registrasi

User Bisa Mengisi Form Registrasi
    Mengisi Gender
    Mengisi Nama Lengkap
    Mengisi Password 
    Mengisi Tanggal Lahir
    Mengisi Alamat Rumah
    Mengisi Nomor Telepon
    Klik Button Registrasi
    # Mengisi Form Registrasi