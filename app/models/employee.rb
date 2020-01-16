class Employee < ApplicationRecord
  has_many :employees_projects
  has_and_belongs_to_many(:projects)
  belongs_to :division
end
