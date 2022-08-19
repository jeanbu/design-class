require 'diary_integration.rb'

RSpec.describe "Diary Integration" do
    it "gets all diary entries" do
        diary = Diary.new
        diary_entry = DiaryEntry("title", "contents")
    end
end