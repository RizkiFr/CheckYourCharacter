require "rails_helper"

RSpec.describe Question, type: :model do
  #it 'should save succesfully' do
   #   question = Question.new(no:1, dominance:'adf',influence: 'asd', steadiness: 'jk', compliance: 'ls' ).save
    #  expect(question).to eq(true)
  #end
  it 'should failed to save because without no' do
      question = Question.new( dominance:'adf',influence: 'asd', steadiness: 'jk', compliance: 'ls' ).save
      expect(question).to eq(false)
  end
end