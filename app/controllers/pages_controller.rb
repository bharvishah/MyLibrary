class PagesController < ApplicationController
  def index
    @books = Book.all
    @patrons = Patron.all
  end

  def book_check_out
    @checkout = Checkout.new
    if params[:id]
        @checkout.book = Book.find(params[:id])
    end
  end


  def check_out
    @checkout = Checkout.new(params.require(:checkout).permit(:book_id, :patron_id))
    if @checkout.save
      @checkout.book.update(is_checked_out: true)
      redirect_to root_path, notice: "BOOM"
    else
      render :book_check_out
    end
#    return @book.is_checked_out = !@book.is_checked_out
  end

  def book_check_in
        @books = Book.where(is_checked_out: true).pluck(:id)
        @checkouts = Checkout.where(book_id: @books)
  end

  def check_in
    @book = Book.find(params[:book_id])
    if @book
      @book.is_checked_out = false
      @book.save
      redirect_to checkin_path, notice: "Checkin successful"
    else
      render :checkin_path
    end
  end

end
