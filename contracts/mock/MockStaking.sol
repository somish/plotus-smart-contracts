pragma solidity 0.5.7;

import "../Staking.sol";

contract MockStaking is Staking {

  constructor(address _stakeToken, address _rewardToken) public Staking(_stakeToken, _rewardToken) {
  }

	function setBuyInRate(address _user, uint _value) public
  {
    interestData.stakers[_user].stakeBuyinRate = _value;
  }

  function addStake(address _user, uint _value) public
  {
    interestData.stakers[_user].totalStaked = _value; 
  }  

  function setInterestData(uint a, uint b) public {
    interestData.globalTotalStaked = a;
    interestData.globalYieldPerToken = b;
  }

  function setStarttime() public {
    stakingStartTime = now;
  }

}