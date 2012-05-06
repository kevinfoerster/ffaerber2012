---
title: weblightz
summary: Mit der Webapplikation weblightz ist es möglich, RGB Lampen über das Internet via Browser zu steuern.
date: 04.2012
---

Mit DMX RGB Lampen lassen sich alle Farben des sichtbaren Farbspektrums erzeugen. Die vor allem im Eventbereich zum Einsatz kommenden Lampen werden normalerweise über teure Steuergeräte betrieben. Mit der Webapplikation weblightz ist es möglich, die RGB Lampen über das Internet via Browser zu steuern. Die Farben lassen sich im Web einstellen und mit anderen Leuten teilen. Die Steuerung der RGB Lampen zuhause übernimmt ein ArduinoBoard, welches als Schnittstelle zwischen Internet und Lampe agiert. 

Technik:
Das als Schnittstelle agierende ArduinoBoard wird mit einem Ethernet-Shield ausgestattet und an das Internet angeschlossen, um mit der Webapplikation (weblightz) zu kommunizieren. 
Sobald der User etwas bei weblightz eingibt, sendet die in Rails 3.2.3 gebaute Applikation die Requests uber Pusher.com an das Ethernet-Shild. Das ArduinoBoard wandelt das ankommende Signal dann in ein DMX-Signal um und sendet es über ein DMX-Shild an die DMX Lampen. Alle Farben und Einstellungen werden in einer MongoDB Datenbank gespeichert. 
Der Hoster ist Heroku.

Entwicklungszeit: 1 Monate