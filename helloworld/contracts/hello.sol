pragma solidity 0.8.3;

contract Helloworld {
    string message = "Hello world!";

    function setMessage(string memory newMessage) public returns (string memory) {
        message = newMessage;
        return newMessage;
    }

    function hello() public view returns (string memory) {
        return message;
    }
}