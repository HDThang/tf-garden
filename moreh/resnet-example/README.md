# 1.Run the setup.sh to create a conda env and install the requirement packages
`bash setup.sh`

# 2.Train one model
## 2.1 Set the arguments in config.yaml
Create your config.yaml file.
Each model have a slightly different config argument. You can find some examples arg for your model/task in this path: **official/*vision or nlp*/configs/experiments/*task*/{experiment.yaml}** 
Those arguments are quite straight forward so you can understand almost all of it. 
*Note*: The data for vision task must be in **tfrecord** or **tfds**format.
## 2.2 Train one model
Run `bash run.sh {experiment_name} {config_file}`
{experiment_name} can be found in model-experiments.txt. These are the model currently support by tf-models. You can see more in this path: **official/*vision or nlp*/configs/experiments/*task.py***

## 3.Output
The run.sh script already save the model's output, params, checkpoint, and train.log in the same directory. Inside a folder name {experiment_name}_output
