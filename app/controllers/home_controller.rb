class HomeController < ApplicationController
  
  def index
     @every_book = Book.search(params[:bookname])
  end

  def clean
     @one_book = Book.find(params[:id])
     @one_book.selling = "1"
     @one_book.save
     
     redirect_to '/list'
  end

  
  def bookupload
    
    new_book = Book.new
    new_book.subject = params[:subject]
    new_book.bookname = params[:bookname]
    new_book.writer = params[:writer]
    new_book.lesson = params[:lesson]
    new_book.publish = params[:publish]
    new_book.phone_number = params[:phone_number]
    new_book.detail = params[:detail]
    new_book.user = current_user
    
    
    f_uploader = BookUploader.new
    s_uploader = SecUploader.new
    t_uploader = ThiUploader.new
    file = params[:pic1]
    file2 = params[:pic2]
    file3 = params[:pic3]
    f_uploader.store!(file)
    s_uploader.store!(file2)
    t_uploader.store!(file3)
    new_book.first_image_url = f_uploader.thumb.url
    new_book.second_image_url = s_uploader.thumb.url
    new_book.third_image_url = t_uploader.thumb.url
    new_book.save
     
    
    redirect_to '/list'
    
  end
  
  def mypage_selling
    @every_book = Book.search(params[:bookname])
  end
  
  
  def list
    @every_book = Book.search(params[:bookname])
  #  @user_id = params[:id]
  #  @books = Book.where(user_id: @user_id)
  end
  
  def book_content
  
  @one_book = Book.find(params[:id])
  end
  # 책 삭제
  def delete_book
    @one_book = Book.find(params[:id])
    @one_book.destroy
    
    redirect_to '/list'
  end
  
  def update_book_view
    @one_book = Book.find(params[:id])
  end
  
  def update_book
    @one_book = Book.find(params[:id])
    @one_book.subject = params[:subject]
    @one_book.bookname = params[:bookname]
    @one_book.writer = params[:writer]
    @one_book.lesson = params[:lesson]
    @one_book.publish = params[:publish]
    @one_book.phone_number = params[:phone_number]
    @one_book.detail = params[:detail]
    @one_book.save
    
    redirect_to '/list'
  end
  
  # 여기 부터 신새날이 게시판 controller를 올린다 ---------------------------------------------
  
  def index2
  end
  
  def division
    @disable_nav = true
  end
  
  def write
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.user = current_user
    new_post.save
    redirect_to '/list_board'
  end

  def reply_write
    new_reply = Reply.new
    new_reply.content = params[:reply]
    new_reply.post_id = params[:id_post]
    new_reply.user = current_user
    new_reply.save
    redirect_to :back
  end

  def show
    @show_content = Post.find(params[:post_id])
  end

  def list_board
    @show_post = Post.paginate(:page => params[:page], :per_page => 10)
  end
  

  
  def update
    @update=Post.find(params[:post_id])
  end

  def real_update
    update=Post.find(params[:post_id])
    update.title=params[:title]
    update.content=params[:content]
    update.save
    redirect_to '/show/' + params[:post_id]
  end

  def destroy
    delete= Post.find(params[:post_id])
    delete.destroy
    delete.save
    redirect_to '/list_board'
  end
  #여기까지 신새날이 게시판 controller를 올렸다------------------------------------------------
  
  def bookreply
    new_book_reply = Bookreply.new
    new_book_reply.content = params[:content]
    new_book_reply.book_id= params[:book_id]
    new_book_reply.user= current_user
    new_book_reply.save 
    redirect_to '/book_content/' + params[:book_id]
  end
  # 여기부터 faq 게시판--------------------------------------------
  def faq
    @show_faq = Faq.paginate(:page => params[:page], :per_page => 10)
  end
  
  def faq_listboard
    @show_faq = Faq.paginate(:page => params[:page], :per_page => 10)
  end
  
   def faq_write
    new_post = Faq.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.user = current_user
    new_post.save
    redirect_to '/faq'
   end

  def faq_update
    @faq_update=Faq.find(params[:faq_id])
  end

  def faq_real_update
    update=Faq.find(params[:faq_id])
    update.title=params[:title]
    update.content=params[:content]
    update.save
    redirect_to '/faq_show/' + params[:faq_id]
  end

  def faq_destroy
    delete= Faq.find(params[:faq_id])
    delete.destroy
    delete.save
    redirect_to '/faq'
  end


  def faq_show
    
     @faq_show_content = Faq.find(params[:faq_id])
    
    
  end
  
  def faq_reply
    new_faq_reply = Faqreply.new
    new_faq_reply.content = params[:reply]
    new_faq_reply.faq_id= params[:id_faq]
    new_faq_reply.user= current_user
    new_faq_reply.save 
    redirect_to :back
  end
  
end
