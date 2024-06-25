// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    struct Proposal {
        string title;
        string description;
    }

    Proposal public proposal;

    constructor(string memory _title, string memory _description) {
        proposal = Proposal({
            title: _title,
            description: _description
        });
    }

    function getProposal() public view returns (string memory, string memory) {
        return (proposal.title, proposal.description);
    }
}
