require "diary_entry"

RSpec.describe DiaryEntry do
  it "initialize with title and contents" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
  end

  it "count words in the contents" do
    diary_entry = DiaryEntry.new("title", "contents1, contents2")
    expect(diary_entry.count_words).to eq 2
  end
  
  it "Returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm" do
    diary_entry = DiaryEntry.new("title", "contents1 " * 200)
    expect(diary_entry.reading_time(55)).to eq 4
  end
end