#TidyData.txt dataset codebook
This codebook will go through each individual variable and its properties (variable name, full name, column number, data type, and data description) found within 'TidyData.txt'. Each line represents one row of data (except first row, which is a list of variable names), separated by whitespace. There is a total of 68 variables (column) and 180 observations (row).

###SubjectNumber
- Full Name: Subject Number
- Column Number: 1
- Data Type: Integer Vector
- Data: Number 1 to 30, representing one of the thirty volunteers participated in this experiment

###Activity
- Full Name: Activity
- Column Number: 2
- Data Type: Character Vector
- Data: Text strings describing one of the six activities each volunteer performed while wearing a smartphone (Samsung Galaxy S II) on the waist. The six activities are:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

###tBodyAcc (6 variables)
- Full Name: Body acceleration time domain signals
- Column Number: 3 to 8
  - tBodyAcc.mean.X (3)
  - tBodyAcc.mean.Y (4)
  - tBodyAcc.mean.Z (5)
  - tBodyAcc.std.X (6)
  - tBodyAcc.std.Y (7)
  - tBodyAcc.std.Z (8)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration time domain signals in the X, Y, and Z directions deriving from accelerometer raw signals. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tGravityAcc (6 variables)
- Full Name: Gravity acceleration time domain signals
- Column Number: 9 to 14
  - tGravityAcc.mean.X (9)
  - tGravityAcc.mean.Y (10)
  - tGravityAcc.mean.Z (11)
  - tGravityAcc.std.X (12)
  - tGravityAcc.std.Y (13)
  - tGravityAcc.std.Z (14)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial gravity acceleration time domain signals in the X, Y, and Z directions deriving from accelerometer raw signals. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyAccJerk (6 variables)
- Full Name: Body acceleration time domain jerk signals
- Column Number: 15 to 20
  - tBodyAccJerk.mean.X (15)
  - tBodyAccJerk.mean.Y (16)
  - tBodyAccJerk.mean.Z (17)
  - tBodyAccJerk.std.X (18)
  - tBodyAccJerk.std.Y (19)
  - tBodyAccJerk.std.Z (20)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration time domain jerk signals in the X, Y, and Z directions derived in time. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyGyro (6 variables)
- Full Name: Body gyroscopic time domain signals
- Column Number: 21 to 26
  - tBodyGyro.mean.X (21)
  - tBodyGyro.mean.Y (22)
  - tBodyGyro.mean.Z (23)
  - tBodyGyro.std.X (24)
  - tBodyGyro.std.Y (25)
  - tBodyGyro.std.Z (26)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic time domain signals in the X, Y, and Z directions deriving from gyroscope raw signals. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyGyroJerk (6 variables)
- Full Name: Body gyroscopic time domain jerk signals
- Column Number: 27 to 32
  - tBodyGyroJerk.mean.X (27)
  - tBodyGyroJerk.mean.Y (28)
  - tBodyGyroJerk.mean.Z (29)
  - tBodyGyroJerk.std.X (30)
  - tBodyGyroJerk.std.Y (31)
  - tBodyGyroJerk.std.Z (32)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic time domain jerk signals in the X, Y, and Z directions derived in time. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyAccMag (2 variables)
- Full Name: Body acceleration time domain signals magnitude
- Column Number: 33 and 34
  - tBodyAccMag.mean (33)
  - tBodyAccMag.std (34)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration time domain signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tGravityAccMag (2 variables)
- Full Name: Gravity acceleration time domain signals magnitude
- Column Number: 35 and 36
  - tGravityAccMag.mean (35)
  - tGravityAccMag.std (36)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial gravity acceleration time domain signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyAccJerkMag (2 variables)
- Full Name: Body acceleration time domain jerk signals magnitude
- Column Number: 37 and 38
  - tBodyAccJerkMag.mean (37)
  - tBodyAccJerkMag.std (38)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration time domain jerk signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyGyroMag (2 variables)
- Full Name: Body gyroscopic time domain signals magnitude
- Column Number: 39 and 40
  - tBodyGyroMag.mean (39)
  - tBodyGyroMag.std (40)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic time domain signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###tBodyGyroJerkMag (2 variables)
- Full Name: Body gyroscopic time domain jerk signals magnitude
- Column Number: 41 and 42
  - tBodyGyroJerkMag.mean (41)
  - tBodyGyroJerkMag.std (42)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic time domain jerk signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyAcc (6 variables)
- Full Name: Body acceleration frequency domain signals
- Column Number: 43 to 48
  - fBodyAcc.mean.X (43)
  - fBodyAcc.mean.Y (44)
  - fBodyAcc.mean.Z (45)
  - fBodyAcc.std.X (46)
  - fBodyAcc.std.Y (47)
  - fBodyAcc.std.Z (48)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration frequency domain signals in the X, Y, and Z directions deriving from accelerometer raw signals and applied with a Fast Fourier Transform (FFT). The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyAccJerk (6 variables)
- Full Name: Body acceleration frequency domain jerk signals
- Column Number: 49 to 54
  - fBodyAccJerk.mean.X (49)
  - fBodyAccJerk.mean.Y (50)
  - fBodyAccJerk.mean.Z (51)
  - fBodyAccJerk.std.X (52)
  - fBodyAccJerk.std.Y (53)
  - fBodyAccJerk.std.Z (54)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration frequency domain jerk signals in the X, Y, and Z directions derived in time and applied with a Fast Fourier Transform (FFT). The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyGyro (6 variables)
- Full Name: Body gyroscopic frequency domain signals
- Column Number: 55 to 60
  - fBodyGyro.mean.X (55)
  - fBodyGyro.mean.Y (56)
  - fBodyGyro.mean.Z (57)
  - fBodyGyro.std.X (58)
  - fBodyGyro.std.Y (59)
  - fBodyGyro.std.Z (60)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic frequency domain signals in the X, Y, and Z directions deriving from gyroscope raw signals and applied with a Fast Fourier Transform (FFT). The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyAccMag (2 variables)
- Full Name: Body acceleration frequency domain signals magnitude
- Column Number: 61 and 62
  - fBodyAccMag.mean (61)
  - fBodyAccMag.std (62)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration frequency domain signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyAccJerkMag (2 variables)
- Full Name: Body acceleration frequency domain jerk signals magnitude
- Column Number: 63 and 64
  - fBodyAccJerkMag.mean (63)
  - fBodyAccJerkMag.std (64)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body acceleration frequency domain jerk signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyGyroMag (2 variables)
- Full Name: Body gyroscopic frequency domain signals magnitude
- Column Number: 65 and 66
  - fBodyGyroMag.mean (65)
  - fBodyGyroMag.std (66)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic frequency domain signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

###fBodyGyroJerkMag (2 variables)
- Full Name: Body gyroscopic frequency domain jerk signals magnitude
- Column Number: 67 and 68
  - fBodyGyroJerkMag.mean (67)
  - fBodyGyroJerkMag.std (68)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial body gyroscopic frequency domain jerk signals in magnitude calculated using Euclidean norm. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].
