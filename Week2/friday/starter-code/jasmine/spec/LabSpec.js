describe("Lab", function() {

  describe("first_name" , function(){
    it("should be defined" , function(){
      expect(first_name).toBeDefined();
    });

    it("should contain a string" , function(){
      expect(typeof(first_name)).toBe("string");
    });
  });

  describe("names_array", function() {
    it("should be defined" , function() {
      expect(names_array).toBeDefined();
    });

    it("should only contain strings", function() {
      var count = names_array.reduce(function(sum, value) {
        if(typeof(value) == "string") {
          sum++;
        } 

        return sum;
      }, 0);

      expect(count).toBe(names_array.length);
    });

    it("should contain the name variable in the third position", function() {
      expect(names_array[2]).toBe(first_name);
    });
  });

  describe("number_of_names" , function(){
    it("should be defined" , function(){
      expect(number_of_names).toBeDefined();
    });

    it("should be the number of names in the names_array" , function(){
      expect(number_of_names).toBe(names_array.length);
    });
  });

  describe("age" , function(){
    it("should be defined" , function(){
      expect(age).toBeDefined();
    });

    it("should contain a number" , function(){
      expect(typeof(age)).toBe("number");
    });
  });

  describe("younger" , function(){
    it("should be defined" , function(){
      expect(younger).toBeDefined();
    });

    it("should contain a third of the age variable", function(){
      expect(younger).toBe(age/3);
    });
  });

  describe("empty" , function(){
    it("should be null",function(){
      expect(empty).toBe(null);
    });
  });

  describe("phone_number" , function(){
    it("should be defined",function(){
      expect(phone_number).toBeDefined();
    });

    it("should match 07888777396" , function(){
      expect(phone_number).toMatch("07888777396");
    });
  });

  describe("friend" , function(){
    it("should be defined",function(){
      expect(friend).toBeDefined();
    });

    it("should equal the second value in names_array" , function(){
      expect(friend).toBe(names_array[1]);
    })
  });

  describe("sentence" , function(){
    it("should be defined",function(){
      expect(sentence).toBeDefined();
    });

    it("should match \"I'm not a number, I'm fairly sure I'm a String\"" , function(){
      expect(sentence).toBe("I'm not a number, I'm fairly sure I'm a String");
    });
  });

  describe("sentence_length" , function(){
    it("should be defined",function(){
      expect(sentence_length).toBeDefined();
    });

    it("should contain the length of the sentence variable" , function(){
      expect(sentence_length).toBe(sentence.length);
    });
  });

  describe("BONUS person" , function(){
    it("should be defined", function(){
      expect(person).toBeDefined();
    });

    it("should be an object" , function(){
      expect(typeof(person)).toBe("object");
    });

    it("should have a name property that contains the first_name variable" , function(){
      expect(person.name).toBe(first_name);
    });

    it("should have a name property that contains the first_name variable" , function(){
      expect(person.name).toBe(first_name);
    });

    it("should have a friends property that contains the names_array" , function(){
      expect(person.friends).toBe(names_array);
    });

    it("should have an age property that contains the age variable" , function(){
      expect(person.age).toBe(age);
    });

    it("should have a phone_number property that contains the phone_number variable" , function(){
      expect(person.phone_number).toBe(phone_number);
    });

    it("should have a best_friend property that contains the friend variable" , function(){
      expect(person.best_friend).toBe(friend);
    });

    it("should have a quote property that contains the sentence variable" , function(){
      expect(person.quote).toBe(sentence);
    });
  });
});
