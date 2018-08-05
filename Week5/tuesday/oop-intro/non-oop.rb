
def calculate_bmi height,weight
  (weight / (height  ** 2)).to_i
end

def calculate_calories sex, height, weight, age
  if sex == "Male"
    bmr = 66.47 + (13.7 * weight) + (5 * height * 100) - (6.8 * age)
  else
    bmr = 655.1 + (9.6 * weight) + (1.8 * height * 100) - (4.7 * age)
  end

  bmr.to_i
end

# Person one
person_one_name = "Bob";
person_one_sex = "Male";
person_one_age = 50;
person_one_height = 1.86;
person_one_weight = 85;

# calculate BMI
person_one_bmi = calculate_bmi person_one_height, person_one_weight

# calculate required calories
person_one_calories = calculate_calories(person_one_sex, person_one_height, person_one_weight, person_one_age)

puts "#{person_one_name} has a BMI of #{person_one_bmi}. Recommend calorie intake is #{person_one_calories} calories"
