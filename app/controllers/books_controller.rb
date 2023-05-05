class BooksController < ApplicationController
  def index
    @divisions = Division.all
    div = params[:div]

    if !div.nil?
      @books = Book.where(:division_id => div)
    else
      @books = Book.all
    end
  end

  def show
    # find the book we want to render
    @book = Book.find(params[:id])
    @chapters = Chapter.where(book_id: @book.id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to @book # redirect to the newly created book
    else
      render :new
    end
  end

  def edit
    # find the book we want to render
    @book = Book.find(params[:id])
  end

  def update
    # find the book we want to render
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end

  def destroy
    # find the book we want to render
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to :action => :index
  end

  private

  def book_params
    params.require(:book).permit(:title, :content, :division_id)
  end
end
