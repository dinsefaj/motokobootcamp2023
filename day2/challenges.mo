//Solution to codding challenges

import Char "mo:base/Char";
import Text "mo:base/Text";
import Array "mo:base/Array";
actor {


//1. average_array(array : [Int]) -> async Int




    public func average_array(array : [Int]) : async Int {

var sum : Int = 0;
var avg:Int=0;
        for (value in array.vals()){
          sum := sum + value;
        };
        let size = array.size();
avg:=sum/size;
       return avg;
    };

//2  count_character(t : Text, c : Char) -> async Nat

public func count_character(t : Text, c : Char) : async Int {
var count:Int=0;
        var characters : [Char] = [];
        for (characters in t.vals()){
            count:=1;
            };
        };
        return count;
    };

// #3 factorial(n : Nat) ->  async Nat

// #3 factorial(n : Nat) ->  async Nat
public query func fac(n : Nat) : async Nat {

    // using recursive function
    func go(m : Nat) : Nat {
      if (m == 0) {
        return 1;
      } else {
        return m * go(m - 1);
      };
    };

    // Return.
    return go(n);
  };
    

//#4   number_of_words(t : Text) -> async Nat 

    


//#5 find_duplicates(a : [Nat]) -> async [Nat]

public func find_duplicates(a : [Nat])  : async [Nat] {
        var characters : [Nat] = [];
        for (character in a.vals()){
            switch(Array.filter(characters, f(x) : Nat -> Bool {x == character})){
                case(null) {
                    characters := Array.append<Nat>(characters, [character]);
                };
                case(?char){
                    return Char;
                };
            };
        };
        return (a);
    };




//#6  convert_to_binary(n : Nat) -> async Text

public func convert_to_binary(n : Nat) : async Text {
        var m = n;
        var bits = "";
        while(m > 0){
            let remainder = m % 2;
            let m = m / 2;
            if(remainder == 1){
                bits = "1" # bits;
            } else {
                bits = "0" # bits;
            };
        };
        return(bits)
    };
}
