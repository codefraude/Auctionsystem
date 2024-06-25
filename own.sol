// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    struct Proposal {
        string title;
        string description;
        uint256 yesVotes;
        uint256 noVotes;
    }

    Proposal public proposal;

    // Function to create a new proposal with title and description
    function createProposal(string memory _title, string memory _description) public {
        proposal = Proposal({
            title: _title,
            description: _description,
            yesVotes: 0,
            noVotes: 0
        });
    }

    // Function to vote on the proposal
    function vote(bool voteYes) public {
        if (voteYes) {
            proposal.yesVotes += 1;
        } else {
            proposal.noVotes += 1;
        }
    }

    // Function to get the proposal details
    function getProposal() public view returns (string memory, string memory, uint256, uint256) {
        return (proposal.title, proposal.description, proposal.yesVotes, proposal.noVotes);
    }

    // Function to calculate the state of the proposal
    function calculateProposalState() public view returns (string memory) {
        if (proposal.yesVotes > proposal.noVotes) {
            return "Succeeded";
        } else {
            return "Failed";
        }
    }
}
