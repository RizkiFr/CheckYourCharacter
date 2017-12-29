require "rails_helper"

RSpec.describe Article, type: :model do
  it "has an article" do # yep, you can totally use 'it'
    article = Article.create!(title: 'xyz') # creating a new Question 'instance'
    expect(article.title).to eq('xyz') # this is our expectation
    article = Article.create!(text: 'qwertyuiop') # creating a new Question 'instance'
    expect(article.text).to eq('qwertyuiop') # this is our expectation
    article = Article.create!(user_id: '12') # creating a new Question 'instance'
    expect(article.user_id).to eq('12') # this is our expectation
    end
end