class Answer < ApplicationRecord
	belongs_to :user
	for i in 1..24
		validates :"jawaban_#{i}", presence: true
	end
end
