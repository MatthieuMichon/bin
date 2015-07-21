#!/bin/bash

# ------------------------------------------------------------------------------
# Quartus
# ------------------------------------------------------------------------------

ALTERA_DIR=/opt/altera

list_quartus_versions () {
	# List quartus dirs
	quartus_list=( $(cd $ALTERA_DIR; find quartus* -maxdepth 0 -type d | sort -r) )

	# List versions when no args
	echo "Available Quartus versions:"
	for quartus_dir in "${quartus_list[@]}"; do
		echo "  $quartus_dir"
	done
}


set_quartus_version () {
	QUARTUS_PATH=$ALTERA_DIR/$1
	QUARTUS_SYS_DIR=$QUARTUS_PATH/quartus/bin
	echo "Setting Quartus: $QUARTUS_SYS_DIR"
	export PATH=$PATH:$QUARTUS_SYS_DIR
	echo $PATH
}

# ------------------------------------------------------------------------------
# Main
# ------------------------------------------------------------------------------

if [ -z "$1" ]; then
	list_quartus_versions
else
	set_quartus_version $1
fi
