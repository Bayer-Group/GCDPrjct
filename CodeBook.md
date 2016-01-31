Getting and Cleaning Data Course Project CodeBook
==================================================

This document contains a brief description of each variable in tidy datasets and their units of measurement. 

Experiment Summary
------------------
The experiments were carried out with a group of 30 subjects. Each person performed the following six activities

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

These activities were performed while wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity was captureed at a constant rate of 50Hz.

Tidy Dataset 1
---------------
Experimental data were read from source files, labelled/reformatted, and combined according to the steps in run_analysis.R
According to the project goals, variables were selected for Tidy Dataset1 as those which were mean or standard deviations of experimental measurements.

After the first two variables, each following variable name contains several of the following standard parts:

* "time" or "freq" at the beginning of the variable name indicating either time domain signals captured at 50 Hz or frequency domain signals calculated using Fast Fourier Transforms.
* "Body" or "Gravity" indicating either body or gravity acceleration signals calculated using a Butterworth filter with a corner frequency of 0.3 Hz. 
* "Accelerometer" or "Gyroscope" indicating a measurement coming from the accelerometer or gyroscope.
* "Jerk" indicating the jerk, or change in acceleration, derived from the body linear and angular acceleration.
* "Magnitude" indicates the magnitude of the 3 dimensional measurement calculated using the euclidean norm.
* "MeanFreq" indicates a weighted average of the frequency components. 
* "Mean" or "Std" indicating a mean or standard deviation of the measurements
* "Xaxis", "Yaxis", or "Zaxis" indicating whether the measurement is for the X, Y, or Z axis.



