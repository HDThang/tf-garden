echo "Create conda env name: tf-models"
conda env create -f env.yml
echo "Activate conda env name: tf-models"
conda activate tf-models


update-moreh --tensorflow

echo "installing requirements.."
pip install -r requirements.txt
echo "Finished"

conda config --add envs_dirs /nas/.conda/envs
conda config --add pkgs_dirs /nas/.conda/pkgs