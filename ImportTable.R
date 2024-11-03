setwd("C:/Users/User/Desktop/R_Course/Intro_R_EAGLE/Data")
#set working directory to show the computer where to grab and store the data

list.files() #listen up the files in the working directorty

my.df <- read.csv("TestTable.csv",
                  header = TRUE,
                  sep = ";")
#read for importing Table from your set working directory

head(my.df)

summary(my.df)

plot(my.df)

View(my.df)

write.table(my.df, file = "my_data_frame.txt")


c(NA, "Source\tTrain\tVal\tTest", "Latex\t187199\t7265\t5719", "Word\t73383\t2735\t2281", "Total\t260582\t10000\t8000")
c("Name\" \"Location\" \"Number", "\"1\" \"Sebastian\" \"Germany\" 1", "\"2\" \"David\" \"France\" 44", "\"3\" \"Lutz\" \"Germany\" 2", "\"4\" \"Anna\" \"Italy\" 6", "\"5\" \"Jannis\" \"USA\" 7", "\"6\" \"Christian\" \"Denmark\" 3", "\"7\" \"Charl\" \"Africa\" 9")
# datapasta Vector Ctrl + Shift + V

data.frame(
  stringsAsFactors = FALSE,
            Source = c("Latex", "Word", "Total"),
             Train = c(187199L, 73383L, 260582L),
               Val = c(7265L, 2735L, 10000L),
              Test = c(5719L, 2281L, 8000L)
)
# datapasta Dataframe Ctrl + Shift + F

data.table::data.table(
      Source = c("Latex", "Word", "Total"),
       Train = c(187199L, 73383L, 260582L),
         Val = c(7265L, 2735L, 10000L),
        Test = c(5719L, 2281L, 8000L)
)
# datapasta Table Ctrl + Shift + T