class Project < ApplicationRecord
	has_many :activities, dependent: :destroy

 	validates :description, :start_date, :end_date, presence: true

 	#Test
 	def full_description
 		"#{self.description} - #{self.start_date} - #{self.end_date}"
 	end

end
