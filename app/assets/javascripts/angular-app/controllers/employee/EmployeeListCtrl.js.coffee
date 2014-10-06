angular.module('app.employeeApp').controller("EmployeeListCtrl", [
  '$scope', 'EmployeeService',
  ($scope, EmployeeService)->

    EmployeeService.list().then((employees) ->
      $scope.employees = employees
      console.dir employees
    )
])
