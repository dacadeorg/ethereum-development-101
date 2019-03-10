pragma solidity ^0.4.24;

contract memeRegistry {

    struct memecert {
        string name;
        uint timestamp;
    }

    mapping (string => memecert) memecerts;

    function setMeme(string _url, string _name) public{
        memecerts[_url] = memecert(_name, now);
    }

    function getMeme(string _url) public view returns (string, uint){
        return (memecerts[_url].name, memecerts[_url].timestamp);
    }/
}
