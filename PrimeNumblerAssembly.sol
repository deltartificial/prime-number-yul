pragma solidity 0.8.17;

contract PrimeNumberAssembly {

    // @author: @deltartificial

    // WITH ISZERO
    function isPrimeIsZero(uint256 x) external pure returns (bool p) {
        p = true;
        assembly {
            // uint256 halfX = x / 2 + 1
            let halfX := add(div(x, 2), 1)
            for { let i := 2 } lt(i, halfX) { i := add(i, 1) }
            {
                if iszero(mod(x, i)) {
                    p := 0
                    break
                }
            }
        }
    }

    // WITH EQ
    function isPrimeEq(uint256 x) external pure returns (bool p) {
        p = true;
        assembly {
            // uint256 halfX = x / 2 + 1
            let halfX := add(div(x, 2), 1)
            for { let i := 2 } lt(i, halfX) { i := add(i, 1) }
            {
                if eq(mod(x, i), 0) {
                    p := 0
                    break
                }
            }
      }
    }
}