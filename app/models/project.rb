class Project < ApplicationRecord
    belongs_to :employee
    has_many :states
    validates :name, presence: true
end
