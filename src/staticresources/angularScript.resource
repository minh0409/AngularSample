var app = angular.module('testingApp', []);

app.controller('TestController', function($scope, $http) {

var onUserComplete = function(response) {
  $scope.user = response.data;
};

var onError = function(reason) {
  $scope.error = " Could not fetch github, 404 error"
}

// service
$http.get("https://api.github.com/users/minh0409")
     .then(onUserComplete, onError);

var person = {
  firstName: "minh",
  lastName: "nguyen"
}

$scope.person = person;

});
