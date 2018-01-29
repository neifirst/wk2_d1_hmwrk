class Student

  attr_accessor :name, :cohort_num

  def initialize(input_name, input_cohort_num)

    @name = input_name
    @cohort_num = input_cohort_num

  end


  def talk

    return "I can talk!"

  end
  

  def say_fave_language(language)

    return "I lurve " + language + "."

  end

end
