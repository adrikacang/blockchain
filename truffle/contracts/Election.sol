pragma solidity ^0.6.1;

contract Election {

    struct Candidate {
        string name;
        uint voteCount;
    }

    struct Voter {
        bool authorized;
        bool voted;
        uint vote;
    }

    address public owner;
    bytes32 public electionName;

    mapping(address => Voter) public voters;
    Candidate[] public candidates;
    uint public totalVotes;

    constructor(bytes32 _name) public {
        owner = msg.sender;
        electionName = _name;
    }

    function addCandidate(bytes32 _name) public {
        
    }
}