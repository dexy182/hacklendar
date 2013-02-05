class DiaryEntry < ActiveRecord::Base
	attr_accessible :title, :description, :mood

	def self.positive
		where(mood: "happy")
	end
end