class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nim, presence: true
	validates :nama, presence: true
	validates :jenis_kelamin, presence: true
	validates :alamat, presence: true
	validates :tempat_lahir, presence: true
	validates :tgl_lahir, presence: true
	validates :jurusan, presence: true
	validates :fakultas, presence: true
	validates :email, presence: true
	validates :no_telepon, presence: true

	validates :nim, uniqueness: true

	validates :nim, numericality: { only_integer: true }
	validates :no_telepon, numericality: { only_integer: true }

	validates :nim, length: { is: 10 }

	validates_presence_of :profile_picture

	validate :profile_picture_identifier

	mount_uploader :profile_picture, ImageUploader

	def self.search(term)
	  if term
	    where('nim LIKE ?', "%#{term}%")
	  else
	    all
	  end
	end

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |student|
	      csv << student.attributes.values_at(*column_names)
	    end
	  end
	end

	private
  def profile_picture_size_validation
    errors[:profile_picture] << "should be less than 1mb" if profile_picture.size > 1.megabytes
  end       
end
