# Shell Basics

Dieses Repository enthält vier praktische Übungen zu den Grundlagen der Linux-Shell. Die Übungen werden in MyBinder bearbeitet. Jede Übung öffnet das passende Jupyter Notebook auf der linken Seite und ein vorbereitetes Terminal auf der rechten Seite.

## Übungen in MyBinder

| Kursteil | MyBinder starten |
| --- | --- |
| Übung 1: Navigation im Dateisystem | [Übung 1 öffnen](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/main?urlpath=lab/workspaces/uebung-01) |
| Übung 2: Dateien und Verzeichnisse | [Übung 2 öffnen](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/main?urlpath=lab/workspaces/uebung-02) |
| Übung 3: Hilfesysteme | [Übung 3 öffnen](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/main?urlpath=lab/workspaces/uebung-03) |
| Übung 4: Rechte und Skripte | [Übung 4 öffnen](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/main?urlpath=lab/workspaces/uebung-04) |

Beim ersten Aufruf eines neuen Repository-Stands muss MyBinder die Umgebung zunächst erstellen. Dieser Vorgang kann einige Minuten dauern.

Eine MyBinder-Sitzung ist zeitlich begrenzt. Änderungen innerhalb der Sitzung stehen nach dem Beenden der Umgebung nicht mehr zur Verfügung.

## Aufbau des Repositorys

- `lesson-content/` enthält die vier Jupyter Notebooks und die benötigten Übungsdateien.
- `.binder/Dockerfile` beschreibt die MyBinder-Umgebung mit Nano, Hilfeseiten und Bash-Kernel.
- `.binder/workspaces/` enthält die vorbereiteten JupyterLab-Ansichten für die einzelnen Übungen.
- `Makefile` stellt Befehle zum lokalen Bauen und Testen der Umgebung bereit.

## Lokale Entwicklung

Für einen lokalen Test werden Docker und Make benötigt. Das Binder-kompatible Image wird mit folgendem Befehl erstellt:

```bash
make build
```

Anschließend kann die erste Übung gestartet werden:

```bash
make run
```

Ein anderer Workspace wird über seinen Namen ausgewählt:

```bash
make run WORKSPACE=uebung-03
```

JupyterLab ist danach unter `http://127.0.0.1:8888` erreichbar. Der laufende Container wird mit folgendem Befehl beendet:

```bash
make stop
```

Die Umgebung enthält Nano, Shell-Hilfeseiten und einen Bash-Kernel.
