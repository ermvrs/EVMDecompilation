pragma solidity >= 0.8.0;

contract Tests {
    uint256 private firstSlot = 1231;
    mapping(address => uint256) private mappingSlot;
    string private thirdSlot = "0x00";
    mapping(address => uint256) private mappingSecond;
    mapping(address => mapping(uint256 => uint256)) private mappingThird;

    function firstMap(address _a, uint256 _u) public {
        mappingSlot[_a] = _u;
    }

    function secondMap(address _a, uint256 _u) public {
        mappingSecond[_a] = _u;
    }

    function thirdMap(address _a, uint256 _b, uint256 _u) public {
        mappingThird[_a][_b] = _u;
    }

    function readFirst(address _a) public view returns(uint256) {
        return mappingSlot[_a];
    }

    function readSec(address _a) public view returns(uint256) {
        return mappingSecond[_a];
    }

    function readThird(address _a, uint256 _b) public view returns(uint256) {
        return mappingThird[_a][_b];
    }
}
