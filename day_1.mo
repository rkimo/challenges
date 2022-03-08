import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Nat8 "mo:base/Nat8";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";


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
    // Write a function remove_from_array that takes 2 parameters : an array of natural numbers and a natural number n and returns a
    // new array where all occurences of n have been removed (order should remain unchanged).



public func remove_from_array (array : [Nat], n : Nat) : async [Nat] {
    var newArray : [Nat] = [];
    for ( vals in array.vals() ) {
        if ( vals != n ) {
            newArray :=    Array.append <Nat> (newArray, [vals]);
        };
    };
    return newArray;
};



    // Challenge 10
    // Implement a function selection_sort that takes an array of natural numbers and returns the sorted array .
// public func selection_sort ( inputArray : [Nat] ) : async [Nat] {
// }




// private func _swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
//     // Transform our immutable array into a mutable one so we can modify values.
//     let array_mutable = Array.thaw<Nat>(array);
//     let tmp = array[i];
//     array[i] := array[j];
//     array[j] := tmp;
//     // Transform our mutable array into an immutable array.
//     return(Array.freeze<Nat>(array));
//   };

//   public func selection_sort(array : [Nat]) : async [Nat] {
//     var sorted = array;
//     let size = array.size();
//     // First loop
//     for(i in Iter.range(0, size - 1)){
//       var index_minimum = i;
//       // Second loop to determine the minimum in the sub array
//       for(j in Iter.range(i, size - 1)){
//         if(sorted[j] < sorted[index_minimum]){
//           index_minimum := j;
//         };
//       };
//     sorted := _swap(sorted, index_minimum, i);
//     };  
//     return(sorted);
//   };




}