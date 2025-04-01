// Specify the address for the module
module 0x0::nft_collection {
    // Removed unnecessary import statements

    // 定义NFT结构体
    public struct NFT has key, store {
        id: UID,
        number: u64,
    }

    // 定义NFT集合结构体
    public struct NFTCollection has key, store {
        id: UID,
        next_number: u64,
        total_supply: u64,
        max_supply: u64,
    }

    // 初始化NFT集合
    public entry fun initialize_collection(ctx: &mut TxContext) {
        let collection = NFTCollection {
            id: sui::object::new(ctx),
            next_number: 1,
            total_supply: 0,
            max_supply: 100,
        };
        transfer::share_object(collection);
    }

    // 铸造NFT
    public entry fun mint_nft(collection: &mut NFTCollection, ctx: &mut TxContext) {
        assert!(collection.total_supply < collection.max_supply, 1);
        let number = collection.next_number;
        collection.next_number = collection.next_number + 1;
        collection.total_supply = collection.total_supply + 1;

        let nft = NFT {
            id: sui::object::new(ctx),
            number: number,
        };
        transfer::transfer(nft, tx_context::sender(ctx));
    }

    // Close the module
    }
