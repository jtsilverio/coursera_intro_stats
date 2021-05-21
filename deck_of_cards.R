cards = c(2:10, "J", "Q", "K", "A")
suits = c("♠", "♥", "♦", "♣")
deck <- paste0(rep(cards, length(suits)),  #card values
               rep(suits, each = length(cards))) #suits
sample(deck, 1)
