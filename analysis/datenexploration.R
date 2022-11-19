
# 6.5 Setup ---------------------------------------------------------------

# 6.5.1 Skimr laden
# Lade das Paket skimr


# 6.5.2 Datensatz laden
# * Lade den Datensatz data/cleaned/replication_cleaned.csv
# * Speichere den Datensatz in der Variable buttrick_data


# 6.5.3 Faktoren releveln
# * Konvertiere die Variable test in einen Faktor und
#   gib den Leveln folgende Reihenfolge: 
#   Pretest -> Posttest
# * Speichere den Datensatz in der Variable buttrick_data


# 6.6 Deskriptive Statistik -----------------------------------------------

# 6.6.1 M und SD berechnen
# * Berechne die Mittelwerte und Standardabweichungen der Variable
#   accuracy für die beiden Gruppen und die Testzeitpunkte
# * Verwende mindestens zwei Methoden, um zu den Ergebnissen zu kommen


# 6.7 Datenvisualisierung --------------------------------------------------

# 6.7.1 Streudiagramm erstellen
# * Erstelle ein Streudiagramm des Pre- und Posttests
# * Bringe die Variablen test und accuracy in ein weites Format
#   mit pivot_wider
# * Stelle auf der X-Achse den Pretest dar
# * Stelle auf der Y-Achse den Posttest dar
# * Verwende facet_wrap um die Gruppen in pressure voneinander zu 
#   unterscheiden


# 6.7.2 Visualisierung speichern
# Speichere die Visualisierung im R-Projekt ab unter dem Pfad
# images/streudiagramm_test_accuracy.png


# 6.7.3 Histogramme darstellen
# * Erstelle vier Histogramme der Variable accuracy mit facet_grid
# * In den Spalten soll die Variable test und in den 
#   Reihen die Variable condition dargestellt sein
# * Vervollständige den Code


# 6.7.4 Visualisierung speichern
# Speichere die Visualisierung im R-Projekt ab unter dem Pfad
# images/histogramme_test_accuracy.png


# 6.7.5 Boxplots darstellen
# * Erstelle einen Boxplot
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentalgruppen (condition) sollten unterschiedliche Füllfarben
#   haben und als Boxplots dargestellt werden
# * Vervollständige den Code


# 6.7.6 Visualisierung speichern
# Speichere die Visualisierung im R-Projekt ab unter dem Pfad
# images/boxplots_test_accuracy.png


# 6.7.7 Mittelwerte als Liniendiagramm visualisieren
# * Verwende die vorher berechneten Mittelwerte als Daten für die Visualisierung
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentalgruppen (condition) sollten unterschiedliche Farben haben 
#   und als Linien dargestellt werden
# * Die Variable pressure sollte durch ein facet_wrap unterteilt werden
# * Vervollständige den Code


# 6.7.8 Visualisierung speichern
# Speichere die Visualisierung im R-Projekt ab unter dem Pfad
# images/liniendiagramm_test_accuracy.png
