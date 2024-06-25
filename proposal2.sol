// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    struct Proposal {
        string title;
        string description;
    }

    Proposal public proposal;

    // Function to create a new proposal with title and description
    function createProposal(string memory _title, string memory _description) public {
        proposal = Proposal({
            title: _title,
            description: _description
        });
    }

    // Function to get the proposal details
    function getProposal() public view returns (string memory, string memory) {
        return (proposal.title, proposal.description);
    }
}
