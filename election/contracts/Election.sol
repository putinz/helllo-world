pragma solidity ^0.4.24;

/**
 * The Election contract is a test for creating a SMC
 */
contract Election {
	// Store Candidate
	// Read Candidate
	string public candidate;
	// Constructor
	function Election () public {
		candidate = "EOS";
	}	
}
