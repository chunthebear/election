pragma solidity ^0.4.24;

contract Election{

	//to model a candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}
	
	//to store candidates
	//candidate ID mapped to candidate
	mapping (uint => Candidate) public candidates;

	uint public candidateCount;

	function Election() public{
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	//underscore means local variable, not state variable
	function addCandidate(string _name) private{
		candidateCount++;
		candidates[candidateCount] = Candidate(candidateCount, _name, 0);
	}
}