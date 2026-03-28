# Array and slice example 20

define arr = [20, 21, 22, 23, 24, 25];

sldeploy "Original: " + arr;

define slice1 = arr[1:4];
sldeploy "Slice 1 (1:4): " + slice1;

define slice2 = arr[0:6:2];
sldeploy "Slice 2 (0:6:2): " + slice2;

define slice3 = arr[2:5];
sldeploy "Slice 3 (2:5): " + slice3;
