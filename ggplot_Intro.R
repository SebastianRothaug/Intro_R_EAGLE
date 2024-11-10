install.packages("ggplot2")

library(ggplot2)

x11()

x <- data.frame(x=1,y=1,label="ggplot2 introduction \n@ EAGLE")

ggplot(data=x, aes(x=x,y=y)) + geom_text(aes(label=label), size=15)


x1 <-  rnorm(1000,0,1)
x2 <-  rnorm(1000,5,10)
x3 <-  rep(c("catA","catB","catB","catC","catC","catC"),200)[1:1000]
x4 <-  factor(rep(c("yes","no"),500))

df <- data.frame(a=x1, b=x2, c=x3, d=x4)

View(df)

ggplot(df, aes(a,b))+ geom_point()

ggplot(df, aes(a,b, color=c))+ geom_point(alpha=.5) #colour definition just for points

ggplot(df, aes(a,b, color=c))+ geom_point(alpha=.5) + labs(title = "first plot", x = "x axis \n and a new line")

ggplot(df, aes(a,b, color=c))+ geom_point(alpha=.5) + labs(title = "first plot", x = "x axis \n and a new line") + theme_linedraw()


ggplot(df, aes(a))+geom_histogram(color="white")+theme_dark() #themes




ggplot(df, aes(c,color=c)) + geom_point(stat ="count",size=4)

ggplot(df) + geom_bar(aes(c)) + coord_flip()

ggplot(df, aes(d, fill=c)) + geom_bar(position="dodge")+scale_fill_grey()

ggplot(df, aes(d,a)) + geom_boxplot() + geom_jitter() # jitter ading points into the boxplot


ggplot(df, aes(d,a)) + geom_boxplot() + geom_jitter(alpha=.5, width=.3, color="blue")

#box plot in front and translution
ggplot(df, aes(d,a)) + geom_jitter(alpha=.5, width=.3, color="blue") + geom_boxplot(alpha=.5)

ggplot(df, aes(c)) + geom_bar(color="red") + facet_grid(d ~ .)

ggplot(df, aes(a,b))+geom_point(size=1)+geom_density2d()

ggplot(df, aes(a,b))+ geom_hex(bins=30)

#theme with theme_set(theme_bw())
a <- ggplot() + geom_point(data=df, aes(a,b,colour=c))
a + theme_light()
a + theme_linedraw()

#not finished slide week3 page 116
ggplot() + geom_point(data=df, aes(a,b, colour = c)) + 
  facet_grid(c~d) + ggtitle("my chart") +
  theme(plot.title=element_text(angle=0, size=22, colour="hotpink"))+
  scale_colour_discrete(name="type")
