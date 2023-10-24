# NFT Minting Smart Contract

This Solidity smart contract allows you to mint NFTs (Non-Fungible Tokens) with custom metadata stored on IPFS. Follow these steps to implement and use the contract:

## Steps to Implement:

1. **Smart Contract Deployment**:
   - Open the [Remix IDE](https://remix.ethereum.org/).
   - Paste the contents of the `.sol` file into Remix's Solidity editor.

2. **Install OpenZeppelin Contracts**:
   - Open Git Bash or your preferred terminal.
   - Run the following command to install the OpenZeppelin Contracts library:
     ```
     npm install @openzeppelin/contracts@4.9.3
     ```

3. **Import OpenZeppelin Contracts into Remix**:
   - In Remix, import the OpenZeppelin Contracts folder to use the library in your contract.

4. **IPFS Upload (Metadata JSON)**:
   - To store metadata about your NFTs, you'll need to upload a JSON file to IPFS. Ensure you have an image file (e.g., `image.jpg`) and an associated metadata JSON file (e.g., `nft-metadata.json`).

5. **Edit Metadata JSON**:
   - Open the `nft-metadata.json` file in a text editor.
   - Customize the attributes and update the image URL in the JSON file with the IPFS link you obtained from step 4.

6. **Upload Metadata JSON to IPFS**:
   - Use an IPFS service like [Pinata](https://pinata.cloud/) to upload the modified `nft-metadata.json` file.
   - Copy the IPFS link provided for the uploaded JSON file.

7. **Smart Contract Deployment & Minting**:
   - Back in Remix, deploy your NFT minting smart contract.
   - Use the deploy contract function to deploy it to the Ethereum network.

8. **Mint Your NFT**:
   - In Remix, find and run the mint function in your deployed contract.
   - The function call will ask for your Ethereum address and the IPFS link to your NFT's metadata JSON (from step 6).

9. **Minted**:
   - We've successfully minted an NFT with custom metadata stored on IPFS. Our NFT will be linked to the IPFS metadata, and we can transfer or showcase it as desired.
