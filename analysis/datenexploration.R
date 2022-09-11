
# 6.4 Setup ---------------------------------------------------------------

# 6.4.1 Skimr laden
# Lade das Paket skimr
library(skimr)


# 6.4.2 Datensatz laden
# * Lade den Datensatz data/export/replication_cleaned.csv
# * Speichere den Datensatz in der Variable buttrick_data
buttrick_data <- read_csv("data/export/replication_cleaned.csv")


# 6.4.3 Faktoren releveln
# * Konvertiere die Variable test in einen Faktor und
#   speichere den Leveln folgende Reihenfolge: 
#   Pretest -> Posttest
# * Speichere den Datensatz in der Variable buttrick_data
buttrick_data <- buttrick_data %>% 
  mutate(
    test = as.factor(test) %>% fct_relevel("Pretest", "Posttest")
  )


# 6.5 Deskriptive Statistik -----------------------------------------------

# 6.5.1 M und SD berechnen
# * Berechne die Mittelwerte und Standardabweichungen der Variable
#   accuracy für die beiden Gruppen und die Testzeitpunkte
# * Verwende mindestens zwei Methoden, um zu den Ergebnissen zu kommen
buttrick_data %>% 
  select(accuracy, condition, pressure, test) %>% 
  group_by(condition, test, pressure) %>% 
  skim()

buttrick_data %>% 
  select(accuracy, condition, pressure, test) %>% 
  group_by(condition, test, pressure) %>% 
  summarise(
    mean_accuracy = mean(accuracy),
    sd_accuracy = sd(accuracy)
  )

buttrick_data %>% 
  select(accuracy, condition, pressure, test) %>% 
  group_by(condition, test, pressure) %>% 
  summarise(
    across(
      .cols = accuracy,
      .fns  = list(mean = ~ mean(.x, na.rm = TRUE),
                   sd  =  ~ sd(.x, na.rm = TRUE))
    )
  )


# 6.6 Datenvisualisierung --------------------------------------------------

# 6.6.1 Streudiagramm erstellen
# * Erstelle ein Streudiagramm des Pre- und Posttests
# * Bringe die Variable test und accuracy in in weites Format
#   mit pivot_wider
# * Stelle auf der X-Achse den Pretest dar
# * Stelle auf der Y-Achse den Posttest dar
# * Verwende facet_wrap um die Gruppen in pressure voneinander zu 
#   unterscheiden
buttrick_data %>% 
  pivot_wider(
    names_from = "test",
    values_from = "accuracy"
  ) %>% 
  ggplot(aes(x = Pretest, y = Posttest)) +
  geom_point() +
  facet_wrap(vars(pressure))


# 6.6.2 Histogramme darstellen
# * Erstelle vier Histogramme der Variable accuracy mit facet_grid
# * In den Spalten soll die Variable test und in den 
#   Reihen die Variable condition dargestellt sein
# * Vervollständige den Code
buttrick_data %>% 
  ggplot(aes(x = accuracy)) +
  geom_histogram(alpha = .7, color = "gray20",
                 binwidth = 1) +
  scale_y_continuous(expand = expansion(c(0, 0.3))) +
  facet_grid(cols = vars(test), rows = vars(condition)) +
  labs(
    x = "Akkuratheit",
    y = "Häufigkeit"
  ) +
  theme(
    legend.position = "bottom"
  )


# 6.6.3 Boxplots darstellen
# * Erstelle einen Boxplot
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentallgruppen (condition) sollten unterschiedliche Füllfarben
#   haben und als Boxplots dargestellt werden
# * Vervollständige den Code
buttrick_data %>% 
  ggplot(aes(x = test, y = accuracy)) +
  geom_boxplot(aes(fill = condition), alpha = .8) + 
  scale_y_continuous(limits = c(0, 25)) +
  facet_wrap(vars(pressure)) +
  labs(
    x = "Messzeitpunkt",
    y = "Akkuratheit"
  ) +
  theme(
    legend.position = "bottom"
  )


# 6.6.4 Mittelwerte als Liniendiagramm visualisieren
# * Verwende die berechneten Mittelwerte als Datensatz für die Visualisierung
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentallgruppen (condition) sollten unterschiedliche Farben haben 
#   und als Linien dargestellt werden
# * Die Variable pressure sollte durch ein facet_wrap unterteilt werden
# * Vervollständige den Code
buttrick_data %>% 
  select(accuracy, condition, test, pressure) %>% 
  group_by(condition, test, pressure) %>% 
  summarise(
    across(
      .cols = accuracy,
      .fns  = list(mean = ~ mean(.x, na.rm = TRUE),
                   sd  =  ~ sd(.x, na.rm = TRUE))
    )
  ) %>% 
  ungroup() %>% 
  ggplot(aes(x = test, y = accuracy_mean, color = condition,
             group = condition)) + 
  geom_point(size = 3) +
  geom_line() +
  labs(
    x = "Test",
    y = "Akkuratheit",
    color = "Experimentalgruppe"
  ) +
  facet_wrap(vars(pressure)) +
  theme(
    legend.position = "bottom"
  )
