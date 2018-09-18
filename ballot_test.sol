pragma solidity ^0.4.7;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./ballot.sol";

contract test3 {
   
    Ballot ballotToTest;
    function beforeAll () {
       ballotToTest = new Ballot(2);
    }
    
    function checkWinningProposal () public {
        ballotToTest.vote(1);
        Assert.equal(ballotToTest.winningProposal(), uint(1), "1 should be the winning proposal");
    }
    
    function checkWinninProposalWithReturnValue () public constant returns (bool) {
        return ballotToTest.winningProposal() == 1;
    }
}
