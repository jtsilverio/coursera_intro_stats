data = as.data.frame(NULL)
for (roll in 1:1000) {
  s = sample(x = 1:6, size = roll, replace = T)
  p = length(s[s == 1])/roll
  data = rbind(data, cbind(roll, p))
  
}
head(data)
plot(x = data$roll, data$p, type = "l", log="x")