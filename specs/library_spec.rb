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

  def test_book_information_from_title
    assert_equal({:title=>"learn_to_program", :rental_details=>{:student_name=>"Joe", :date=>"01/05/19"}}, @library.book_information_from_title("learn_to_program"))
  end

end
