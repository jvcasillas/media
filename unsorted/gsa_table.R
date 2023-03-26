
studies <- tribble(
  ~'area',          ~'study',                  ~'rep',  ~'no_rep', 
  "Economics",       "Camerer et al. (2016)",   100-39,   39, 
  "Social sciences", "Camerer et al. (2018)",   100-43,   43, 
  "Cancer research", "Errington et al. (2021)", 100-46,   46, 
  ) |>
  mutate(diff = rep - no_rep) 

studies |>
  pivot_longer(
    cols = c("rep", "no_rep"), 
    names_to = "outcome", 
    values_to = "perc"
    ) %>% 
  ggplot() + 
  aes(x = perc, y = study) + 
  geom_linerange(
    data = studies, linewidth = 8, color = "grey40", 
    aes(xmin = no_rep, xmax = rep, y = study, x = no_rep)
    ) + 
  geom_point(aes(fill = outcome), pch = 21, size = 8) + 
  geom_text(aes(label = perc, group = study), color = "white") + 
  #geom_text()
  scale_fill_viridis_d(name = NULL, begin = 0.2, end = 0.8, 
    labels = c("Not replicated", "Replicated")
    ) + 
  #coord_cartesian(xlim = c(0, 100)) + 
  scale_x_continuous(labels = scales::label_percent(scale = 1)) + 
  labs(x = NULL, y = NULL) + 
  theme_minimal() + 
  theme(
    legend.position = "top", 
    legend.direction = "horizontal", 
    axis.title.y = element_text(size = rel(.9), hjust = 0.95),
    axis.title.x = element_text(size = rel(.9), hjust = 0.95),
    panel.grid.major = element_line(colour = 'grey90', linewidth = 0),
    panel.grid.minor = element_line(colour = 'grey90', linewidth = 0)
  )








politics_long <- tribble(
  ~'item', ~'party', ~'val', 
  "spir", "d", 8, 
  "spir", "r", 22, 
  "free", "d", 6, 
  "free", "r", 12, 
  "hobb", "d", 13, 
  "hobb", "r", 7, 
  "phys", "d", 13, 
  "phys", "r", 9, 
  "cov",  "d", 8, 
  "cov",  "r", 5, 
  "pets", "d", 5, 
  "pets", "r", 2, 
  "natr", "d", 5, 
  "natr", "r", 3
) %>% 
  mutate(
    item = case_when(
      item == "spir" ~ "Spirituality, faith, and religion", 
      item == "free" ~ "Freedom and independence", 
      item == "hobb" ~ "Hobbies and recreation", 
      item == "phys" ~ "Physical and mental health", 
      item == "cov"  ~ "COVID-19", 
      item == "pets" ~ "Pets", 
      item == "natr" ~ "Nature and the outdoors"
    ), 
    party = case_when(
      party == "d" ~ "Dem/\nLean Dem", 
      TRUE ~ "Rep/\nLean Rep"
    ), 
    party = forcats::fct_relevel(party, "Dem/\nLean Dem")
  ) %>% 
  group_by(item) %>% 
  mutate(lag_diff = abs(val - lag(val, default = 0)), 
         item = forcats::fct_reorder2(item, party, lag_diff)) %>% 
  ungroup()

politics_wide <- politics_long %>% 
  select(-lag_diff) %>% 
  pivot_wider(names_from = "party", values_from = "val") %>% 
  mutate(
    diff = `Rep/\nLean Rep` - `Dem/\nLean Dem`, 
    party = if_else(diff > 0, "r", "d"), 
    x1 = if_else(diff > 0, .$`Dem/\nLean Dem` - 1.5, .$`Dem/\nLean Dem` + 1.5), 
    x2 = if_else(diff > 0, .$`Rep/\nLean Rep` + 1.5, .$`Rep/\nLean Rep` - 1.5), 
    diff_lab = case_when(
      diff > 0 ~ glue("+{diff}R"), 
      diff < 0 ~ glue("+{abs(diff)}D")
    ), 
    d_lab = glue("{`Dem/\nLean Dem`}%"), 
    r_lab = glue("{`Rep/\nLean Rep`}%"), 
    party = forcats::fct_relevel(party, "d", "r"), 
    item = forcats::fct_reorder2(item, party, abs(diff))
  )

tit    <- "Republicans and Democrats in the U.S. differ over some factors that make life meaningful"
subtit <- "% who mention each of the following when describing what gives them meaning in life"
cap    <- "Note: Only statistically significant differences shown. Open-ended question.\nFor more information, see 'What Makes Life Meaningful? Views From 17 Advanced Economies'\nAppendix C.
Source: Spring 2021 Global Attitudes Survey. Q36."

politics_long %>% 
  ggplot() + 
  aes(x = val, y = item) + 
  geom_linerange(data = politics_wide, linewidth = 3, color = "grey80", 
    aes(xmin = `Dem/\nLean Dem`, xmax = `Rep/\nLean Rep`, x = NULL, y = item)) + 
  geom_point(aes(fill = party), color = "white", pch = 21, size = 3) + 
  geom_text(color = "#0015BC",
    data = politics_wide, 
    aes(x = x1, label = d_lab)
    ) + 
  geom_text(color = "#E9141D", 
    data = politics_wide, 
    aes(x = x2, label = r_lab)
  ) + 
  geom_rect(aes(xmin = 26, xmax = 29, ymin = 0, ymax = Inf), fill = "#efefe3") + 
  geom_text(data = politics_wide, show.legend = F, hjust = 1, 
    aes(y = item, x = 28.5, label = diff_lab, color = party)) + 
  scale_x_continuous(
    breaks = c(0, 25), 
    labels = scales::label_percent(scale = 1)
    ) + 
  scale_y_discrete(limits = rev) + 
  coord_cartesian(xlim = c(0, 31)) + 
  labs(y = NULL, x = NULL, title = tit, subtitle = subtit, caption = cap) + 
  scale_fill_manual(name = NULL, values = c("#0015BC", "#E9141D")) + 
  scale_color_manual(name = NULL, values = c("#0015BC", "#E9141D")) + 
  theme_minimal() + 
  theme(
    plot.margin = margin(0.1, 0, 0.1, 0.1, "cm"),
    plot.caption = element_text(hjust = 0), 
    plot.title.position = "plot", 
    plot.caption.position =  "plot", 
    legend.position = "top", 
    legend.direction = "horizontal", 
    legend.key.size = unit(0, "cm"), 
    legend.text.align = 0.5, 
    legend.justification = "center",
    axis.title.y = element_text(size = rel(.9), hjust = 0.95),
    axis.title.x = element_text(size = rel(.9), hjust = 0.95),
    panel.grid.major = element_line(colour = 'grey90', linewidth = 0),
    panel.grid.minor = element_line(colour = 'grey90', linewidth = 0)
  )
  
