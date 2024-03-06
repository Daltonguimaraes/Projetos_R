if(!require(gganimate)){install.packages("gganimate"); require(gganimate)}
install.packages("ggplot2")
install.packages("gapminder")

library(ggplot2)
library(gapminder)
library (gganimate)


anim <- ggplot(gapminder,aes(x = gdpPercap, y=lifeExp, size = pop, colour = continent)) +
  geom_point(show.legend = TRUE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "PIB per capita", y = "Expectativa de vida")+ 
  geom_jitter(alpha = 1/3, size = 3)+
  transition_time(year) +
  labs(title = "Ano: {frame_time}") +
  view_follow(fixed_y = TRUE)
animate(anim, renderer = ffmpeg_renderer())
anim_save("animgv.gif", anim)
