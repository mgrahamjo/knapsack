#!/bin/bash

if command -v git >/dev/null 2>&1; then

	if curl -o /usr/local/bin/knapsack -H "Accept: application/vnd.github.raw" https://raw.githubusercontent.com/mgrahamjo/knapsack/master/knapsack; then

		chmod +x /usr/local/bin/knapsack
		
		echo "Installed knapsack to /usr/local/bin"

	else
		echo "Installation failed."
	fi
else
	echo "Please install git before using knapsack."
fi