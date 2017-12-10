require 'rails_helper'

describe "display login when route to student_path before login" do
	it "Succesfully visit the homepage" do
		visit 'http://0.0.0.0:3000/users'
		expect(current_path).to eq(new_user_session_path)
	end
end