Variables in tidy dataset 1
----------------------------
* subjectId: Numercial identification of subjects 1-30.
* Activity: The activity being measured which consisted of either WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* timeBodyAccelerometerMeanXaxis: mean X axis time domain body acceleration in units of m/s^2^.
* timeBodyAccelerometerMeanYaxis: mean Y axis time domain body acceleration in units of m/s^2^.
* timeBodyAccelerometerMeanZaxis: mean Z axis time domain body acceleration in units of m/s^2^.
* timeGravityAccelerometerMeanXaxis: mean X axis time domain gravity acceleration in units of m/s^2^.
* timeGravityAccelerometerMeanYaxis: mean Y axis time domain gravity acceleration in units of m/s^2^.
* timeGravityAccelerometerMeanZaxis: mean Z axis time domain gravity acceleration in units of m/s^2^.
* timeBodyAccelerometerJerkMeanXaxis: mean X axis time domain body jerk in units of m/S^3^.
* timeBodyAccelerometerJerkMeanYaxis: mean Y axis time domain body jerk in units of m/S^3^.
* timeBodyAccelerometerJerkMeanZaxis: mean Z axis time doamin body jerk in units of m/S^3^.
* timeBodyGyroscopeMeanXaxis: mean X axis time domain body velocity in units of m/s. 
* timeBodyGyroscopeMeanYaxis: mean Y axis time domain body velocity in units of m/s. 
* timeBodyGyroscopeMeanZaxis: mean Z axis time domain body velocity in units of m/s. 
* timeBodyGyroscopeJerkMeanXaxis: mean X axis time domain jerk in units of radians/s^3^.
* timeBodyGyroscopeJerkMeanYaxis: mean Y axis time domain jerk in units of radians/s^3^.
* timeBodyGyroscopeJerkMeanZaxis: mean Z axis time domain jerk in units of radians/s^3^.
* timeBodyAccelerometerMagnitudeMean: mean time domain body acceleration magnitude in units of  m/s^2^.
* timeGravityAccelerometerMagnitudeMean: mean time domain gravity acceleration magnitude in units of  m/s^2^.
* timeBodyAccelerometerJerkMagnitudeMean: mean time domaon body jerk magnitude in units of m/s^3^.
* timeBodyGyroscopeMagnitudeMean: mean time domain body angular velocity magnitude in units of radians/s.
* timeBodyGyroscopeJerkMagnitudeMean: mean time domain body jerk magnitude in units of radians/s^3^.
* freqBodyAccelerometerMeanXaxis: mean X axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerMeanYaxis: mean Y axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerMeanZaxis: mean Z axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerMeanFreqXaxis: weighted mean X axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerMeanFreqYaxis: weighted mean Y axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerMeanFreqZaxis: weighted mean Z axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerJerkMeanXaxis: mean X axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkMeanYaxis: mean Y axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkMeanZaxis: mean Z axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkMeanFreqXaxis: weighted mean X axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkMeanFreqYaxis: weighted mean Y axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkMeanFreqZaxis: weighted mean Z axis frequency body jerk in units of m/s^3^.
* freqBodyGyroscopeMeanXaxis: mean X axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeMeanYaxis: mean Y axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeMeanZaxis: mean Z axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeMeanFreqXaxis: weighted mean X axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeMeanFreqYaxis: weighted mean Y axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeMeanFreqZaxis: weighted mean Z axis frequency body angular velocity in units of radians/s.
* freqBodyAccelerometerMagnitudeMean: mean frequency body acceleration magnitude in units of  m/s^2^.
* freqBodyAccelerometerMagnitudeMeanFreq: weighted mean frequency body acceleration magnitude in units of  m/s^2^.
* freqBodyAccelerometerJerkMagnitudeMean: mean frequency body jerk magnitude in units of  m/s^3^.
* freqBodyAccelerometerJerkMagnitudeMeanFreq: weighted mean frequency body jerk magnitude in units of m/s^3^.
* freqBodyGyroscopeMagnitudeMean: mean frequency body angular velocity magnitude in units of  radians/s.
* freqBodyGyroscopeMagnitudeMeanFreq: weighted mean frequency body acceleration magnitude in units of  radians/s.
* freqBodyGyroscopeJerkMagnitudeMean: mean frequency body jerk magnitude in units of  radians/s^3^.
* freqBodyGyroscopeJerkMagnitudeMeanFreq: weighted mean frequency body jerk magnitude in units of radians/s^3^.
* timeBodyAccelerometerStdXaxis: standard deviation of X axis time domain body acceleration in units of m/s^2^.
* timeBodyAccelerometerStdYaxis: standard deviation of Y axis time domain body acceleration in units of m/s^2^.
* timeBodyAccelerometerStdZaxis: standard deviation of Z axis time domain body acceleration in units of m/s^2^.
* timeGravityAccelerometerStdXaxis: standard deviation of X axis time domain gravity acceleration in units of m/s^2^.
* timeGravityAccelerometerStdYaxis: standard deviation of X axis time domain gravity acceleration in units of m/s^2^.
* timeGravityAccelerometerStdZaxis: standard deviation of X axis time domain gravity acceleration in units of m/s^2^.
* timeBodyAccelerometerJerkStdXaxis: standard deviation of X axis time domain body jerk in units of m/s^3^.
* timeBodyAccelerometerJerkStdYaxis: standard deviation of Y axis time domain body jerk in units of m/s^3^.
* timeBodyAccelerometerJerkStdZaxis: standard deviation of Z axis time domain body jerk in units of m/s^3^.
* timeBodyGyroscopeStdXaxis: standard deviation of X axis time domain body angular velocity in units of radians/s.
* timeBodyGyroscopeStdYaxis: standard deviation of Y axis time domain body angular velocity in units of radians/s.
* timeBodyGyroscopeStdZaxis: standard deviation of Z axis time domain body angular velocity in units of radians/s.
* timeBodyGyroscopeJerkStdXaxis: standard deviation of X axis time domain body jerk in units of radians/s^3^.
* timeBodyGyroscopeJerkStdYaxis: standard deviation of Y axis time domain body jerk in units of radians/s^3^.
* timeBodyGyroscopeJerkStdZaxis: standard deviation of Z axis time domain body jerk in units of radians/s^3^.
* timeBodyAccelerometerMagnitudeStd: standard deviation of time domain body acceleration magnitude in units of  m/s^2^.
* timeGravityAccelerometerMagnitudeStd: standard deviation of time domain gravity acceleration magnitude in units of m/s^2^.
* timeBodyAccelerometerJerkMagnitudeStd: standard deviation of time domain body jerk magnitude in units of  m/s^3^.
* timeBodyGyroscopeMagnitudeStd: standard deviation of time domain body angular velocity magnitude in units of  radians/s.
* timeBodyGyroscopeJerkMagnitudeStd: standard deviation of time domain body jerk magnitude in units of radians/s^3^.
* freqBodyAccelerometerStdXaxis: standard deviation of X axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerStdYaxis: standard deviation of Y axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerStdZaxis: standard deviation of Z axis frequency body acceleration in units of m/s^2^.
* freqBodyAccelerometerJerkStdXaxis: standard deviation of X axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkStdYaxis: standard deviation of Y axis frequency body jerk in units of m/s^3^.
* freqBodyAccelerometerJerkStdZaxis: standard deviation of Z axis frequency body jerk in units of m/s^3^.
* freqBodyGyroscopeStdXaxis: standard deviation of X axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeStdYaxis: standard deviation of Y axis frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeStdZaxis: standard deviation of Z axis frequency body angular velocity in units of radians/s.
* freqBodyAccelerometerMagnitudeStd: standard deviation of frequency body acceleration magnitude in units of m/s^2^.
* freqBodyAccelerometerJerkMagnitudeStd: standard deviation of frequency body jerk magnitude in units of m/s^3^.
* freqBodyGyroscopeMagnitudeStd: standard deviation of frequency body angular velocity in units of radians/s.
* freqBodyGyroscopeJerkMagnitudeStd: standard deviation of frequency body jerk in units of radians/s^3^.

Tidy Dataset 2
----------------
Variables in Tidy Dataset 2 are the mean values from tidy dataset 1, designated by appending "_Mean" to the variable name, which were calculated 
after grouping by subjectId and Activity and possess the same units.
