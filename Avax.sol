// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract ErrorHandling{
   uint256 public value;

   function setValue(uint  _value) public {
       require(_value > 10 ,"Value is not greater than 10");
   }

   function checkAssert(uint  _value) public {
       uint num = 20;
       assert(num > _value);
   }


   function checkRevert(uint _value) public {
       uint num = 5;
       if(_value < num){
           revert("value is less than num");
       }
   }



}
