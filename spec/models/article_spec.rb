require "rails_helper"

RSpec.describe Article, type: :model do
  #it 'should save succesfully' do
  #		article = Article.new(title: 'psikologi',text: 'qwertyuiop', user_id: 1 ,view: 2 ).save
  #		expect(article).to eq(true)
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