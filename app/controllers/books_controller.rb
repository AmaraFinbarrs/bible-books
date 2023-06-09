class BooksController < ApplicationController
  def index
    @divisions = Division.all
    div = params[:div]

    if !div.nil?
      @books = Book.where(:division_id => div).paginate(page: params[:page])
    else
      @books = Book.paginate(page: params[:page])
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
    create_book_chapters
  end

  def create_book_chapters
    no_of_chapter = book_params[:no_of_chapter]

    (1..no_of_chapter.to_i).each do |chapter_number|
      Chapter.create!(chapter_no: chapter_number,
                      book_id: @book.id)
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
    params.require(:book).permit(:title, :content, :division_id, :no_of_chapter)
  end
end
