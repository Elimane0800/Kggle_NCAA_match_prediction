memory.limit()
memory.limit(size = 16000)
#import of the data set

library(readxl)
train <- read_excel("C:/Users/Admin/Desktop/Kaggle competition/March ML Mania  _ Ncaa matchs predictions/data manipulated/train.xlsx")
team_statistics <- read_excel("C:/Users/Admin/Desktop/Kaggle competition/March ML Mania  _ Ncaa matchs predictions/data manipulated/team_statistics.xlsx")
View(train)
View(team_statistics)
attach(train)
attach(team_statistics)

any(is.na(train))

library(dplyr)
train <- select(train, -DSCORE)


#échantillonnage 
length(train)
echantillon <- train %>% slice_sample(n = nrow(train) * 0.1)
View(echantillon)

#modèle

logit <- glm(formula = ISSUE ~ . , data = echantillon , family = binomial(logit) )

logit$aic

probit <- glm(formula = ISSUE ~ . , data = train , family = binomial(probit) )

probit$aic

