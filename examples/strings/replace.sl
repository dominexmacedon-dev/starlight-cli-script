# Replace text

define sentence = "I like cats";

define updated = replace(sentence, "cats", "dogs");

sldeploy "Updated: " + updated;
