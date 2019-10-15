complete <- function(directory,id=1:332) {
    filenames<-list.files(directory)
    result<-NA
    for (i in id) {
        filedir<-paste(directory,filenames[i],sep="/")
        cleandata<-na.omit(read.csv(filedir))
        resultrow<-cbind(cleandata$ID[1], nrow(cleandata))
        result<-rbind(result, resultrow)
    }
    result<-na.omit(result)
    colnames(result)<-c("id","nobs")
    print(result)
}