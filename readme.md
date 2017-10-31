######################################################################
##                      ALEX PARISI, JINSOL LEE                     ##
######################################################################
##                                                                  ##
##  Thank you for reading this! In order to perform the analysis    ##
##  presented in our project, you must follow the following steps:  ##                                     
##                                                                  ##
##    1.  In MATLAB, make sure the current folder is set to         ##
##        '\Identity Detection via Handwriting Analysis\'           ##
##        Inside this folder, you should see generate_data.m,       ##
##        run_me.m, and testdata_proc.mat.                          ##
##                                                                  ##
##    2.  If you would like to reproduce our dataset, please run    ##
##        generate_data.m. Please note that this process takes a    ##
##        few hours to process and extract features from our        ##
##        images. If you would like to save yourself some time,     ##
##        you may skip this step as the dataset has already been    ##
##        generated for your convenience.                           ##
##                                                                  ##
##    3.  In order to classify the training data and test our test  ##
##        data, please run run_me.m. This script will perform       ##
##        classification using all three classifiers, so please     ##
##        note that this process will take a few hours. Throughout  ##
##        the process, numerous windows will have opened. The       ##
##        process of optimizing the classifiers opens two figures,  ##
##        meaning a large number of figures will be opened. While   ##
##        the code is running, due to the large amount of figures,  ##
##        you may encounter a graphical error. This does not        ##
##        affect the results and only prevents one from viewing     ##
##        the optimization process.                                 ##
##                                                                  ##
##    4.  The results will be displayed on the MATLAB console,      ##
##        showing how accurate the classification was.              ##
##                                                                  ##
######################################################################
##                                                                  ##
##  PLEASE NOTE:                                                    ##
##                                                                  ##
##    This program was designed to run in MATLAB R2016b, which is   ##
##    provided for free by Georgia Tech for students and faculty.   ##
##    We cannot guarantee that this code will run in previous       ##
##    versions of MATLAB, mainly because we are using toolboxes     ##
##    for classification and some statistical features. These       ##
##    toolboxes are provided with the MATLAB R2016b installation    ##
##    provided by Georgia Tech. The only other toolbox used is the  ##
##    official Curvelet Toolbox, provided on curvelet.org. This     ##
##    is included in this project and does not require you to       ##
##    download it.                                                  ##
##                                                                  ##
##    Also note that the scripts we have written are "run_me.m"     ##
##    and "generate_data.m". All other functions present in this    ##
##    project folder are part of the Curvelet Toolbox.              ##
##                                                                  ##
######################################################################