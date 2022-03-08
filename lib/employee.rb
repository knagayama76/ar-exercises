class Employee < ActiveRecord::Base
  belongs_to :store
  validates:first_name, presence: true
  validates:last_name, presence: true
  validates:hourly_rate, numericality: {in: 40..200}

end


# 1. Add validations to two models to enforce the following business rules:
#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
