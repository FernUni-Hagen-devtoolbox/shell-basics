# shell-basics

### Übung 01
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/HEAD?urlpath=%2Fdoc%2Ftree%2F01-shell-basics.ipynb)

### Übung 02
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/HEAD?urlpath=%2Fdoc%2Ftree%2F02-shell-basics.ipynb)

### Übung 03
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/HEAD?urlpath=%2Fdoc%2Ftree%2F03-shell-basics.ipynb)

### Übung 04
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/FernUni-Hagen-devtoolbox/shell-basics/HEAD?urlpath=%2Fdoc%2Ftree%2F04-shell-basics.ipynb)

## Lokale Entwicklung

Für schnelle Änderungen an den Notebooks und Ressourcen gibt es jetzt ein kleines Makefile. Der lokale Workflow baut das Image und startet JupyterLab mit einer frischen Kopie von `lesson-content/`, damit die Laufzeitumgebung von den Quelldateien getrennt bleibt.

```bash
make build
make run
```

Der Browser öffnet dann JupyterLab mit der kopierten Umgebung als Startverzeichnis. Wenn Sie nur eine Shell im Image brauchen, verwenden Sie `make shell`. Beide Befehle erzeugen die Kopie unter `lesson-content-runtime/`; `make stop` beendet den Container und entfernt diese Kopie wieder.