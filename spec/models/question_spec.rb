require "rails_helper"

RSpec.describe Question, type: :model do
  #it 'should save succesfully' do
   	#question = Question.create!(no: "1") 
    #expect(question.no).to eq("1")
    #question = Question.create!(dominance: "a") 
    #expect(question.dominance).to eq("a")
    #question = Question.create!(influence: "b") 
    #expect(question.influence).to eq("c")
    #question = Question.create!(steadiness: "c") 
    #expect(question.steadiness).to eq("c")
    #question = Question.create!(compliance: "d") 
    #expect(question.compliance).to eq("d") 
  #end
  it 'should failed to save because without no' do
      question = Question.new( dominance:'adf',influence: 'asd', steadiness: 'jk', compliance: 'ls' ).save
      expect(question).to eq(false)
  end
end