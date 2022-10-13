*** Settings ***
Resource                ../Resources/Test_keywords.robot

*** Test Cases ***
Element Homepage Lengkap
    Buka Browser 
    Verify Banner Discount
    Verify Sign In Button
    Verify Contact Us Button
    Verify Search Banner 
    Verify Cart Button
    Verify Footer Homepage
    Verify Login In Button