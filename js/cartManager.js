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
                $scope.login = response.data.isLogin
                if ($scope.login) {
                    $scope.username = response.data.username
                }
            }, function (response) {
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
                if (response.data.status == 200) {
                    $window.location.href = "./index.html";
                } else {
                    alert(response.data.message)
                }
            }, function (response) {
            });
    }

    $scope.logout = function () {
        $http({
                method: 'DELETE',
                url: "api/logout.php"
            })
            .then(function (response) {
                if (response.data.status == 200) {
                    $window.location.href = "./index.html";
                }
            }, function (response) {
            });
    }

    $scope.isLogin = function () {
        $scope.getMenu()
        $http({
                method: 'GET',
                url: "api/isLogin.php"
            })
            .then(function (response) {
                $scope.login = response.data.isLogin
                if ($scope.login) {
                    $scope.username = response.data.username
                }
            }, function (response) {
            });
    }

    $scope.getMenu = function () {
        $http({
                method: 'GET',
                url: "api/orderFood.php"
            })
            .then(function (response) {
                $scope.listOrder = response.data
                $scope.listMenu = $scope.listOrder.menu
                $scope.listCustom = $scope.listOrder.customMenu
                $scope.totalPrice = $scope.listOrder.totalPrice
            }, function (response) {
            });
    }


    $scope.range = function (max, step) {
        step = step || 1;
        var input = [];
        for (var i = 0; i < max; i += step) {
            input.push(i);
        }
        return input;
    };

});