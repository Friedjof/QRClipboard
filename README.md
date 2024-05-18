# QRClipboard

Ein Python-Paket zum Erstellen von QR-Codes aus dem Inhalt der Zwischenablage.

## Installation
Um das Paket zu installieren, führe folgende Schritte aus:

1. **Erstelle das Paket**:
   ```sh
   make build
   ```

2. **Installiere das Paket**:
   ```sh
   make install
   ```

## Nutzung
Nach der Installation kannst du das Paket mit dem Befehl `qrclipboard` ausführen:

```sh
qrclipboard
```

## Befehle
Hier sind einige nützliche Befehle, die in der `Makefile` definiert sind:

- **Erstellen des Pakets**:
  ```sh
  make build
  ```
  Dieser Befehl erstellt das Paket als source distribution (`sdist`) und wheel (`bdist_wheel`).

- **Installieren des Pakets**:
  ```sh
  make install
  ```
  Dieser Befehl installiert das Paket systemweit oder in der aktuellen virtuellen Umgebung.

- **Deinstallieren des Pakets**:
  ```sh
  make uninstall
  ```
  Dieser Befehl deinstalliert das Paket.

- **Bereinigen der Build-Verzeichnisse**:
  ```sh
  make clean
  ```
  Dieser Befehl entfernt die Build-Verzeichnisse und temporäre Dateien.

- **Ausführen von Unit-Tests**:
  ```sh
  make test
  ```
  Dieser Befehl führt die Unit-Tests aus (falls du Tests in einem `tests`-Verzeichnis hinzugefügt hast).

- **Hochladen des Pakets auf PyPI**:
  ```sh
  make upload
  ```
  Dieser Befehl lädt das Paket auf PyPI hoch (dieser Befehl ist optional und erfordert das `twine`-Modul).

- **Ausführen des Skripts**:
  ```sh
  make run
  ```
  Dieser Befehl führt das Hauptskript des Pakets aus.

## Entwickeln
Wenn du an diesem Projekt mitarbeiten möchtest, folge diesen Schritten:

1. **Forke das Repository**.
2. **Erstelle einen neuen Branch**:
   ```sh
   git checkout -b feature-mein-neuer-feature
   ```
3. **Führe deine Änderungen durch und committe sie**:
   ```sh
   git commit -m 'Füge neuen Feature hinzu'
   ```
4. **Pushe deine Änderungen zu GitHub**:
   ```sh
   git push origin feature-mein-neuer-feature
   ```
5. **Erstelle einen Pull Request**.

## Lizenz
Dieses Projekt ist lizenziert unter der MIT-Lizenz. Weitere Informationen findest du in der `LICENSE`-Datei.
