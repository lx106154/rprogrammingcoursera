pollutantmean <- function(directory, pollutant, id = 1:332) {
    filenames<-list.files(directory)
    data<-NA
    for (i in id) {
        filedir<-paste(directory,filenames[i],sep="/")
        data <- rbind(data, read.csv(filedir))
        }
    meandata<-mean(data[[pollutant]],na.rm=TRUE)
    meandata
    }