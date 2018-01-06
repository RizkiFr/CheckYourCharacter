class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    has_many :answers, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :articles, dependent: :destroy
    has_many :complaints

	validates :nim, presence: true
	validates :nama, presence: true
	validates :jenis_kelamin, presence: true
	validates :alamat, presence: true
	validates :tempat_lahir, presence: true
	validates :tgl_lahir, presence: true
	validates :email, presence: true
	validates :no_telepon, presence: true

	validates :nim, uniqueness: true

	validates :nim, numericality: { only_integer: true }
	validates :no_telepon, numericality: { only_integer: true }


	validates_presence_of :profile_picture

	validate :profile_picture_identifier

	mount_uploader :profile_picture, ImageUploader

	def self.search(term)
	  if term
	    where('nim LIKE ?', "%#{term}%")
	  else
	    with_role :student
	  end
	end

	after_create :assign_role

  def assign_role
    add_role(:student)
  end

	private
  def profile_picture_size_validation
    errors[:profile_picture] << "should be less than 1mb" if profile_picture.size > 1.megabytes
  end       
end
