
# MACHINE LEARNING PRACTICE IN R
# Uncomment ONE section at a time




# 1. Load dataset

# data <- mtcars
# print(head(data))



# 2. Explore dataset

# data <- mtcars
#
# print(summary(data))
# print(dim(data))
# print(colnames(data))



# 3. Check missing values

# data <- mtcars
# print(colSums(is.na(data)))



# 4. Train test split

# set.seed(123)
# data <- mtcars
#
# index <- sample(1:nrow(data), 0.8*nrow(data))
#
# train <- data[index,]
# test <- data[-index,]
#
# print(nrow(train))
# print(nrow(test))



# 5. Linear Regression

# model <- lm(mpg ~ wt + hp, data=mtcars)
#
# print(summary(model))



# 6. Predict values

# model <- lm(mpg ~ wt + hp, data=mtcars)
#
# predictions <- predict(model, mtcars)
#
# print(head(predictions))



# 7. Model evaluation (RMSE)

# model <- lm(mpg ~ wt + hp, data=mtcars)
#
# pred <- predict(model, mtcars)
#
# rmse <- sqrt(mean((mtcars$mpg - pred)^2))
#
# print(rmse)



# 8. Logistic regression

# data <- mtcars
# data$am <- as.factor(data$am)
#
# model <- glm(am ~ wt + hp, data=data, family="binomial")
#
# print(summary(model))



# 9. Decision Tree

# library(rpart)
#
# data <- mtcars
# data$am <- as.factor(data$am)
#
# tree <- rpart(am ~ wt + hp + mpg, data=data)
#
# print(tree)



# 10. Plot decision tree

# library(rpart)
# library(rpart.plot)
#
# data <- mtcars
# data$am <- as.factor(data$am)
#
# tree <- rpart(am ~ wt + hp + mpg, data=data)
#
# rpart.plot(tree)



# 11. Random Forest

# library(randomForest)
#
# data <- mtcars
# data$am <- as.factor(data$am)
#
# rf <- randomForest(am ~ wt + hp + mpg, data=data)
#
# print(rf)



# 12. Feature importance

# library(randomForest)
#
# data <- mtcars
# data$am <- as.factor(data$am)
#
# rf <- randomForest(am ~ wt + hp + mpg, data=data)
#
# importance(rf)



# 13. Confusion matrix

# library(caret)
#
# data <- mtcars
# data$am <- as.factor(data$am)
#
# model <- glm(am ~ wt + hp, data=data, family="binomial")
#
# prob <- predict(model, type="response")
#
# pred <- ifelse(prob>0.5,1,0)
#
# confusionMatrix(as.factor(pred), data$am)



# 14. K-means clustering

# data <- mtcars[,c("mpg","wt","hp")]
#
# clusters <- kmeans(data,3)
#
# print(clusters)



# 15. Cluster visualization

# data <- mtcars[,c("mpg","wt")]
#
# clusters <- kmeans(data,3)
#
# plot(data, col=clusters$cluster, pch=19)
