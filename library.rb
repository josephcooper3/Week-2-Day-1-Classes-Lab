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

  def rental_details_from_title(title_to_search)
    for book in @books
      return book[:rental_details] if book[:title] == title_to_search
    end
    return nil
  end

  def add_book_to_library(title_to_add)
    @books << {:title=>title_to_add, :rental_details=>{:student_name=>"", :date=>""}}
  end

  def borrow_book(title_to_borrow, borrower, new_due_date)
    for book in @books
      if book[:title] == title_to_borrow
        book[:rental_details][:student_name] = borrower
        book[:rental_details][:date] = new_due_date
      end
    end
  end

end
