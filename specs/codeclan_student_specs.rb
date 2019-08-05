require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new('Rob', 'E33')
    assert_equal('Rob', student.get_name())
  end

  def test_get_cohort
    student = Student.new('Rob', 'E33')
    assert_equal('E33', student.get_cohort())
  end
  
end
