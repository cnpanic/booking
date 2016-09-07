class Book < ActiveRecord::Base
    belongs_to :user
    has_many :bookreplies
   
    
    def self.search(bookname)
        if bookname.nil?
            Book.all
            
         elsif bookname
            where("bookname LIKE ?", bookname )
        else
           Book.all
        end
    end
    
    # 현재 Book의 다음 Book
    # usage : book.next
    def next
        # 마지막 Book일 경우 False 반환
        return false if Book.last.id == self.id
        
        id = self.id + 1
        while Book.where(id: id).first.nil?
            id += 1
        end
        
        Book.find(id)
    end
end

