require 'diary.rb'
require 'diary_entry.rb'

RSpec.describe "Diary Integration" do
    it "gets all diary entries" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("title", "contents")
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
    end
end