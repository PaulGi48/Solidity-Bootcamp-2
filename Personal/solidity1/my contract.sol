pragma solidity ^0.4.22;
contract Mycontract {
     string value;

constructor() public {
    value = "my value";
}
 function get() public  (return string)
 {
return value;
 }
 function set(string_value)public {
 value = _value;
 }
}