require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new('Rob', 'E33')
    assert_equal('Rob', student.get_name())
  end

end
