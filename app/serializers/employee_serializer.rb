class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :ssn, :salary
end
