# install pytorch1.2 with cuda10
conda create -n pt12 python=3.7 -y
conda activate pt12
conda install pytorch torchvision cudatoolkit=10.0 -y
conda install tensorboard flake8 ipython -y
