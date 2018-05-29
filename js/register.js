function validateRegister() {
    var password = document.getElementById("password");
    var rePassword = document.getElementById("rePassword");
    var rePasswordSpan = document.getElementById("conpass_right");
    var emailSpan = document.getElementById("email_right");
    
    var validateEmtpy = validateEmtpyInput()
    var validEmail = validateEmail()
    var validUser = checkUsernameExist()
    var validPassword = password.value != rePassword.value;

    if (validEmail) 
        emailSpan.innerHTML = ""
     else 
        emailSpan.innerHTML = "Email not correcr"
    

    if (validPassword) 
        rePasswordSpan.innerHTML = "Password not match"
     else 
        rePasswordSpan.innerHTML = ""
    return validateEmail() && checkUsernameExist() && validateEmtpyInput() && !validPassword;
}

function validateEmtpyInput() {
    var username = document.getElementById('username').value
    var password = document.getElementById("password").value
    var rePassword = document.getElementById("rePassword").value
    var email = document.getElementById("email").value
    var firstName = document.getElementById("firstName").value
    var lastName = document.getElementById("lastName").value
    var phoneNumber = document.getElementById("phoneNumber").value
    var address = document.getElementById("address").value

    var usernameSpan = document.getElementById('username_right');
    var passwordSpan = document.getElementById("pass_right");
    var rePasswordSpan = document.getElementById("conpass_right");
    var firstNameSpan = document.getElementById("first_right");
    var lastNameSpan = document.getElementById("last_right");
    var phoneNumberSpan = document.getElementById("tel_right");
    var addressSpan = document.getElementById("addr_right");
    var emailSpan = document.getElementById("email_right");

    if (username.length == 0) 
        usernameSpan.innerHTML = "Please fill Username"
     else 
        usernameSpan.innerHTML = ""

    if (password.length == 0) 
        passwordSpan.innerHTML = "Please fill Password"
    else 
        passwordSpan.innerHTML = ""

    if (rePassword.length == 0) 
        rePasswordSpan.innerHTML = "Please fill ConfirmPassword"
    else 
        rePasswordSpan.innerHTML = ""

    if (email.length == 0) 
        emailSpan.innerHTML = "Please fill E-mail"
    else 
        emailSpan.innerHTML = ""
    
    if (firstName.length == 0) 
        firstNameSpan.innerHTML = "Please fill Firstname"
    else 
        firstNameSpan.innerHTML = ""

    if (lastName.length == 0) 
        lastNameSpan.innerHTML = "Please fill Lastname"
    else 
        lastNameSpan.innerHTML = ""

    if (phoneNumber.length == 0) 
        phoneNumberSpan.innerHTML = "Please fill PhoneNumber"
    else 
        phoneNumberSpan.innerHTML = ""

    if (address.length == 0) 
        addressSpan.innerHTML = "Please fill Address"
    else 
        addressSpan.innerHTML = ""

    return username.length != 0 &&
        password.length != 0 &&
        rePassword.length != 0 &&
        email.length != 0 &&
        firstName.length != 0 &&
        lastName.length != 0 &&
        phoneNumber.length != 0 &&
        address.length != 0
}

function checkUsernameExist() {
    var username = document.getElementById('username');
    var usernameSpan = document.getElementById('username_right');
    var validUsername = false;
    $.ajax({
        url: "./api/checkUsername.php",
        type: "POST",
        async: false,
        data: {
            username: username.value
        },
        success: function (response) {
            if (response == 0) {
                validUsername = false;
                usernameSpan.innerHTML = "Username already exists"
            }
            if (response == 1) {
                validUsername = true;
                usernameSpan.innerHTML = ""
            }
        }
    });
    return validUsername;
}

function validateEmail() {
    var email = document.getElementById("email").value
    var rex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    return rex.test(String(email).toLowerCase())
}