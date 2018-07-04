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

	// Store accounts that have voted
	mapping (address => bool) public voters;
	
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

	function vote (uint _candidateID) public {
		// require that one voter has not voted before
		require (!voters[msg.sender]);
		
		// require a valid candidate
		require (_candidateID > 0 && _candidateID <= candidatesCount);
		
		// record that voter as voted
		voters[msg.sender] = true;

		// update candidate vote Count
		candidates[_candidateID].voteCount ++;
	}
	
}
