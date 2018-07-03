pragma solidity ^0.4.24;

/**
 * The Election contract is a test for creating a SMC
 */
contract Election {
	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}
	
	// Store Candidates

	// Fetch Candidate
	mapping (uint => Candidate) public candidates;
	
	// Store Candidates Count
	uint public candidatesCount;

	function Election () public {
		addCandidate("EOS");
		addCandidate("ETH");
	}

	function addCandidate (string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);	
	}
}
