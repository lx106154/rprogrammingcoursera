corr <- function (directory, threshold = 0) {
    filenames<-list.files(directory)
    crvalue <- 0
    obslist<-complete(directory, 1:332)
    for (j in 1:332) {
        filedir<-paste(directory,filenames[j],sep="/")
        cleandata<-na.omit(read.csv(filedir))
        crcheck <- cor(cleandata$sulfate, cleandata$nitrate)
        crvalue[j] <- if(obslist[j,2] > threshold) crcheck else NA
    }
    crvalue <- na.omit(crvalue)
    crvalue
}