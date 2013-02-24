class DiaryEntry < ActiveRecord::Base
	attr_accessible :title, :description, :mood

	def self.positive
		where(mood: ["happy", "joyful"])
	end

	validates :description, presence: true
	validates :title, presence: true, uniqueness: true

end