class DiaryEntriesController < ApplicationController

	def index
		@diary_entries = DiaryEntry.all

		@diary_entries_positive = DiaryEntry.positive
	end
end
