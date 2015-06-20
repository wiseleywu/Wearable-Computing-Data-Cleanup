#Tidy Data.txt dataset codebook
This codebook will go through each individual variable and its properties (variable name, full name, data type, and data) found within 'Tidy Data.txt'. Each line represents one row of data (except first row, which is a list of variable names), separated by whitespace. There is a total of 68 variables (column) and 180 observations (row).

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
- Full Name: Body Acceleration time domain signals
- Column Number: 3 to 8
  - tBodyAcc.mean.X (3)
  - tBodyAcc.mean.Y (4)
  - tBodyAcc.mean.Z (5)
  - tBodyAcc.std.X (6)
  - tBodyAcc.std.Y (7)
  - tBodyAcc.std.Z (8)
 - Data Type: Double-Precision Vector
 - Data: Mean or standard deviation of 3-axial Body Acceleration time domain signals in the X, Y, and Z directions. The number was averaged for each activity and each volunteer; normalized and bounded within [-1,1].

