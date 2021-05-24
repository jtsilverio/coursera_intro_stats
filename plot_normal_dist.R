library(ggplot2)
# PARAMETROS
# mu = Média da população
# sd = Desvio Padrão
# a  = Valor de interesse
mu = 45
sd = 3.2
a  = 40

# CALCULOS
x = seq(mu-3.5*sd, mu+3.5*sd, length.out = 1000)
d = dnorm(x, mean = mu, sd = sd)
p = pnorm(a, mu, sd)
tail = "lower" #lower or upper

# PLOT
ggplot(data.frame(x,d)) +
    geom_line(aes(x, d)) +
    geom_polygon(aes(c(x[x <= a], x[which.min(abs(x[x <= a] - 50))]), c(d[x <= a], 0)), fill = "blue", alpha = 0.5) +
    geom_vline(xintercept = a, linetype = 2) +
    geom_text(aes(x = a, y = max(d)), label = paste("p = ", round(p,2))) +
    theme_bw() +
    ylab("PDF") +
    xlab("")

