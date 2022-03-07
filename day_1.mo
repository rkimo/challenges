import Array "mo:base/Array"

actor {

    // Challenge 1

    public func add(n : Nat, m : Nat) : async Nat {
        return n + m;
    };

    // Challenge 2

    public func square(n : Nat) : async Nat  {
        return n * n;
    };
    
    // Challenge 3

    public func days_to_second(n : Nat) : async Nat  {
        return n * 86400;
    };
    
    // Challenge 4

    var counter : Nat = 0;

    public func increment_counter(n : Nat) : async Nat {
        counter := counter + n;
        return (counter);
    };

    public func clear_counter() : async Nat {
        counter := 0;
        return (counter);
    };
    
    
    // Challenge 5

    public func divide(n : Nat, m : Nat) : async Bool {
        return (n % m == 0);
    };

    // Challenge 6

    public func is_even(n : Nat) : async Bool {
        return (n % 2 == 0);
    };

    // Challenge 7
// note : format input using type vectors
// example : '(vec { 1 ; 2 ; 3 })'
 
    public func sum_of_array(array : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (value in array.vals()) {
            sum := sum + value;
        };
        return sum;
    };



    // Challenge 8

    public func maximum(array : [Nat]) : async Nat {
        var sum : Nat = 0;
        for (value in array.vals()) {
            sum := sum + value;
        };
        return sum;
    };
    


    // Challenge 9

    
    // Challenge 10
  
}