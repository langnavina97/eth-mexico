String getAllNFTs = """
query Nfts(\$request: NFTsRequest!) {
  nfts(request: {
    ownerAddress: "0x54be3a794282c030b15e43ae2bb182e14c409c5e",
    limit: 10,
    chainIds: [1]
  }) {
    items {
      contractName
      contractAddress
      symbol
      tokenId
      owners {
        amount
        address
      }
      name
      description
      contentURI
      originalContent {
        uri
        metaType
      }
      chainId
      collectionName
      ercType
    }
    pageInfo {
      prev
      next
      totalCount
    }
  }
}""";
