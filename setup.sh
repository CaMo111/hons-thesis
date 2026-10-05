module load anaconda

conda config --add pkgs_dirs ~/.conda/pkgs

# OR SWAP TO GPU 
rm ./PSICHIC/psichic_fp
conda env create -f ./PSICHIC/environment_gpu.yml
conda activate base 
conda rename -n psichic_fp psichic_gpu
conda activate psichic_gpu
pip install torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.1.0+cu118.html
