require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new([
      {
        title: "learn_to_program",
        rental_details: {
          student_name: "Joe",
          date: "01/05/19"
        }
      },
      {
        title: "a_game_of_thrones",
        rental_details: {
          student_name: "Garry",
          date: "01/11/18"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Nik",
          date: "15/03/19"
        }
      }
    ])
  end

  def test_get_book
    result = @library.get_book(0)
    assert_equal({:title=>"learn_to_program", :rental_details=>{:student_name=>"Joe", :date=>"01/05/19"}}, result)
  end

  def test_book_information_from_title__book_found
    result = @library.book_information_from_title("learn_to_program")
    assert_equal({:title=>"learn_to_program", :rental_details=>{:student_name=>"Joe", :date=>"01/05/19"}}, result)
  end

  def test_book_information_from_title__book_not_found
    assert_nil(@library.book_information_from_title("generic_made_up_book"))
  end

  def test_rental_details_from_title__book_found
    result = @library.rental_details_from_title("learn_to_program")
    assert_equal({:student_name=>"Joe", :date=>"01/05/19"}, result)
  end

  def test_rental_details_from_title__book_not_found
    assert_nil(@library.rental_details_from_title("generic_made_up_book"))
  end

  def test_add_book_to_library
    result = @library.add_book_to_library("Schott's Miscellany").last
    assert_equal({:title=>"Schott's Miscellany", :rental_details=>{:student_name=>"", :date=>""}}, result)
  end

  def test_borrow_book
    @library.borrow_book("harry_potter", "Joe", "31/08/2019")
    assert_equal("Joe", @library.get_book(2)[:rental_details][:student_name])
    assert_equal("31/08/2019", @library.get_book(2)[:rental_details][:date])
  end

end
