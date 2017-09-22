## Practice Question fro Lecture 09 - Analyzing Proportions
## Created by Amanda Zellmer
## Date Created: September 22, 2017

#The AVPR1a gene, nicknamed the altruism gene, appears to influence the willingness of individuals to work together. Imagine the frequency of one variant of the AVPR1a gene is in the human population at a proportion of 0.75. You’re studying chimpanzees, another social primate, and want to know if the proportion of this variant of the AVPR1a gene in their population is different. You sample 20 individuals and find that 14 have the variant.

#Conduct a binomial test. What do you conclude?

#Calculate probability of getting exactly 14/20
Pr.14 <- choose(20,14)*(0.75^14)*((1-0.75)^(20-14))
print(Pr.14)

#Calculate probabilities of all other more extreme values
Pr.13 <- choose(20,13)*(0.75^13)*((1-0.75)^(20-13))
Pr.12 <- choose(20,12)*(0.75^12)*((1-0.75)^(20-12))
Pr.11 <- choose(20,11)*(0.75^11)*((1-0.75)^(20-11))
Pr.10 <- choose(20,10)*(0.75^10)*((1-0.75)^(20-10))
Pr.9 <- choose(20,9)*(0.75^9)*((1-0.75)^(20-9))
Pr.8 <- choose(20,8)*(0.75^8)*((1-0.75)^(20-8))
Pr.7 <- choose(20,7)*(0.75^7)*((1-0.75)^(20-7))
Pr.6 <- choose(20,6)*(0.75^6)*((1-0.75)^(20-6))
Pr.5 <- choose(20,5)*(0.75^5)*((1-0.75)^(20-5))
Pr.4 <- choose(20,4)*(0.75^4)*((1-0.75)^(20-4))
Pr.3 <- choose(20,3)*(0.75^3)*((1-0.75)^(20-3))
Pr.2 <- choose(20,2)*(0.75^2)*((1-0.75)^(20-2))
Pr.1 <- choose(20,1)*(0.75^1)*((1-0.75)^(20-1))
Pr.0 <- choose(20,0)*(0.75^0)*((1-0.75)^(20-0))

Total.Pr <- 2*(Pr.1+Pr.2+Pr.3+Pr.4+Pr.5+Pr.6+Pr.7+Pr.8+Pr.9+Pr.10+Pr.11+Pr.12+Pr.13+Pr.14)
print(Total.Pr)
