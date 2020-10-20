class Schedule < ApplicationRecord

    validates :schedule_day, presence: true
    validates :company_name, presence: true

    belongs_to :user

end
