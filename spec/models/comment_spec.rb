require "rails_helper"

RSpec.describe Comment, type: :model do
  #it 'should save succesfully' do
    #comment = Comment.create!(comment: "wkwk") 
    #expect(article.comment).to eq("wkwk") 
    #comment = Comment.create!(article_id: "1") 
    #expect(article.article_id).to eq("1") 
    #comment = Comment.create!(user_id: "1") 
    #expect(article.user_id).to eq("1") 
  #end
  it 'should failed to save because without comment' do
  		comment = Comment.new(user_id:'1',article_id: '2' ).save
  		expect(comment).to eq(false)
  end
end