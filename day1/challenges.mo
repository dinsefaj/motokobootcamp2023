//coding challenges

import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";


actor {
//  Challenge 1 multiply
  public func multiply(n : Nat, m : Nat) : async Nat {
    return(m * n);
  };

//  Challenge 2 volume of cube with side n
  public func volume(n : Nat) : async Nat {
    return(n * n * n);
  };

//  Challenge 3 hour to minute conversion
  public func hours_to_minutes(n : Nat) : async Nat {
    return(n  * 60); // Each hour has 60 minutes; 
  };

//challenge 4 set counter & get-counter

stable var counter=0;
public func set_counter(n : Nat) : async() {
    counter := n;
    
  };

  public query func get_counter() : async Nat {
    
    return counter;
  };


//challenge 5  test_divide(n: Nat, m : Nat) -> async Bool

public func test_divide(n: Nat, m : Nat) : async Bool {
    return(n % m == 0);
  };

//challenge 6
//  Challenge 6 is_even
  public func is_even (n : Nat) : async Bool {
    return (n % 2 == 0);
  };


