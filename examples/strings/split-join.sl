# Split and join strings

define text = "apple,banana,cherry";

define arr = split(text, ",");
sldeploy "Array: " + arr;

define joined = join(arr, " - ");
sldeploy "Joined: " + joined;
