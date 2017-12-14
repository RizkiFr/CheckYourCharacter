require "rails_helper"

RSpec.describe Answer, type: :model do
  it "has an answer" do # yep, you can totally use 'it'
    answer = Answer.create!(jawaban_1: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_1).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_2: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_2).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_3: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_3).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_4: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_4).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_5: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_5).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_6: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_6).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_7: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_7).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_8: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_8).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_9: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_9).to eq('a') # this is our expectation
    answer = Answer.create!(jawaban_10: 'a') # creating a new Question 'instance'
    expect(answer.jawaban_10).to eq('a') # this is our expectation
    end
end