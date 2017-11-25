class Student < ApplicationRecord
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

	validates_presence_of :profile_picture
	validate :profile_picture_identifier

	mount_uploader :profile_picture, ImageUploader

	private
  def profile_picture_size_validation
    errors[:profile_picture] << "should be less than 1mb" if profile_picture.size > 1.megabytes
  end
end
