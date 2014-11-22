 ytrain<-read.table('d:/UCI/train/y_train.txt')

 subtrain<-read.table('d:/UCI/train/subject_train.txt')

 xtrain<-read.table('d:/UCI/train/X_train.txt')

 ytest<-read.table('d:/UCI/test/y_test.txt')

 subtest<-read.table('d:/UCI/test/subject_test.txt')

 xtest<-read.table('d:/UCI/test/X_test.txt')

 x<-rbind(xtest,xtrain)

 y<-rbind(ytest,ytrain)

 subject<-rbind(subtest,subtrain)

 features<-read.table('d:/UCI/features.txt')

features=features[,2]

i=grep("mean()",features)

j=grep("std()",features)

q<-rbind(as.matrix(i),as.matrix(j))

q=sort(q)

xnew<-x[,q]

feature=features[q]

colnames(xnew)<-feature

label<-read.table('d:/UCI/activity_labels.txt')

library(plyr)

ynew=join(y,label,by='V1')

xnew2<-cbind(ynew,xnew)

xnew2=xnew2[2:length(xnew2)]

colnames(xnew2)[1]='activity_label'

xnew2=cbind(subject,xnew2)

colnames(xnew2)[1]='subject'

xnew2=xnew2[order(xnew2$subject,xnew2$activity_label),]

summary=aggregate(as.matrix(xnew2[,3:length(xnew2)])~ subject + activity_label,xnew2,mean)
