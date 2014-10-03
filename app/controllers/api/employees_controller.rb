class Api::EmployeesController < ApplicationController
  respond_to :json

  def index
    serialized_employees =
      ActiveModel::ArraySerializer
               .new(Employee.all, each_serializer: EmployeeSerializer)

    render json: serialized_employees
  end
end
