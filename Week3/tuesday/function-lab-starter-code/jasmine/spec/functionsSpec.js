describe("Title of testing arguments",function() {

    it("Testing the multiply() function", function(){

    	expect(multiply(3,2)).toEqual(6);

    });

    it("Testing the addThree() function", function(){

    	expect(addThree(7,234,9)).toEqual(250);

    });

    it("Testing the smallestNumber() function", function(){

        expect(smallestNumber(317,215)).toEqual(215);
        expect(smallestNumber(43,72)).toEqual(43);

    });

    it("Testing the maxOfThree() function", function(){

        expect(maxOfThree(3,2,8)).toEqual(8);

    });

    it("Testing the reverseString() function", function(){

        expect(reverseString("markson")).toEqual("noskram");

    });

    it("Testing the disemvowel() function", function(){

        expect(disemvowel("markson")).toEqual("mrksn");

    });

    it("Testing the removeOdd() function", function(){

        expect(removeOdd([3,12,9,7,10])).toEqual([12,10]);

    });

    it("Testing the removeEven() function", function(){

        expect(removeEven([12,3,9,7,10])).toEqual([3,9,7]);

    });

    it("Testing the longestString() function", function(){

        expect(longestString(["hello","goodbye"])).toEqual("goodbye");

    });

    it("Testing the allElementsExceptFirstThree() function", function(){

        expect(allElementsExceptFirstThree([3,9,7,10,12])).toEqual([10,12]);

    });

    it("Testing the convertArrayToAnObject() function", function(){

        var obj = {
            ting: "tang",
            tung: "tong"
        };
        expect(convertArrayToAnObject(["ting","tang","tung","tong"])).toEqual(obj);

    });

    it("Testing the basicVariableConvertion() function", function(){

        expect(fizzBuzz(20)).toEqual("Fizz");

    });

});
