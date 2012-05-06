---
title: CashBullFx
summary: summary summary summary summary summary summary summary summary summary summary summary 
date: 05.2011
---

Im Online-Devisenhandel (Forex) ist es möglich, mittels Cashback einen Teil der Tradinggebühren zurück zu bekommen. Dies geht zum Beispiel über die Trader Website CashBullFx, deren Cloudcomputer Infastruktur ich aufgebaut habe.


Technik: Die Website ist eine Ruby on Rails 3.0.3 Applikation.
Meine Aufgabe war es, die Systeminfrastruktur und das Deployment zu entwickeln.
Die Applikation wurde dafür mit Opscode Chef in einer Amazon EC2 Infastuktur aufgebaut.
Um horizontale Skalierbarkeit zu ermöglichen, wurde das System so aufgebaut, dass jederzeit neue Rails Applikationsserver hinzugefügt werden können. 
Als Datenbank wurde mySQL und Redis eingesetzt. Damit die Daten sicher sind, wurden die Datenbankverzeichnisse auf ein EBS Volume mit stündlichem Backup ausgelagert. 
 
Entwicklungszeit: 1 Monate
Kunde: Helppo http://www.helppo.de/