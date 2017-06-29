gdp <- read.csv("GDP.csv", header=TRUE)
education <- read.csv("education.csv",header=TRUE)
mergedtables <- merge(gdp,education, by.x=("CountryCode"))
newdata <- mergedtables[order(mergedtables$millions.of),]
write.csv(mergedtables, file="mergedtables.csv")
write.csv(newdata, file="newdata.csv")
newdata
quantile(as.numeric(newdata$millions.of),probs = seq(0, 1, 0.25),na.rm=T)