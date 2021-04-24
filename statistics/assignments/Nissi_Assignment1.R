########Assignment-1#################

#########1.What is the basic difference and similarity between a vector and a matrix?####
print("The basic difference is:Vector is 1 Dimensional and Matrix is 2 Dimensional 
      Similarity is:Vectors and Matrix is used for single data type")

############2.What is the basic difference and similarity between a data frame and a matrix?########
print("The basic difference is:Dataframe can be of different type but matrix is of single type.
      Similarity is:Both matrix and Data frame are Multi Dimensional")


######3.Create a vector using (15, TRUE, "World"). What happened to your result?####
vector1 <- c(15,TRUE,"WORLD")
vector1
class(vector1)
print("The class type of all the elements in the given vector became a character vector")


########4.John's scores in the final semester for the three subjects are 95, 91, and 88. The subjects are Statistics, Linear Algebra, and Calculus. Using these create a vector and give names to all elements of the vector based on their subjects.####
johns_score <-c(95,91,88)
johns_score
subjects <-c("Statistics","Linear Algebra","Calculus")
subjects
names(johns_score) <- subjects
johns_score



########5.Please check the types (character or numeric) of the vector you created.####
class(johns_score)  ###numeric


##########6.You have three students in your class (choose any name you want). You must create a matrix using their score in the above mentioned subjects (question 4) Student 1 (95, 91, and 88), Student 2(96, 94, and 97), Student 3(88, 98, and 85). Create a matrix and label column and row names.#######
Student_1 <- c(95,91,88)
Student_1
Student_2 <- c(96,94,97)
Student_2
Student_3 <- c(88,98,85)
Student_3
Student_scores <- c(Student_1,Student_2,Student_3)
Student_scores
Student_Info <-matrix(Student_scores,nrow=3,ncol=3,byrow = TRUE, dimnames=
                        list(c("Student_1","Student_2","Student_3"),c("Statistics","Linear Algebra","Calculus")))
Student_Info

#############7.Convert the created matrix into a data frame.####
Student_Dataframe <- data.frame(Student_Info)
Student_Dataframe
class(Student_Dataframe)

###############8.Create three vectors using five countries (your choice) from the following website. The first vector should be country names, the second vector should be the total number of cases, and the third vector should contain the total number of deaths. Create a data frame using these vectors.  ################

country_names <- c("USA","India","Brazil","France","Rusia")
country_names
total_cases <- c(32651804,16257309,14122795,5408606,4736121)
total_cases
total_deaths <- c(583987,186928,381687,102164,107103)
total_deaths

covid_record <- data.frame(country_names,total_cases,total_deaths)
covid_record

#######9.Please read the mtcars data set from R. It is an built-in data set. Please check the structure of the data set. If required, please convert the data into their appropriate data types (character, logical, factor, etc). Save your results as a new data frame using a new name. ###
mtcars
str(mtcars)  ##structure of dataset
mtcars$cyl <- factor(mtcars$cyl)  ###converting "cyl" column to factor
str(mtcars)
mtcars[,8:11]<-lapply(mtcars[,8:11],as.factor)
car_data <- mtcars ###Renaming mtcars to car_data
str(car_data)   #####Structure of car_data