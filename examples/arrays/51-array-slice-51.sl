# Array & Slice Demo 51

define arr = [51, 52, 53, 54, 55, 56, 57];

sldeploy "---- Example 51 ----";

sldeploy "Original Array: " + arr;

define firstHalf = arr[0:3];
sldeploy "First Half (0:3): " + firstHalf;

define middle = arr[2:5];
sldeploy "Middle (2:5): " + middle;

define stepSlice = arr[0:7:2];
sldeploy "Step Slice (0:7:2): " + stepSlice;

define lastPart = arr[3:7];
sldeploy "Last Part (3:7): " + lastPart;
