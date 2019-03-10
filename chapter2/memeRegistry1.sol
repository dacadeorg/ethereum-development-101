pragma solidity ^0.4.24;

contract memeRegistry {
    string url;
    string name;
    uint timestamp;

    function setMeme(string _url, string _name, uint _timestamp) public{
        url = _url;
        name = _name;
        timestamp = _timestamp;
    }

    function getMeme() public view returns (string, string, uint){
        return (url,name,timestamp);
    }
}
