# Array and slice example 1

define arr = [1, 2, 3, 4, 5, 6];

sldeploy "Original: " + arr;

define slice1 = arr[1:4];
sldeploy "Slice 1 (1:4): " + slice1;

define slice2 = arr[0:6:2];
sldeploy "Slice 2 (0:6:2): " + slice2;

define slice3 = arr[2:5];
sldeploy "Slice 3 (2:5): " + slice3;
