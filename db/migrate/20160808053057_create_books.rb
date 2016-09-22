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
      t.string :first_image_url #사진 url1
      t.string :second_image_url #사진 url2
      t.string :third_image_url #사진 url3
      t.datetime :created_at #만들어진 시간
      t.datetime :updated_at #수정된 시간 
      t.integer :user_id 
      t.integer :selling, default: "0"
      t.timestamps null: false
    end
  end
end

