import Nat "mo:base/Nat";
import Nat8 "mo:base/Nat8";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Int "mo:base/Int";
import Array "mo:base/Array";
import Char "mo:base/Char";







actor {

    // Challenge 1

    public func nat_to_nat8(n: Nat): async Nat8 {
        if (n <= 255) {
            let nat8 = Nat8.fromNat(n);
            return nat8;
        } else {
            return 0;
        }
    };


    // Challenge 2 : Write a function max_number_with_n_bits that takes a Nat n and returns the maximum number than can be represented with only n-bits.

    public func max_number_with_n_bits(n: Nat): async Text {
        return Nat.toText(2 ** n - 1);

    };



    // Challenge 3 : Write a function decimal_to_bits that takes a Nat n and returns a Text corresponding to the binary representation of this number.


    //     public func decimal_to_bits(n: Nat): async Text { 
    // //         var newArray: [Nat] = [];
    // //         var current: Nat = 75;   //actually -->   var current: Nat = n;

    // // while ( (current) != 0 ) {
    // //     current -= 1;
    // //     Debug.print(debug_show(current));
    // //     return(current);
    // // };





    // //         return Nat.toText(0);

    //     };




    // public func decimal_to_bits(n: Nat): async Text {


    //     // var current = n;
    //     var current: Nat = 75;
    //     var remainder: Nat = 0;
    //     var array: [Nat] = [];
    //     var arrayIndex: [Nat] = 0;


    //     func workThrough(current: Int) {


    //         var current = Float.toNat(Float.floor(Float.fromNat(n) / 2));       // divide current by 2 and round down
    //         var remainder = n % 2;                                          // find remainder for current
    //         // var array.size++;                                                 // increase array size by 1 ?
    //         var array[arrayIndex] = remainder;                               // add remainder to array
    //         return current;


    //     };


    //     Debug.print(debug_show(remainder));
    //     return Nat.toText(current);
    // };




    // Challenge 4 : Write a function capitalize_character that takes a Char c and returns the
    // capitalized version of it.

    public func capitalize_character(c: Char): async Text {
        // decapitalized version is always 32 cells ahead


        if (Char.isUppercase(c)) {
            return Char.toText(c);
        } else {
            
            return "c";

        };


    };



}