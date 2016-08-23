class HomeController < ApplicationController
  def index

    @every_book = Book.all  
  end
  
  def bookupload
    
    new_book = Book.new
    new_book.subject = params[:subject]
    new_book.bookname = params[:bookname]
    new_book.writer = params[:writer]
    new_book.lesson = params[:lesson]
    new_book.publish = params[:publish]
    new_book.detail = params[:detail]
    
    
    uploader = BookUploader.new
    file = params[:pic]
    uploader.store!(file)
    new_book.image_url = uploader.thumb.url
    new_book.save
    
    redirect_to '/list'
    
  end
  
  def list
    @books = Book.all
  end
  
  def book_content
  
  @one_book = Book.find(params[:id])
  
  end
  
  
end
