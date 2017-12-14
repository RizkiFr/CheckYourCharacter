class Question < ApplicationRecord
	validates :pertanyaan, presence: true
	validates :pilihan_A, presence: true
	validates :pilihan_B, presence: true
	validates :pilihan_C, presence: true
	validates :pilihan_D, presence: true
	validates :no, presence: true

	validates :no, numericality: { only_integer: true ,
	message: "Batas soal hanya 10 soal"}

	validates :no, inclusion: { in: %w(1 2 3 4 5 6 7 8 9 10),
    message: "Batas soal hanya 10 soal" }

	validates :no, uniqueness: true
	resourcify
end
