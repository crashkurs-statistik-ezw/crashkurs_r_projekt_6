
# 6.4 Setup ---------------------------------------------------------------

# 6.4.1 Skimr laden
# Lade das Paket skimr


# 6.4.2 Datensatz laden
# * Lade den Datensatz data/export/replication_cleaned.csv
# * Speichere den Datensatz in der Variable buttrick_data


# 6.4.3 Faktoren releveln
# * Konvertiere die Variable test in einen Faktor und
#   speichere den Leveln folgende Reihenfolge: 
#   Pretest -> Posttest
# * Speichere den Datensatz in der Variable buttrick_data


# 6.5 Deskriptive Statistik -----------------------------------------------

# 6.5.1 M und SD berechnen
# * Berechne die Mittelwerte und Standardabweichungen der Variable
#   accuracy für die beiden Gruppen und die Testzeitpunkte
# * Verwende mindestens zwei Methoden, um zu den Ergebnissen zu kommen


# 6.6 Datenvisualisierung --------------------------------------------------

# 6.6.1 Streudiagramm erstellen
# * Erstelle ein Streudiagramm des Pre- und Posttests
# * Bringe die Variable test und accuracy in in weites Format
#   mit pivot_wider
# * Stelle auf der X-Achse den Pretest dar
# * Stelle auf der Y-Achse den Posttest dar
# * Verwende facet_wrap um die Gruppen in pressure voneinander zu 
#   unterscheiden



# 6.6.2 Histogramme darstellen
# * Erstelle vier Histogramme der Variable accuracy mit facet_grid
# * In den Spalten soll die Variable test und in den 
#   Reihen die Variable condition dargestellt sein
# * Vervollständige den Code



# 6.6.3 Boxplots darstellen
# * Erstelle einen Boxplot
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentallgruppen (condition) sollten unterschiedliche Füllfarben
#   haben und als Boxplots dargestellt werden
# * Vervollständige den Code



# 6.6.4 Mittelwerte als Liniendiagramm visualisieren
# * Verwende die berechneten Mittelwerte als Datensatz für die Visualisierung
# * Stelle auf der X-Achse den Testzeitpunkt dar
# * Stelle auf der Y-Achse die Akkuratheit dar
# * Die Experimentallgruppen (condition) sollten unterschiedliche Farben haben 
#   und als Linien dargestellt werden
# * Die Variable pressure sollte durch ein facet_wrap unterteilt werden
# * Vervollständige den Code
