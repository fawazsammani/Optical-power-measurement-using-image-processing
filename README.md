# MATLAB implementation of the Paper: Optical Power Measurement using Image Processing Techniques [Paper](https://ieeexplore.ieee.org/document/8372667)
## Files
There are two files.  
`blur` is used to measure the blur percentage between the given image and the referenced image
`compare` is used to compare our method of blur measurement to other methods
<br/>
You may use `sum(I_bw(:)==0)` to calculate the number of black pixels. 
<br/>
## Results 
The following graphs demonstrate the developed equations:<br/><br/>
![graph-0](https://user-images.githubusercontent.com/30661597/47572245-60f12580-d8ef-11e8-8266-eb19606a1f92.png)
![graphs-1](https://user-images.githubusercontent.com/30661597/47572253-6484ac80-d8ef-11e8-81d2-581dc6112534.png)

## Using our method for blur measurement on any images
You may also use our proposed method of blur measurement for any image you want. Below is the results of our method applied on other images.<br/><br/>
![1](https://user-images.githubusercontent.com/30661597/47572418-c04f3580-d8ef-11e8-9f7d-0b12ff800a7d.png)
![2](https://user-images.githubusercontent.com/30661597/47572425-c513e980-d8ef-11e8-875f-7eda5747772a.png)
![3](https://user-images.githubusercontent.com/30661597/47572428-c7764380-d8ef-11e8-9bd2-55a4336c97c7.png)
![4](https://user-images.githubusercontent.com/30661597/47572487-f1c80100-d8ef-11e8-8887-07b489aad5e1.PNG)
![7](https://user-images.githubusercontent.com/30661597/47572491-f42a5b00-d8ef-11e8-96a9-d3df9cb1706e.PNG)

## Citation
@article{ElSayed2018OpticalPM,
  title={Optical power measurement using image processing techniques},
  author={Mahmoud El-Sayed and Fawaz Sammani and Abdelsalam Hamdi and Salman Ali Al-Ahdal},
  journal={2018 International Conference on Signals and Systems (ICSigSys)},
  year={2018},
  pages={205-208}
}



