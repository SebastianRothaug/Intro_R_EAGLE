setwd("C:/Users/User/Desktop/R_Course/Intro_R_EAGLE/Data")

#week3
df <- read.csv("Steigerwald_sample_points_all_data_subset_withNames.csv")

head(df)
summary(df)
View(df)

str(df) # giving structure just as int, num, character

df[,c('S2.1','S2.2')]
df[,4:13]  #all sentinel data
df[1:10,]

#scatterplot
plot(df[,c("L8.ndvi","SRTM")])

plot(df$SRTM > 400)  # $ = True / False abfrage



#week2
X <-  seq(1,100, by=2.5)
X

X[7]

X[length(X)] #length giving you the entries (the volume) of the list at the same time its the last index
X[length(X)-1] #second to last

X[-1] #everything expect the first position

idx <- c(1,2,6)
X[idx] #giving only these defined positions
X[-idx]


X > 20
(X<= 10) | (X>=20)  # will get as True / False cause of the or


X2 <- numeric(length(X))
X2
X2[X<30] <- 1 # X<30 refering to the values smaller than 30 cause of X in it 
              # otherwise for replacing the first 30 position of the list X[1:30] <- 1
X2

#Matrix
m1 <- matrix(c(4,7,3,8,9,2), nrow = 2)
m1

m1[,2] #2 colm



numbers_1 <- rnorm(80,mean=0,sd=1)
numbers_1

mat_1 <- matrix(numbers_1,nrow=20,ncol=4)
#Transform into a Matrix with 20 rows and 4 columns
mat_1

df_1 <- data.frame(mat_1)
df_1

#Data Frame

df0 <- data.frame(A=c(1,2,3),B=c("aB1","aB2","aB3"))
df0
df0["A"]

df0$B[3] #Abfrage mit Bedingung


#week2 slides 104
df_a <- data.frame(plot="location_name_1", measure1=runif(100)*1000,measure2=round(runif(100)*100), value=rnorm(100,2,1) ,ID=rep(LETTERS,100)[1:100])
df_a

df_b <- data.frame(plot="location_name_2", measure1=runif(50)*100,measure2=round(runif(50)*10), value=rnorm(50) ,ID=rep(LETTERS,50)[1:50])
df_b

df_combined <- rbind(df_a, df_b) # row bind ; cbind = column combination
df_combined
summary(df_combined)

df_combined[,c('plot','measure1','measure2')] # [, column query c is list what columns]

df_combined[1:5,c('plot','measure1','measure2')] # [row queryndefinition linr 1 to 5 , column query]

df_combined[,c('plot','measure1','measure2')]

df_combined['measure2' < 5] # ???


