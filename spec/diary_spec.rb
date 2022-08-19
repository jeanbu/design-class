require 'diary'

RSpec.describe Diary do
    it "gets all diary entries" do
        diary = Diary.new
        diary_entry = DiaryEntry("title", "contents")
        diary.add(diary_entry)
        expect (diary.all).to eq diary_entry
    end


end