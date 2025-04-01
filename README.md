sui nft 学习

 sui client call \
>   --package 0xbe792dfe20360b338228bd031c684c2da5388383230467f1d9684ed061c91157 \
>   --module nft_collection \
>   --function initialize_collection \



sui client call \
  --package 0xbe792dfe20360b338228bd031c684c2da5388383230467f1d9684ed061c91157 \
  --module nft_collection \
  --function mint_nft \
  --args 0xb9232f3cffb79b2664a426461fbba32b438574033b56b215823e22cf97d6051d \
  --gas-budget 100000000



sui client publish --gas-budget 100000000


sui move build   


https://testnet.suivision.xyz/object/0x1b4e9e9e32523c7cff72c61f222748149d3b98161b195feb142848fe2f12648a?deviceId=5ca175a3-55f2-4e73-b49c-78ba3a5b698a


{"id":{"id":"0xb9232f3cffb79b2664a426461fbba32b438574033b56b215823e22cf97d6051d"},"max_supply":"100","next_number":"2","total_supply":"1"}


