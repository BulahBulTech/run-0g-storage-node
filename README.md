# run-0g-storage-node
How to properly launch 0g Storage Node

## Install

### Download the source code

```
git clone https://github.com/0glabs/0g-storage-client.git
```

### Build the source code

```
cd 0g-storage-client
go build
```

### Run the file upload/download commands

```
# file upload
./0g-storage-client upload --url <blockchain_rpc_endpoint> --contract <log_contract_address> --key <private_key> --node <storage_node_rpc_endpoint> --file <file_path>
# file download
./0g-storage-client download --node <storage_node_rpc_endpoint> --root <file_root_hash> --file <output_file_path>
# file download with verfication
./0g-storage-client download --node <storage_node_rpc_endpoint> --root <file_root_hash> --file <output_file_path> --proof
```

## Or you can run our script
