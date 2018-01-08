require "rails_helper"

RSpec.describe Article, type: :model do
  #it 'should save succesfully' do
    #article = Article.create!(title: "My Idea") 
    #expect(article.title).to eq("My Idea") 
    #article = Article.create!(text: "My Idea is awesome") 
    #expect(article.text).to eq("My Idea is awesome") 
    #article = Article.create!(view: "1") 
    #expect(article.view).to eq("1") 
    #article = Article.create!(user_id: "1") 
    #expect(article.user_id).to eq("1") 
  #end
  it 'should failed to save because without user_id' do
  		article = Article.new(title: 'psikologi',text: 'qwertyuiop',view: '2' ).save
  		expect(article).to eq(false)
  end
  it 'should failed to save because without title' do
  		article = Article.new(text: 'qwertyuiop', user_id:'1',view: '2' ).save
  		expect(article).to eq(false)
  end
end