DONNEE=read.table("C:/Users/farid/Desktop/Cours M2 semestre 1/SVM/creditcard.csv",sep=";" ,header=T) 
saveRDS(DONNEE,"DONNEE.rds")

#input

N=10000
V=ceiling(0.3*N)  

#les input de la performance 



OBS=1:nrow(DONNEE)   
Time=scale(as.numeric(DONNEE$Time),center=T,scale=T) 
DONNEE$Time=Time 
data_base=data.frame(OBS,DONNEE)


#mes donnees avec tirage alealtoire de N observation pour lechantillon test
train=sample(1:nrow(data_base),N)  

#pour lechantillon de validation
valid=sample(1:nrow(data_base),V) 

# les 2 echantillons
test=data_base[valid,-1]
data=data_base[train,-1] 
y=test$Class 
