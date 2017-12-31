class Question < ApplicationRecord
	validates :dominance, presence: true
	validates :influence, presence: true
	validates :steadiness, presence: true
	validates :compliance, presence: true
	validates :no, presence: true

	validates :no, numericality: { only_integer: true ,
	message: "Inputan no harus berupa angka"}

	validates_inclusion_of :no, :in => 1..24

	validates :no, uniqueness: true
	resourcify
end
