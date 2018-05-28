
function validateRegister() {
    var password = document.getElementById("password");
    var rePassword = document.getElementById("rePassword");
    var validPassword = true;

    if (password.value != rePassword.value) {
        alert("Pasword Not Match");
        validPassword = false;
    }
    var validEmail = validateEmail();
    var validUser = checkUsernameExist();
    if (!validEmail) alert("Email was wrongs");
    return validEmail && validUser && validPassword;
}

function checkUsernameExist() {
    var username = document.getElementById('username');
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
                alert("Username is not already exists");
            }
            if (response == 1) {
                validUsername = true;
            }
        }
    });
    return validUsername;
}

function validateEmail() {
    var email = document.getElementById("email");
    var regex = /[\S]+@[\S]+\.[\S]+/;
    return regex.test(email.value);
}



$("#login").click(function () {
    $(".relative_pop").show();
 });

 $(".relative_pop").click(function () {
    $(".relative_pop").hide();
 });

$("#home").click(function () {
    window.location = 'index.html'
 });
 $("#customize").click(function () {
    window.location = 'customize.html'
 });
 $("#speciel").click(function () {
    window.location = 'speciel.html'
 });
 $("#register").click(function () {
    window.location = 'register.html'
 });