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

    $scope.getOrder = function () {
        $http({
                method: 'GET',
                url: "api/orderFood.php"
            })
            .then(function (response) {
                console.log(response.data);
                
                $scope.listOrder = response.data
                $scope.listMenu = $scope.listOrder.spacialMenu
                $scope.listCustom = $scope.listOrder.customMenu
                $scope.totalPriceMenu = $scope.listOrder.totalPriceMenu
                $scope.totalPriceCustom = $scope.listOrder.totalPriceCustom
                $scope.totalPrice = $scope.listOrder.totalPrice

            }, function (response) {
            });
    }

});