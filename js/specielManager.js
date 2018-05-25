var app = angular.module('myApp', []);

app.config(function ($httpProvider) {
    $httpProvider.defaults.xsrfCookieName = 'csrftoken';
    $httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';
});
app.config(function ($interpolateProvider) {
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
});

app.controller('myCtrl', function ($scope, $http, $location, $window) {

    $scope.isLogin = function () {
        $http({
                method: 'GET',
                url: "api/isLogin.php"
            })
            .then(function (response) {
                //First function handles success 
                console.log(response.data)
                $scope.login = response.data.isLogin
                if ($scope.login) {
                    $scope.username = response.data.username
                }
            }, function (response) {
                //Second function handles error 
                console.log(response)
            });
    }

    $scope.sendLogin = function (username, password) {
        var data = {
            "username": username,
            "password": password
        }
        $http({
                method: 'POST',
                url: "api/login.php",
                data: JSON.stringify(data)
            })
            .then(function (response) {
                //First function handles success 
                console.log(response.data)
                if (response.data.status == 200) {
                    $window.location.href = "./index.html";
                }
            }, function (response) {
                //Second function handles error 
                console.log(response)
            });
    }

    $scope.logout = function () {
        $http({
                method: 'DELETE',
                url: "api/logout.php"
            })
            .then(function (response) {
                //First function handles success 
                console.log(response.data)

                if (response.data.status == 200) {
                    $window.location.href = "./index.html";
                }
            }, function (response) {
                //Second function handles error 
                console.log(response)
            });
    }

    $scope.isLogin = function () {
        $scope.getMenu()
        $http({
                method: 'GET',
                url: "api/isLogin.php"
            })
            .then(function (response) {
                //First function handles success 
                console.log(response.data)
                $scope.login = response.data.isLogin
                if ($scope.login) {
                    $scope.username = response.data.username
                }
            }, function (response) {
                //Second function handles error 
                console.log(response)
            });
    }

    $scope.getMenu = function () {
        $http({
                method: 'GET',
                url: "api/menu.php"
            })
            .then(function (response) {
                //First function handles success 
                console.log(response.data)
                $scope.listMenu = response.data
            }, function (response) {
                //Second function handles error 
                console.log(response)
            });
    }

    $scope.range = function(max, step) {
        step = step || 1;
        var input = [];
        for (var i = 0; i < max; i += step) {
            input.push(i);
        }
        return input;
    };

});