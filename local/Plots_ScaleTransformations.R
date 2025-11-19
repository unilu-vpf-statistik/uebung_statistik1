
pos_lin_function <- function(x, a, b) {
  b * x + a
}

ggplot() +
  xlim(-10,37) +
  stat_function(fun = pos_lin_function, args = list(a = 32, b = 1.8)) +
  labs(x = "Temperatur °C", y = "Temperatur °F") +
  geom_segment(aes(x = 0, y = 13, xend = 0, yend = 32),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "skyblue4") +
  geom_segment(aes(x = 0, y = 32, xend = -10, yend = 32),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "skyblue4") +
  geom_segment(aes(x = 36, y = 13, xend = 36, yend = 1.8*36 + 32),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "red4") +
  geom_segment(aes(x = 36, y = 1.8*36 + 32, xend = -10, yend = 1.8*36 + 32),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "red4") +
  theme_classic()



ggplot() +
  xlim(0,360) +
  stat_function(fun = pos_lin_function, args = list(a = 0, b = 1/60)) +
  labs(x = "Zeit in Sekunden", y = "Zeit in Minuten") +
  geom_segment(aes(x = 60, y = 0, xend = 60, yend = 1),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "skyblue4") +
  geom_segment(aes(x = 60, y = 1, xend = 0, yend = 1),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "skyblue4") +
  geom_segment(aes(x = 240, y = 0, xend = 240, yend = 4),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "red4") +
  geom_segment(aes(x = 240, y = 4, xend = 0, yend = 4),
               arrow = arrow(length = unit(0.5, "cm"), type = "closed"), colour = "red4") +
  theme_classic()
