top_country <- netflix %>%
  count(country, sort = TRUE) %>%
  top_n(10)

g4 <- ggplot(top_country, aes(x = reorder(country, n), y = n)) +
  geom_bar(stat = "identity", fill = "green") +
  coord_flip() +
  labs(title = "Top Countries")

g4   ggsave("graph4.png", plot = g4)