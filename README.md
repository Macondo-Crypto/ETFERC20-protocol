# ETFERC20 Protocol

**ETFERC20 is a type of ERC20 protocol allows to build ETF type mixed-token protocol**

### Functions support :

- [x] Deposite by mulity tokens 

- [x] Withdraws in mulity tokens 

TODO :

- [ ] Deposite by tokens ( auto swap )

- [ ] Withdraws as tokens ( auto swap )

- [ ] ETF price oracle ( by chainlink )

### Examples :
- Setup a ETF-token name : ``Major Crypto`` 
    - Incuding the base tokens and percentage 
        - WBTC :  40
        - WETH : 40
        - MATIC : 20
        - BNB : 20
- Deposit some `Major Crypto`
    - Deposit by erc20
    - Deposit by ethers | stablecoin
- Withdraws some tokens from `Major Crypto`
- Staking some tokens for farming 
    - Staking
    - Farming by AMM

### Run & Test 

- Do init
```shell
npm install
```
- Test
```shell
npx hardhat test
```
