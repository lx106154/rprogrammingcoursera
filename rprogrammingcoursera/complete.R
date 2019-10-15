complete <- function(directory,id=1:332) {
    filenames<-list.files(directory)
    result<-0
    for (i in id) {
        filedir<-paste(directory,filenames[i],sep="/")
        cleandata<-na.omit(read.csv(filedir))
        resultrow<-cbind(i, nrow(cleandata))
        result<-rbind(result, resultrow)
    }
    colnames(result)<-c("id","nobs")
    result <- as.data.frame(result[-1,])
    result
}