##Finally writing the code for Part 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
    filelist <- list.files(path = directory,
                           pattern = ".csv",
                           full.names = T)
    values <- numeric()
    for(i in id) {
        data <- read.csv(filelist[i])
        values <- c(values, data[[pollutant]])
    }
    mean(values, na.rm = T)
}

#Testrun your function (Part 1)
pollutantmean("/home/rufus/Desktop/specdata/", "sulfate")

pollutantmean("/home/rufus/Desktop/specdata/", "sulfate", 1:10)

pollutantmean("/home/rufus/Desktop/specdata/", "sulfate", 34)

pollutantmean("/home/rufus/Desktop/specdata/", "sulfate", "nitrate")

pollutantmean("/home/rufus/Desktop/specdata/", "nitrate")

#Writing the function for Part 2

#Step 1: Confirm your working directory (using getwd() funciton)
#Step 2: Create a relative directory from your working directory (Using setwd() function)
getwd()
setwd("Week 2")

#Step 3: Create a list of all the files in "specdata"
data <- read.csv("/home/rufus/Desktop/R Programming Exercises/Week 2/specdata/001.csv")
data

#Use complete.cases() function to call out all true or false 
#complete cases
complete.cases(data)

#This code line gives you the number of all "TRUE" complete cases
sum(complete.cases(data))    # 117

#Step 4: Create an object(filelist) that list all files in "specdata"
list.files(path = "/home/rufus/Desktop/R Programming Exercises/Week 2/specdata",
           pattern = ".csv")
filelist <- list.files(path = "/home/rufus/Desktop/R Programming Exercises/Week 2/specdata",
                       pattern = ".csv", full.names = T)
filelist
length(filelist)

#The subsetting function can be used to call out specific files 
# from the "filelist" object
filelist[1]
filelist[2]

#Reading one of the files
read.csv(filelist[1])
complete.cases(read.csv(filelist[1]))
sum(complete.cases(read.csv(filelist[1])))

