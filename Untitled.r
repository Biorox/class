#read the input data
stat1_interactions <- read.csv("/Users/roxane/Desktop/PROGRAMMING/Lesson.r",sep="\t")

#extract the first two and the last column
statsmallnew <- stat1_interactions[,c(1,2,15)]

#extract the interactions with more than 0.5 score
statsmallnewfiltered <- subset(statsmallnew, combined_score >= 0.5)

#write the filtered interactions in to a file
write.table(statsmallnewfiltered, "statsmallnewfiltered.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#print the score distribution graph
png('statsmallnewfiltered.png')
plot(statsmallnewfiltered$combined_score)
dev.off()

message("Script ran successfully, all outputs are in the working director")

#If the above script is named as "interaction-data-process-script.r", run the script in the console using the following command;
#source('~/interaction-data-process-script.r')