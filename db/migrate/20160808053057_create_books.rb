class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      
      t.string :subject #글제목
      t.string :bookname #책이름
      t.string :writer #저자
      t.string :lesson #관련된 강의이름
      t.string :publish #출판사
      t.integer :phone_number #전화번호
      t.string :detail #기타 상세내용
      t.string :image_url #사진 url
      t.datetime :created_at #만들어진 시간
      t.datetime :updated_at #수정된 시간 
   
      t.timestamps null: false
    end
  end
end
