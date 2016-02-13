# Getting and Cleaing Data Assignment - Codebook

## Dataset Description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeaccxyz and timegyroxyz. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timebodyaccxyz and timegravitAccxyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timebodyaccjerkxyz and timebodygyrojerkxyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timebodyaccmagnitude, timegravityaccmagnitude, timebodyaccjerkmagnitude, timebodygyromagnitude, timebodygyrojerkmagnitude). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqbodyaccxyz, freqbodyaccjerkxyz, freqbodygyroxyz, freqbodyaccjerkmagnitude, freqbodygyromagnitude, freqbodygyrojerkmagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

timebodyaccxyz
timegravityaccxyz
timebodyaccjerkxyz
timebodygyroxyz
timebodygyrojerkxyz
timebodyaccmagnitude
timegravityaccmagnitude
timebodyaccjerkmagnitude
timebodygyromagnitude
timebodygyrojerkmagnitude
freqbodyaccxyz
freqbodyaccjerkxyz
freqbodygyroxyz
freqbodyaccmagnitude
freqbodyaccjerkmagnitude
freqbodygyromagnitude
freqbodygyrojerkmagnitude

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravitymean
timebodyaccmean
timebodyaccjerkmean
timebodygyromean
timebodygyrojerkmean

## Process of Transformation

* Merged the training and the test sets to create one data set
* Extracted only the measurements on the mean and standard deviation for each measurement
* Used descriptive activity names to name the activities in the data set
* Appropriately labeled the data set with descriptive variable names
* From the data set in the previous step, created a second, independent tidy data set with the average of each variable for each activity and each subject
