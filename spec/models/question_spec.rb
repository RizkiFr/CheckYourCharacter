require "rails_helper"

RSpec.describe Question, type: :model do
  it "has a question" do # yep, you can totally use 'it'
    question = Question.create!(pertanyaan: "Apa warna favorit anda") # creating a new Question 'instance'
    expect(question.pertanyaan).to eq("Apa warna favorit anda") # this is our expectation
    question = Question.create!(no: 1) # creating a new no 'instance'
    expect(question.no).to eq(1) # this is our expectation
    question = Question.create!(pilihan_A: "Merah") # creating a choice a 'instance'
    expect(question.pilihan_A).to eq("Merah") # this is our expectation
    question = Question.create!(pilihan_B: "Biru") # creating a new choice b 'instance'
    expect(question.pilihan_B).to eq("Biru") # this is our expectation
    question = Question.create!(pilihan_C: "Putih") # creating a new choice c 'instance'
    expect(question.pilihan_C).to eq("Putih") # this is our expectation
    question = Question.create!(pilihan_D: "Hitam") # creating a new choice d 'instance'
    expect(question.pilihan_D).to eq("Hitam") # this is our expectation
	end
end