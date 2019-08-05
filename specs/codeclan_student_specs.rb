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

  def test_talk
    student = Student.new('Joe', 'E33')
    assert_equal("Hi, I'm Joe!", student.talk())
  end

  def test_say_favourite_language
    student = Student.new('Joe', 'E33')
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end

end
