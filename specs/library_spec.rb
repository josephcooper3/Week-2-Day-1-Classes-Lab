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
    assert_equal({:title=>"learn_to_program", :rental_details=>{:student_name=>"Joe", :date=>"01/05/19"}}, @library.get_book(0))
  end

  def test_book_information_from_title__book_found
    assert_equal({:title=>"learn_to_program", :rental_details=>{:student_name=>"Joe", :date=>"01/05/19"}}, @library.book_information_from_title("learn_to_program"))
  end

  def test_book_information_from_title__book_not_found
    assert_nil(@library.book_information_from_title("generic_made_up_book"))
  end

  def test_rental_details_from_title__book_found
    assert_equal({:student_name=>"Joe", :date=>"01/05/19"}, @library.rental_details_from_title("learn_to_program"))
  end

  def test_rental_details_from_title__book_not_found
    assert_nil(@library.rental_details_from_title("generic_made_up_book"))
  end

  def test_add_book_to_library
    assert_equal({:title=>"Schott's Miscellany", :rental_details=>{:student_name=>"", :date=>""}}, @library.add_book_to_library("Schott's Miscellany").last)
  end

  def test_borrow_book
    @library.borrow_book("harry_potter", "Joe", "31/08/2019")
    assert_equal("Joe", @library.book_information_from_title("harry_potter")[:rental_details][:student_name])
    assert_equal("31/08/2019", @library.book_information_from_title("harry_potter")[:rental_details][:date])
  end

end
