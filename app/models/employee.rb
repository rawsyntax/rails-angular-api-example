class Employee < ActiveRecord::Base
  # regex from Devise
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :ssn, with: /\d{3}-\d{2}-\d{4}/
  validates_presence_of :name
  validates :salary, numericality: { only_integer: true }
end
