class Person

  attr_accessor  :name, :sex, :age, :height, :weight

  def initialize (name, sex, age, height, weight)
    self.name = name
    self.sex = sex
    @age = age
    @height = height
    @weight = weight
  end



  def calculate_bmi
    (@weight / (@height  ** 2)).to_i
  end

  def calculate_calories
    if @sex == "Male"
      bmr = 66.47 + (13.7 * @weight) + (5 * @height * 100) - (6.8 * @age)
    else
      bmr = 655.1 + (9.6 * @weight) + (1.8 * @height * 100) - (4.7 * @age)
    end

    bmr.to_i
  end

  def description
    puts "#{@name} has a BMI of #{calculate_bmi}. Recommend calorie intake is #{calculate_calories} calories"
  end

end
