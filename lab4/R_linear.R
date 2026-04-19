data(mtcars)

X <- as.matrix(mtcars[, -1])
y <- mtcars$mpg

set.seed(42)

idx <- sample(1:nrow(mtcars), 0.7 * nrow(mtcars))

train <- mtcars[idx, ]
test <- mtcars[-idx, ]

# Budowa modelu
model <- lm(mpg ~ ., data = train)

# Predykcja
y_pred <- predict(model, newdata = test)

# Podsumowanie modelu
summary(model)

# Współczynniki
coef(model)

y_pred <- predict(model, newdata = test)

# Wartości rzeczywiste
y_true <- test$mpg

# MAE (Mean Absolute Error)
mae <- mean(abs(y_true - y_pred))

# RMSE (Root Mean Squared Error)
rmse <- sqrt(mean((y_true - y_pred)^2))

mae
rmse