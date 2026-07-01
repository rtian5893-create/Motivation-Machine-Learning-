# question number 
library(readxl)
library(tidyverse)

Q_Matrix <- matrix(0, nrow = 6, ncol = 6) #Create a matrix that is 6x6 with 0s

R_Matrix <- read_excel("~/R File/R Matrix.xlsx") #initialize the R matrix as weight matrix 

R_Matrix <- R_Matrix[,-1] #delete the first row since we don't needs it
R_Matrix <- apply(R_Matrix, 2, as.numeric) # convert all number as numeric 

Gmamma <- 0.8

N = 100000 # we will first set the episode numbers 

 for (i in 1:N) { # set the episode parameter
   
 
randomstate <- sample(1:(nrow(Q_Matrix)), 1) # we will initiate a random state as beginning state.
  
randomstate
  
 while(1){ # continue executing the code within the loop indefinitely
  
possiable_action <-as.numeric(which(R_Matrix[randomstate,] >= 0)) # we will extract the possible action base on the random state, in R matrix random action should be consider as the column value that is larger and equal to 0

possiable_action    

if(length(possiable_action) == 1 ) { # implement an method to encode all possible action values in to a vector  
  
  next_state <- possiable_action 
  } else { # if the vector is more than one number 
  
  next_state <- sample(possiable_action, 1) # randomized the action if there are more than 1 actions 
  
}

next_state

next_possiable_action <- which(R_Matrix[next_state,] > -1) # set up the possible actions base on the the next state. 

  
Q_Matrix[randomstate, next_state] = R_Matrix[randomstate, next_state] + 0.8 * max(Q_Matrix[next_state,next_possiable_action]) # implement the equation. 

break
}
 }

Q_Matrix
normalized_Q_matrix <- Q_Matrix/5 # normalizing the matrix by dividing it by 5 as common denominator 
print(normalized_Q_matrix, digits = 2)

