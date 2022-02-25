class Employee < ApplicationRecord

    belongs_to :department
    validates :email_address, :department_id, presence: true

end
