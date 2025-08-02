#To predict weather person likes ice-cream based on the temperature outside

icecream_data<-data.frame( 
  Temperature = c(10,15,20,25,30),
  LikesIcecream = c(0,0,1,1,1))
logit_model<-glm(LikesIcecream~Temperature,data = icecream_data,family = binomial)
summary(logit_model)

predicted_probs<-predict(logit_model, type="response")
print(predicted_probs)
predicted_class<-ifelse(predicted_probs> 0.5,1,0) 
print(predicted_class)

plot(icecream_data$Temperature, icecream_data$LikesIcecream,
     xlab= "Temperature(°C)", ylab="LikesIcecream", 
     main= "Logistic Regression: icecream preference vs Temperature", 
     pch=16, col= "blue") 
temp_seq<- seq(min (icecream_data$Temperature), max(icecream_data$Temperature), 
               length.out=100) 
predicted_curve<-predict(logit_model, newdata = 
                           data.frame (Temperature= temp_seq), 
                         type= "response")
lines(temp_seq, predicted_curve, col="red", lwd=2 )
