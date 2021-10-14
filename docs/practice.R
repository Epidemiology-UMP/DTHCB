
# intro about R -----------------------------------------------------------

## vectors

v <- c(3, 1, 4, 1, 5, 9)

sum(v) # 23
max(v) # 9
min(v) # 1
length(v) # 6

## math

15 + 5
15 * 5
15/5

prod(3:5) # 3 * 4 * 5 = 60
factorial(5) # 5! = 120
choose(5, 3) # choose 3 from 5 subjects = 10


# birthday problem --------------------------------------------------------

# calculate the probability of at least one birthday match in a group of 23 people

k <- 23
1 - prod((365 - k + 1):365)/365^k


# conditional probability -------------------------------------------------

# simulate n families, each with two children
n <- 10^5
child1 <- sample(c("girl", "boy"), n, replace = TRUE) 
child2 <- sample(c("girl", "boy"), n, replace = TRUE) 
?sample

# Mr. Jones has two children. The older child is a girl. What is the probability that both children are girls?
n.b <- sum(child1 == "girl")
n.b
n.ab <- sum(child1 == "girl" & child2 == "girl")
n.ab
n.ab/n.b

# Mr. Smith has two children. At least one of them is a girl. What is the probability that both children are girls?
n.b <- sum(child1 == "girl" | child2 == "girl") 
n.b
n.ab <- sum(child1 == "girl" & child2 == "girl") 
n.ab
n.ab/n.b


# discrete random variables -----------------------------------------------

## binomial distribution
?dbinom ## PMF
dbinom(x = 3, size = 5, prob = 0.2) # P(X = 3), X ~ Bin(5, 0.2)

?pbinom ## CDF
pbinom(q = 3, size = 5, prob = 0.2) # P(X <= 3), X ~ Bin(5, 0.2)

# Exercise: calculate PMF & CDF of X ~Bin(10, 0.4)


# continuous random variables ---------------------------------------------

# normal distribution
?dnorm ## PDF
dnorm(x = 1, mean = 0, sd = 1) # f(X = x), X ~ N(0, 1)

?pnorm ## CDF
pnorm(q = 1, mean = 0, sd = 1) # P(X <= 1), X ~ N(0, 1)

curve(dnorm, from=-3, to=3, n=1000) ## PDF of N(0, 1) from -3 to 3

# Exercise: 
## Calculate P(1 < X <= 10), X ~ N(3, 5)


