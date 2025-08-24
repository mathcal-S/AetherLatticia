#!/bin/bash
source .env
forge create --rpc-url $POLYGON_RPC_URL --private-key $PRIVATE_KEY contracts/AetherQuantaGenesis.sol:AetherQuantaGenesis
forge create --rpc-url $POLYGON_RPC_URL --private-key $PRIVATE_KEY contracts/PhiCoin.sol:PhiCoin
forge create --rpc-url $POLYGON_RPC_URL --private-key $PRIVATE_KEY contracts/BountySystem.sol:BountySystem
