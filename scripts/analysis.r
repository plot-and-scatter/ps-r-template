# Replace $-prefixed price with numeric price
data$price <- as.numeric(ps.parsePrice(data$price))

# What are the mean, median, mode prices?
mean(data$price)
median(data$price)
mode(data$price)

# What is the mean price for French wines?
mean(data[data$country=="France",]$price)

# Sort the wines in descending order by price and save to output file
write.table(data[order(-data$price),], file=OUTPUT.FILE.SUMMARY, sep=OUTPUT.FILE.SEPARATOR, row.names=FALSE)

# Build a ggplot histogram of prices of wines from the Americas and save to output file
data %>% filter(country %in% c("Canada", "Chile", "United States")) %>%
ggplot(aes(x=price, width=0.5)) +
  geom_histogram(binwidth=2, fill="#f5bd47", alpha=1.00) +
  theme_classic() +
  scale_y_continuous(breaks=c(0,1,2,3)) +
  scale_x_continuous(breaks=seq(0, 30, 2)) + # seq(0, 30, 2) will give even numbers between 0 and 30
  ggtitle("Histogram of North American wine prices")
ggsave(OUTPUT.FILE.GRAPH)