Getting and Cleaning Data Project
Author: Ahmed Samouka

Description
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

Source Data
Data + Description can be found here UCI Machine Learning Repository

Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information
For each record in the dataset it is provided:
        
        Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.



The data set that this code book pertains to is located in the tidydata.txt file of this repository.

See the README.md file of this repository for background information on this data set.

The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformations section.

Data
The tidydata.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

Variables
Each row contains, for a given subject and activity, 79 averaged signal measurements.

Identifiers
subject

Subject identifier, integer, ranges from 1 to 30.

activity

Activity identifier, string with 6 possible values:

WALKING: subject was walking
WALKING_UPSTAIRS: subject was walking upstairs
WALKING_DOWNSTAIRS: subject was walking downstairs
SITTING: subject was sitting
STANDING: subject was standing
LAYING: subject was laying
Average of measurements
All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing Gyroscope) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude) were calculated using the Euclidean norm.

The measurements are classified in two domains:

Time-domain signals (variables prefixed by timeDomain), resulting from the capture of accelerometer and gyroscope raw signals.

Frequency-domain signals (variables prefixed by frequencyDomain), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

Time-domain signals
Average time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerMeanX
timeDomainBodyAccelerometerMeanY
timeDomainBodyAccelerometerMeanZ
Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

timeDomainBodyAccelerometerStandardDeviationX
timeDomainBodyAccelerometerStandardDeviationY
timeDomainBodyAccelerometerStandardDeviationZ
Average time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerMeanX
timeDomainGravityAccelerometerMeanY
timeDomainGravityAccelerometerMeanZ
Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ
Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ
Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ
Average time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ
Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ
Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ
Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ
Average and standard deviation of the time-domain magnitude of body acceleration:

timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of gravity acceleration:

timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity:

timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
Frequency-domain signals
Average frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanX
frequencyDomainBodyAccelerometerMeanY
frequencyDomainBodyAccelerometerMeanZ
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerStandardDeviationX
frequencyDomainBodyAccelerometerStandardDeviationY
frequencyDomainBodyAccelerometerStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

frequencyDomainBodyAccelerometerMeanFrequencyX
frequencyDomainBodyAccelerometerMeanFrequencyY
frequencyDomainBodyAccelerometerMeanFrequencyZ
Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanX
frequencyDomainBodyAccelerometerJerkMeanY
frequencyDomainBodyAccelerometerJerkMeanZ
Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkStandardDeviationX
frequencyDomainBodyAccelerometerJerkStandardDeviationY
frequencyDomainBodyAccelerometerJerkStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

frequencyDomainBodyAccelerometerJerkMeanFrequencyX
frequencyDomainBodyAccelerometerJerkMeanFrequencyY
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
Average frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanX
frequencyDomainBodyGyroscopeMeanY
frequencyDomainBodyGyroscopeMeanZ
Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeStandardDeviationX
frequencyDomainBodyGyroscopeStandardDeviationY
frequencyDomainBodyGyroscopeStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

frequencyDomainBodyGyroscopeMeanFrequencyX
frequencyDomainBodyGyroscopeMeanFrequencyY
frequencyDomainBodyGyroscopeMeanFrequencyZ
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

frequencyDomainBodyAccelerometerMagnitudeMean
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

frequencyDomainBodyAccelerometerJerkMagnitudeMean
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

frequencyDomainBodyGyroscopeMagnitudeMean
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

frequencyDomainBodyGyroscopeJerkMagnitudeMean
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
Transformations
The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.