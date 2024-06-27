#
# init_pdk - run once to initialize the environment
#

PDKS_DIR=/home/ttuser/pdk
TOOLS_DIR=/usr/local

WORK_DIR=${PWD}
export WORK_DIR
echo "Working directory: ${WORK_DIR}"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
    echo "Script must be sourced. Use 'source init_pdk <pdk>'"
    exit 1
fi

export PDK_ROOT=${PDKS_DIR}
export PDK=sky130A

# echo -e "Setting up PDK config files"

if [ ! -d ${HOME}/.xschem ]; then
	mkdir ${HOME}/.xschem
fi

# write xschemrc user file if not exists
if [ ! -f ${HOME}/.xschem/xschemrc ]; then
    echo "Creating ${HOME}/.xschem/xschemrc"
	cat <<-EOF >> ${HOME}/.xschem/xschemrc
	# scale grid points up when zooming
	set big_grid_points 1
	unset -nocomplain bespice_listen_port
	set persistent_command 1
	set autotrim_wires 1
	EOF
fi

# write spiceinit user file if not exists
if [ ! -f ${HOME}/.spiceinit ]; then
    echo "Creating ${HOME}/.spiceinit"
	echo -en 'set ngbehavior=hsa\nset ng_nomodcheck\nset num_threads=2\n' > ${HOME}/.spiceinit
fi

#
# Add path for tools
#
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}
pathadd ${TOOLS_DIR}/bin

#
# Activate the Python enviroment
#
PYTHON_VENV=${HOME}/.virtualenvs/icdesign
if [[ ! -d ${PYTHON_VENV} ]]; then
    echo "Python virtual environment 'icdesign' not found."
    read -p "Setup now? " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
    	python3 -m venv ${PYTHON_VENV}
    	export VIRTUAL_ENV_DISABLE_PROMPT=1
		source ${PYTHON_VENV}/bin/activate
		python3 -m pip install -r requirements.txt
    fi
else 
    export VIRTUAL_ENV_DISABLE_PROMPT=1
    source ${PYTHON_VENV}/bin/activate
fi

echo "Initialization completed"
