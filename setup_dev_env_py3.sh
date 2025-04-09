# ---------------------------------------------------------------
# Eventual prerequisits:
#
# Download and install Miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p /data/leuven/317/vsc31786/miniconda
rm -f miniconda.sh

# Add Miniconda to PATH (ensure this is added to your .bashrc)
export PATH="/data/leuven/317/vsc31786/miniconda/bin:$PATH"

# Add conda-forge channel and prioritize it
conda config --add channels conda-forge
conda config --set channel_priority strict

# Create the environment with Python 3 (e.g., Python 3.10)
conda create -y -n py3 python=3.10 pandas scipy matplotlib basemap netCDF4 xarray

# Activate the environment
conda activate py3
# this also works
# source activate py3

# Needed for jupyter notebook on ondemand
conda install ipykernel
python -m ipykernel install --user --env PYTHONPATH "" --name py3 --display-name py3

# Install additional Python packages with pip if needed
# pip install ...

# Install NCO using conda-forge channel (when possible)
conda install -c conda-forge nco

# to use pylis follow steps in
https://github.com/KUL-RSDA/pylis

# Download and install pycharm (--> change to newer version):
#    wget http://download.jetbrains.com/python/pycharm-community-2017.3.4.tar.gz -O pycharm.tar.gz
#    tar -xzf pycharm.tar.gz
#    rm -f pycharm.tar.gz
#    export PATH="$HOME/pycharm/bin:$PATH" (or add to .bashrc)


# Install and configure git:
#    git config --global user.name "Michel Bechtold"
#    git config --global user.email michel.bechtold@kuleuven.be
#    git config --global core.excludesfile ~/.gitignore_global (add *.pyc !!!)
#        # .pyc files must be untracked to be ignored! if not, use git rm -f filename.pyc
#
# Setup the GitHub SSH keys
#
# ---------------------------------------------------------------
