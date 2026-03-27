# Demonstrating dynamic typing

define variable = 100;

sldeploy("Number value:");
sldeploy variable;

variable = "Now I am a string";

sldeploy("String value:");
sldeploy variable;

variable = true;

sldeploy("Boolean value:");
sldeploy variable;
