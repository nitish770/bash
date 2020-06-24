#!/bin/bash

echo "This is a simple file encryptor/decryptor"
echo "Enter a choice"

echo "1. Encrypt"
echo "2. Decrypt"
read choice

case $choice in
	1 )
		read -p "Enter the file to Encrypt" file
		gpg -c $file
		echo "Encryption successfully done"
		;;
	2 )
		read -p "Enter the file to be Decrypt" file
		gpg -d $file
		echo "Decrypted successfully"
		;;

esac