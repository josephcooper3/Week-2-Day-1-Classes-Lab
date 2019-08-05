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

  def test_update_name
    student = Student.new('Rob', 'E33')
    student.update_name('Joe')
    assert_equal('Joe', student.get_name())
  end

  def test_update_cohort
    student = Student.new('Rob', 'E33')
    student.update_cohort('H1')
    assert_equal('H1', student.get_cohort())    
  end

end
