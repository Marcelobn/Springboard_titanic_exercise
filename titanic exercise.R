# titanic is avaliable in your workspace
titanic <- read.csv("titanic.csv")
titanic <- titanic[-which(is.na(titanic$survived)),]

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(x= factor(pclass), fill = factor(sex)) ) +
  geom_bar(position = "dodge")


# Use ggplot() for the second instruction
ggplot(titanic, aes(x= factor(pclass), fill = factor(sex)) ) +
  geom_bar(position = "dodge")+ facet_grid(".~survived")


# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(x= factor(pclass),y = age, col = factor(sex)) ) +
  geom_jitter(position = posn.j, size = 3, alpha = 0.5)+ facet_grid(".~survived")


