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
    $scope.riceId = -1
    $scope.meetId = -1
    $scope.vegetableId = -1

    $scope.ricePrice = 0
    $scope.meetPrice = 0
    $scope.vegetablePrice = 0

    $scope.cook = -1

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
            }, function (response) {});
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
            }, function (response) {});
    }

    $scope.isLogin = function () {
        $scope.getRice()
        $scope.getMeet()
        $scope.getVegatable()

        $http({
                method: 'GET',
                url: "api/isLogin.php"
            })
            .then(function (response) {
                $scope.login = response.data.isLogin
                if ($scope.login) {
                    $scope.username = response.data.username
                }
            }, function (response) {});
    }

    $scope.getRice = function () {
        $http({
                method: 'GET',
                url: "api/rice.php"
            })
            .then(function (response) {
                $scope.listRice = response.data
            }, function (response) {});
    }

    $scope.getMeet = function () {
        $http({
                method: 'GET',
                url: "api/meet.php"
            })
            .then(function (response) {
                $scope.listMeet = response.data
            }, function (response) {});
    }

    $scope.getVegatable = function () {
        $http({
                method: 'GET',
                url: "api/vegetable.php"
            })
            .then(function (response) {
                $scope.listVegetable = response.data
            }, function (response) {});
    }

    $scope.setRiceId = function (id, price) {
        $scope.riceId = (id[0])[0]
        $scope.ricePrice = (price[0])[0]
    }

    $scope.setMeetId = function (id, price) {
        $scope.meetId = (id[0])[0]
        $scope.meetPrice = (price[0])[0]
    }

    $scope.setVegetableId = function (id, price) {
        $scope.vegetableId = (id[0])[0]
        $scope.vegetablePrice = (price[0])[0]
    }

    $scope.setCook = function (cook) {
        $scope.cook = cook
    }

    $scope.addCustom = function (quantity) {
        var totalPrice = (parseInt($scope.ricePrice) + parseInt($scope.meetPrice) + parseInt($scope.vegetablePrice)) * quantity
        var data = {
            "riceId": $scope.riceId,
            "vegetableId": $scope.vegetableId,
            "meetId": $scope.meetId,
            "cook": $scope.cook,
            "totalPrice": totalPrice,
            "quantity": quantity,
        }
        console.log(data);

        if ($scope.riceId != -1 &&
            $scope.meetId != -1 &&
            $scope.vegetableId != -1 &&
            $scope.cook != -1) {
            $http({
                    method: 'POST',
                    url: "api/addCustom.php",
                    data: JSON.stringify(data)
                })
                .then(function (response) {
                    if (response.data.status == 200) {
                        alert("Add to cart Success : DD")
                        $window.location.href = "./index.html";
                    } else {
                        alert(response.data.message)
                    }
                }, function (response) {});

        } else {
            alert("Please custom your menu")
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