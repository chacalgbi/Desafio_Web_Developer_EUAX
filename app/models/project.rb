class Project < ApplicationRecord
	has_many :activities, dependent: :destroy

 	validates :description, :start_date, :end_date, presence: true

end
