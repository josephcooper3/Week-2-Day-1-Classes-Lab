class Library

  def initialize(book_array)
    @books = book_array
  end

  def get_book(index)
    return @books[index]
  end

  def book_information_from_title(title_to_search)
    for book in @books
      return book if book[:title] == title_to_search
    end
    return nil
  end

end
