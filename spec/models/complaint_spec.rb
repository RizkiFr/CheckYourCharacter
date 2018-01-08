require "rails_helper"

RSpec.describe Complaint, type: :model do
  #it 'should save succesfully' do
    #complaint = Complaint.create!(text: "sdagsdhjg") 
    #expect(complaint.text).to eq("sdagsdhjg")
    #complaint = Complaint.create!(user_id: "1") 
    #expect(complaint.user_id).to eq("1") 
  #end
  it 'should failed to save because without user_id' do
  		complaint = Complaint.new(text: 'qwertyuiop').save
  		expect(complaint).to eq(false)
  end
end