class Employee < ApplicationRecord
    has_many :projects, :dependent => :delete_all
    validates :name, presence: true
    validates :email, presence: true
end
