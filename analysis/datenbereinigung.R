# 6.1 Setup ---------------------------------------------------------------

# 6.1.1 Pakete laden
# Lade das Paket janitor, skimr und haven


# 6.1.2 Daten einlesen
# Lese den Datensatz data/replication_data_ramirez_beilock.csv ein
# und speichere ihn in der Variable replication_data


# 6.2 Datenbereinigung ----------------------------------------------------

# 6.2.1 Anzahl Spalten und Reihen
# Zeige dir die Anzahl der Spalten und Reihen im Datensatz an


# 6.2.2 Relevante Variablen ansehen
# * Führe folgenden Code aus und untersuche die für uns relevanten Daten.
# * Beschreibe die Variablen ID, STAI, Pretest.High und Posttest.High anhand
#   der angezeigten Histogramme


# 6.2.3 Variablen selektieren und Variablennamen reinigen
# * Selektiere die für uns relevanten Variablen mit select
# * Reinige die Variablennamen mit Hilfe der Funktion clean_names
# * Speichere den Datensatz in der Variable replication_data_subset


# 6.2.4 Proband*innen zählen
# * Zähle wie viele Reihen es pro Proband*in gibt 
# * Schaue dir die Daten der beiden Personen an, indem du den Datensatz
#   um diese beiden Personen filterst


# 6.2.5 Proband*innen entfernen
# * Entferne die Probanden, welche bei stai, pretest_high und
#   posttest_high 0-er Werte haben
# * Speichere den Datensatz in der Variable replication_data_subset_unique


# 6.3 Daten transformieren ------------------------------------------------

# 6.3.1 Daten in langes Format bringen
# Die Variablen `pretest_high` und `posttest_high` sind in einem
# sogenannten langen Format. Anstatt dieser Variablen könten wir auch
# eine mit dem Namen `test` und eine mit dem Namen `accuracy` haben. 
# Deine Aufgabe ist es, die Daten so zu transformieren, dass der Datensatz
# diese Struktur hat. Verwende hierfür pivot_longer
# Speichere den Datensatz in der Variable replication_data_long


# 6.3.2 Test umschreiben
# Kodiere die Variable test folgendermaßen um:
# pretest_high -> Pretest
# posttest_high -> Posttest

# 6.4 Daten exportieren -----------------------------------------------------

# 6.4.1 csv und sav speichern
# Speichere den Datensatzreplication_data_long  als CSV und SAV-Datei
# unter data/export mit dem Dateinamen replication_cleaned.csv
