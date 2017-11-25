class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.string :nim
    	t.string :nama
    	t.string :jenis_kelamin
    	t.text	 :alamat
    	t.string :tempat_lahir
    	t.date	 :tgl_lahir
    	t.string :jurusan
    	t.string :fakultas
    	t.string :email

      t.timestamps
    end
  end
end
