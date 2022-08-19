require 'diary'

RSpec.describe Diary do
    xit "initialize with an empty list" do
        diary = Diary.new
        expect(diary).to eq []
    end


end