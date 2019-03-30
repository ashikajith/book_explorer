class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  # Permiting trusted parameters for the book model.
  def company_params
    params.require(:book).permit(:title, :author, :date_published,
                                 :unique_code, :publisher)
  end
end
