class Store < ActiveRecord::Base
  has_many :employees
  validates_associated:employees
  validates:name, length: {minimum: 3}
  validates:annual_revenue, numericality: { greater_than: 0 }
end

# 1. Add validations to two models to enforce the following business rules:
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more