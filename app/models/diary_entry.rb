class DiaryEntry < ActiveRecord::Base
	attr_accessible :title, :description, :mood

	def self.positive
		where(mood: "happy")
	end

	validates :description, presence: true
	validates :title, presence: true, uniqueness: true
	validates :mood_is_happy

	def mood_is_happy
		if Time.now.monday? || Time.now.thursday?
		errors.add (:mood, "must be happy")
	end
end