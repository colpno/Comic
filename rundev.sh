#!/bin/bash

if ! command -v npm 2>&1 >/dev/null
then
    echo "npm not found"
    exit 1
else
	SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
	CLIENT_TITLE='Comic - Client'
	CLIENT_RUN_COMMAND="cd $SCRIPT_DIR/client && npm run dev"
	SERVER_TITLE='Comic - Server'
	SERVER_RUN_COMMAND="cd $SCRIPT_DIR/server && npm run dev"

	gnome-terminal --tab --title="$CLIENT_TITLE" -- bash -c "$CLIENT_RUN_COMMAND"
	gnome-terminal --tab --title="$SERVER_TITLE" -- bash -c "$SERVER_RUN_COMMAND"
fi
