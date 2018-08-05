// create a variable called first_name that contains a string
var first_name = "Ali";

// create an array that contains three names
// use your first_name variable for the third name
var names_array = ["Rob", "Gev", first_name];

// create a variable called number_of_names that contains the number of people in your names array
var number_of_names = names_array.length;

// create a variable called age and put an appropriate data type in it
var age = 30;

// create a variable called younger that contains a third of this age
var younger = age / 3;

// create a null variable called empty
var empty = null;

// create a variable called phone_number and store this number 07888777396
// ( think about what type of data would be best for this )
var phone_number = "07888777396";

// create a variable called friend
// extract the second value from your names_array and put it in friend
var friend = names_array[1];

// create a variable called quote that contains the following sentence
// I'm not a number, I'm fairly sure I'm a String
var sentence = 'I\'m not a number, I\'m fairly sure I\'m a String';

// create a variable called sentence_length that contains the length of the sentence
var sentence_length = sentence.length;

// BONUS
// Research how to create a JSON object called person
// Use the person object tests to add the correct data
var person = {
  name : first_name,
  friends : names_array,
  phone_number : phone_number,
  age : age,
  best_friend : friend,
  quote : sentence
};
