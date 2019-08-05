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

  def update_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "Hi, I'm #{@name}!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end
