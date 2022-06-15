pragma solidity >=0.6.8;

interface IController {
    function getMintFeeRate(address filterAdminAddr) external view returns (uint256);

    function getBurnFeeRate(address filterAdminAddr) external view returns (uint256);

    function isEmergencyWithdrawOpen(address filter) external view returns (bool);
    
    function mintFragTo(address to, uint256 rawAmount) external returns (uint256 received);

    function burnFragFrom(address from, uint256 rawAmount) external returns (uint256 paid);

}
