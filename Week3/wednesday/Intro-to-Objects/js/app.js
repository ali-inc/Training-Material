// var person = new Object();
//
// person.name = "Ali";
// person.age = 3;
// person.employed = true;
// person.friends = ['T', 'Seb', 'Rob'];
//
// person.sayHello = function() {
//   console.log("Hello!")
// }
//
// console.log(person);
//
// var car = Object.create();
//
// car.model = "Toyota";



/* Class Constructor */
// var Person = function(name, age, employed) {
//   this.name = name;
//   this.age = age;
//   this.employed = employed;
//   this.friends = [];
//   this.sayHello = function () {
//     console.log("Hi, my name is " + this.name);
//   }
// }
//
// var person1 = new Person("Joe", 25, true);
// var person2 = new Person("Donald Duck", 84, true);
//
// console.log(person1.name);
// console.log(person2.name);

/* Json */
var person1 = {
  name: "Ali",
  age: 25,
  employed: true,
  sayHello: function() {
    console.log('Hi, myname is ' + this.name);
  }
}

var data = {
	class_name: "Sparta Class",
	teacher: {
		name: "Steve",
		age: 32,
		employed: true
	},
	lessons: [
		{
			name: "Lesson 1",
			info: "This is the first lesson."
		},
		{
			name: "Lesson 2",
			info: "This is the second lesson."
		},
		{
			name: "Lesson 3",
			info: "This is the third lesson."
		},
		{
			name: "Lesson 4",
			info: "This is the fourth lesson."
		},
		{
			name: "Lesson 5",
			info: "This is the fifth lesson."
		}
	]
}

console.log(data.lessons[2].info);
console.log(data["lessons"][2]["info"]);
