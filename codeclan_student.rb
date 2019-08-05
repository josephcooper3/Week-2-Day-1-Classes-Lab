class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def update_name(new_name)
    @name = new_name
  end

end
