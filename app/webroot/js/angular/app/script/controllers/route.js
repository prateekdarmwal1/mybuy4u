'use strict';
(function() {
    var myapp = angular.module('mybuy4u');
    myapp.controller('routeController', ['$scope', '$http', '$routeParams', '$sce','ngProgressFactory',
        function ($scope, $http, $routeParams, $sce,ngProgressFactory) {
        var controller = $routeParams.controller;
        var action = $routeParams.action;
        alert(action);
        $scope.showed = false;
        var id = $routeParams.id;
        var url = 'index.php?r=' + controller + '/' + action + '&id=' + id;

        $scope.loading = "img/loading.gif";
        $scope.showed = true;
            $scope.progressbar = ngProgressFactory.createInstance();
            $scope.progressbar.start();
        $http.get(url).then(function (response) {

            $scope.progressbar.complete();
            $scope.showed = false;
            $scope.data = $sce.trustAsHtml(response.data);
        });

    }]);
}());
