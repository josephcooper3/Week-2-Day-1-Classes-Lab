require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @library = Library.new
    @library << [
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
    ]
  end

end
