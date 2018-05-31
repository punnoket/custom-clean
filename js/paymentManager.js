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

    $scope.getDetail = function () {
        $http({
                method: 'GET',
                url: "api/preCheckout.php"
            })
            .then(function (response) {
                $scope.address = response.data.address
                $scope.firstName = response.data.firstName
                $scope.lastName = response.data.lastName
                $scope.totalPrice = response.data.totalPrice

            }, function (response) {});
    }

    $scope.checkout = function (username, password) {

        $http({
                method: 'DELETE',
                url: "api/checkout.php"
            })
            .then(function (response) {
                if (response.data.status == 200) {
                    alert("Payment Success !! :D")
                    $window.location.href = "./index.html";
                } else {
                    alert(response.data.message)
                }
            }, function (response) {});
    }
});