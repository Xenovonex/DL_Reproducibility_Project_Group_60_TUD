# README 

The Readme of the Deep Image Prior Reproducibility Project code by group 60:

Jitske de Vries

Willem Jan Tempelaar

Rutger Dirks 

Under supervision of Attila Lengyel, TU Delft.

For the course CS4240 Deep Learning at the Delft University of Technology (TU Delft).

### Citation: The provided code is a replication from the Deep Image Prior code cited below, including the link to github.

git clone https://github.com/DmitryUlyanov/deep-image-prior.git

```
@article{UlyanovVL17,
    author    = {Ulyanov, Dmitry and Vedaldi, Andrea and Lempitsky, Victor},   
    title     = {Deep Image Prior},   
    journal   = {arXiv:1711.10925}    
    year      = {2017}   
}
```

## Scope

The replicated code is used to reproduce the images shown in the article by Ulyanov, 2017 
of the Inpainting and Flash - no Flash networks. Furthermore, a hyperparameter research is done on the Inpainting network
as well as experiments with the Denoising and Inpainting networks to try to denoise the no Flash image.  

The reproduction study can be viewed in the following link: https://medium.com/@w.j.tempelaar/1f6e869a6dfe

## Instructions

Ideally, the full repository should be downloaded to a Google Drive. 
This project makes use of Google Colab to execute the .ipynb codes.
This project also makes use of MATLAB code for result analysis. 

### Replicated codes
The repository contains Jupyter Notebook files which are the replicated codes 
with some extensions to locate the right directories, compute the PSNR and save images.

#### Execute code
When downloaded to Google Drive, open the .ipynb files with Google Colab.
Uncomment the 
"os.chdir('/content/drive/My Drive/Group60_Reproducibility_project_code-master')"
code in each third code block and comment the: 
"os.chdir('/content/drive/My Drive/Deep learning reproducibility project/Group60_Reproducibility_project_code-master')"
or change it to the appropriate directory from which you will execute the code.

Set the Runtime type to Python 3 and GPU and run the code.


### MATLAB codes
The MATLAB codes are located inside the MATLAB_code directory.
Use MATLAB to execute these codes. 
It will show the results that can also be found in the reproducibility study. 

### Data
The "data" and "Good_images" directories contain the input data images for the replicated networks.

The "Results" directory contains the output images from the replicated networks. 
Inside this directory there are two directories "Hyperparameters" and "Noise"
which contain the results from the Inpaining network for different hyperparameters. 

### Additional 
The "models" and "utils" directories contain replicated code models and utilities from Ulyanov, 2017
that is used by the networks.

The Reproducibility_Deep_Learning_Equations_Form.pdf contains the equations that were discussed in the reproducibility study report.


