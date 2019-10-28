#!/bin/sh -e

# Input file
config_file=$1

echo "Start initializing environment variables from file $config_file"

if [[ -f "$config_file" ]]
then
    echo "Parse file: $config_file"
	while IFS='=' read -r key value
    do
        echo "Export environment variable: $key=$value"
        export $key=$vakue
    done < "$config_file"
fi

echo "End initializing environment variables"