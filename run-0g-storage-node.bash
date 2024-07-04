#!/bin/bash

echo "Cloning a repository 0g-storage-client..."
git clone https://github.com/0glabs/0g-storage-client.git
cd 0g-storage-client
echo "Building the project..."
go build

read -p "Enter blockchain_rpc_endpoint: " blockchain_rpc_endpoint
read -p "Enter log_contract_address: " log_contract_address
read -p "Enter private_key: " private_key
read -p "Enter storage_node_rpc_endpoint: " storage_node_rpc_endpoint
read -p "Enter file_path для загрузки: " file_path
read -p "Enter file_root_hash для скачивания: " file_root_hash
read -p "Enter output_file_path for the downloaded file: " output_file_path

echo "Uploading file..."
./0g-storage-client upload --url $blockchain_rpc_endpoint --contract $log_contract_address --key $private_key --node $storage_node_rpc_endpoint --file $file_path

./0g-storage-client download --node $storage_node_rpc_endpoint --root $file_root_hash --file $output_file_path

./0g-storage-client download --node $storage_node_rpc_endpoint --root $file_root_hash --file $output_file_path --proof

echo "Done!"

