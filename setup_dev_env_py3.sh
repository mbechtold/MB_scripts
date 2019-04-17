# ---------------------------------------------------------------
# Eventual prerequisits:
#
# Download and install miniconda

wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p /data/leuven/317/vsc31786/miniconda
rm -f miniconda.sh
export PATH="/data/leuven/317/vsc31786/miniconda/bin:$PATH" (or add to .bashrc)

conda config --add channels conda-forge
conda create -y -n py3 pandas scipy matplotlib basemap netCDF4 xarray 
source activate py3
pip install pyscaffold
pip install pynetcf
pip install ease-grid
pip install f90nml
conda install -c conda-forge nco

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
