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
    $scope.show  = false

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
                url: "api/menu.php"
            })
            .then(function (response) {
                $scope.listMenu = response.data
            }, function (response) {
            });
    }

    $scope.showDetail = function (input) {
       $scope.show = true
       console.log($scope.show);
       $scope.menu = input
    }

    $scope.dissmissDetail = function (menu) {
        $scope.show = false
        $window.location.href = "./special.html";
    }

    $scope.addToCart = function (menuId, quantity, price) {
        if (typeof quantity != 'undefined') {

        var totalPrice = price * quantity
        var id = menuId[0]
        var data = {
            "menuId": id[0],
            "totalPrice": totalPrice,
            "quantity": quantity
        }
        $http({
                method: 'POST',
                url: "api/addMenu.php",
                data: JSON.stringify(data)
            })
            .then(function (response) {
                if (response.data.status == 200) {
                    alert("Add to cart Success : DD")
                    $window.location.href = "./cart.html";
                } else {
                    alert(response.data.message)
                }
            }, function (response) {
            });
        } else {
            alert("please input quantity")
        }
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