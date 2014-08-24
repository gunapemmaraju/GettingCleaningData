#Step1: I am merging the Xs and Ys respectively, But I will not be colBinding X and Y in this step.
# I will keep them separate for now, and will ColBind them as needed.

X1<-rbind(read.table("./UCI HAR Dataset/test/X_test.txt"),read.table("./UCI HAR Dataset/train/X_train.txt"))
Y1<-rbind(read.table("./UCI HAR Dataset/test/Y_test.txt"),read.table("./UCI HAR Dataset/train/Y_train.txt"))
sub1<-rbind(read.table("./UCI HAR Dataset/test/subject_test.txt"),read.table("./UCI HAR Dataset/train/subject_train.txt"))
colnames(sub1)<-"Subject"
    
#Step2 - Get only those variables which are COMPUTED means and Standard deviations. I am assuming that any variable with ()
# are the ones that are computed.
feat<-read.table("UCI HAR Dataset//features.txt")
reqdVars<-(grepl("mean()",feat[,2],fixed = TRUE) | grepl("std()",feat[,2],fixed = TRUE))
colInds<-which(reqdVars)
X2<-X1[,colInds]


#Step3: I am still keeping the X's and Y's separately. I will combine them at the right stage.
actLabels<-read.table("./UCI HAR Dataset//activity_labels.txt")
Y3<-merge(Y1,actLabels,by.x=1,by.y=1,all.x = TRUE)
Y3[,1]<-NULL
colnames(Y3)<-"ActivityName"

#Step4: Set the column names appropriately. 
X4<-X2
colnames(X4)<-feat[colInds,2]

#Step5. Now I will bind X and Y, as well as the subject. 
#POst that, first the Value columns are extracted. And then using split apply combine, the required tidying is achieved. 
# The finally the column names are appropriately set. And the the tidy Data set is created.
df<-cbind(sub1,Y3,X4)
vals<-df[,3:ncol(df)]
groups<-split(vals,paste(df$Subject,df$ActivityName, sep="+"))
res1<-sapply(groups,colMeans)
row.names(res1)<-paste("Average",row.names(res1),sep="")
res2<-data.frame(t(res1))
subAct<-rownames(res2)
Subject <- as.integer(sapply(strsplit(subAct, "+", fixed=T), "[[", 1))
Activity <- as.character(sapply(strsplit(subAct, "+",fixed=T), "[[", 2))
result<-cbind(Subject,Activity,res2)
write.table(result,file = "tidy.txt",row.names=FALSE, quote = FALSE)
#DONE

