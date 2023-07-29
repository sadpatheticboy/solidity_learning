// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes1 {
    // unsigned integers
    uint public myUint = 42; // uint = uint256 (2 ** 256)
    uint8 public mySmallUint = 2; // min=0 -> max=(2 ** (256-1))
    // uint16 -> uint24 -> uint(+8) ... -> uint256

    // signed integers
    int public myInt = -42; // int = int256
    int8 public mySmallInt = -1; // min=-128 -> max=127

    // uint8 public myVal = 255;
    uint8 public myVal = 1;

    function dec() public {
        unchecked {
            // myVal++;
            myVal--;
        }
    }

    // function Demo(uint _inputUnit) public {
    //     uint localUint = 42;
    // }

        // bool public myBool = true; // state

        // function myFunc(bool _inputBool) public {
        //     bool localBool = false;
        //     localBool && _inputBool; // and
        //     localBool || _inputBool; // or (lazy (short-curcuit))
        //     localBool == _inputBool; // equal
        //     localBool != _inputBool; // not equal
        //     !localBool; // inversion 

        // }
}