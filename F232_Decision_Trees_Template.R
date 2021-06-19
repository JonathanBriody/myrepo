#  Decision Modelling for Health Economic Evaluation
#  Foundation Course Exercise 2: TEMPLATE FILE
#  Authors: Jack Williams and Nichola Naylor

####**** Parameters ****####  

# First, assign the appropriate values to the parameters below.  

## Probabilities 
p.hiv <-   0.5   # The prevalence of undetected HIV in the antenatal population 
p.trans.control <-  0.26    # Probability of vertical transmission (unknown HIV)
p.trans.int <-  0.07   # Probability of version transmission (known HIV mother, accepts intervention) 
p.int <-    0.95  # Probability of mother accepting intervention 


## Costs
cost.test <- 10     # The cost of the diagnostic blood test 
cost.int <- 800     # Cost of the vertical transmission mitigation interventions


####**** Decision tree ****####

## Testing group ##  

#1 Accepts intervention (HIV+)  - Vertical transmission
# This is the pathway probability, based on the decision tree:
test.path.1 <- p.hiv * p.int * p.trans.int 

# This is the cost associated with this particular decision tree pathway:
test.cost.1 <- 1*cost.test + 1*cost.int

# This is whether a vertical transmission occurs in this pathway 
# i.e. (1 = transmission, 0 = no transmission)
test.cases.1 <- 1

# Now complete the remainder of the pathway probabilities using the above as a guide

#2 Accepts intervention (HIV+) - No vertical transmission
test.path.2 <- p.hiv * p.int * (1-p.trans.int)
test.cost.2 <- 1*cost.test + 1*cost.int
test.cases.2 <- 0

#3 Do not accept intervention (HIV+) - Vertical transmission
test.path.3 <- p.hiv * (1-p.int) * p.trans.control 
test.cost.3 <- 1*cost.test + 0*cost.int 
test.cases.3 <- 1

# Do not accept intervention (HIV+) - No Vertical transmission
test.path.4 <-  p.hiv * (1 - p.int) * (1 - p.trans.control)
test.cost.4 <- 1*cost.test + 0*cost.int
test.cases.4 <- 0

# HIV-
test.path.5 <- 1-p.hiv
test.cost.5 <- 1*cost.test + 0*cost.int
test.cases.5 <- 0

# Testing arm probabilities and results 

# Now create a vector containing all the pathway probabilities. Then do the same for 
# the costs and transmissions (cases). The first one has been done for you
  
test.probs.vec <- c(test.path.1, test.path.2, test.path.3, test.path.4, test.path.5)
test.costs.vec <- c(test.cost.1, test.cost.2, test.cost.3, test.cost.4, test.cost.5)
test.cases.vec <- c(test.cases.1, test.cases.2, test.cases.3, test.cases.4, test.cases.5)

## Next, multiply the appropriate vectors to get each of the pathway costs
testing.costs <- test.probs.vec * test.costs.vec        ## expected value of costs for each pathway (hint: use vector multiplication)
testing.costs

testing.cases <-             ## expected value of cases for each pathways (hint: use vector multiplication)
testing.cases


## For the total costs and cases of the whole intervention arm (i.e. all 5 pathways)
# take the sum of the vectors 
testing.costs.total <-        ## total costs (hint: use sum())
testing.cases.total <-  

# Here we can show and label the results 
testing.results <- (c(costs = testing.costs.total, cases = testing.cases.total))  
testing.results

## No testing group 

# Here we will evaluate the pathway probabilities for the no testing group.

# Use the testing arm above as a guide to complete the same parts for the no testing group

# HIV positive and transmission
notest.path.1 <-      ## pathway probability for no test, HIV positive and transmission
notest.cost.1 <-      ## costs associated with this pathway
notest.cases.1 <-     ## whether vertical transmission accurs or not in this pathway

# HIV positive and no transmission
notest.path.2 <- 
notest.cost.2 <- 
notest.cases.2 <- 

# HIV-
notest.path.3 <- 
notest.cost.3 <-  
notest.cases.3 <- 

# No testing arm probabilities and results 

# Create a vector of each of the probabilities, costs and cases for the pathways
  
notest.probs.vec <- 
notest.cost.vec <- 
notest.cases.vec <- 

# Now calculate the payoffs for each of the decision tree pathways
notesting.costs <- 
notesting.cases <- 

notesting.costs.total <- 
notesting.cases.total <- 

notesting.results <- (c(costs = notesting.costs.total, nocases = notesting.cases.total))  
notesting.results

####**** Analysis: Incremental results ****#### 

# Now derive the appropriate parameters assigned above to estimate the cases avoided, 
#  the incremental costs and the cost per HIV-infected birth avoided

# Reduction in probability of vertical transmission with testing and intervention
cases.avoided <- 

# Incremental cost of testing and intervention
incr.costs <- 

# Cost per HIV-infected birth avoided
incremental.results <-

print(incremental.results)



