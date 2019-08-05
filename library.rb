class Library

  def initialize(book_array)
    @books = book_array
  end

  def get_book(index)
    return @books[index]
  end

end
