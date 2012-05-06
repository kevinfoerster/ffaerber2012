---
title: wonderapp
summary: Die wonderapp ist eine Webapplikation mit der man interaktive Präsentationen erstellen, verwalten und distribuieren kann.
date: 07.2011
---

Die wonderapp ist eine Webapplikation mit der man interaktive Präsentationen erstellen, verwalten und distribuieren kann, die dann auf Windows PCs und Apple iPads laufen. 
Die Präsentationen werden auf Basis voreingestellter Designs mit individuellen Inhalten über ein CMS erstellt. Die fertigen, aus dem System ausgespielten Versionen laufen anschließend auch offline. Sobald eine aktuellere Version der Präsentation erhältlich ist, wird diese über das Internet geladen. 
Mittels der wonderapp können also nicht nur verschiedenste Präsentationen in einheitlichem Corporate Design erstellt werden. Vielmehr können an unterschiedlichen Orten arbeitende Mitarbeiter eines Teams jeweils auf die neuste Versionen der Präsentation zugreifen. Ein Service, der insbesondere für große Unternehmen - z.B. mit vielen Außendienstmitarbeitern - interessant ist. Die Applikation wurde für genau so ein Unternehmen entwickelt. 


Technik:
Die Wonderapp besteht aus 2 Bereichen. HTML5/CSS3/JS Themes erstellen die Präsentationensvorlagen, mittels eines CMS werden Bilder, Videos, Texte und Strukturen  als JSON Daten hinzugegeben und gezippt, damit der User eine Datei zum Download erhält.
Meine Aufgabe war es, das CMS und das Deployment zu entwickeln.
Das CMS mit vielen komplexen, verschachtelten Formularen ist eine Rails 3.2 Applikation, die sich auf einer EC2 Instanz befindet.  
Als Datenbank wird mySQL eingesetzt, welches mittels eines EBS Volumes stündlich gesichert wird. Neue Bilder, Videos und PDFs können uber das CMS hochgeladen werden und nach der Konvertierung werden die Medien auf Amazon S3 verschoben und via Cloudfront verteilt.

Entwicklungszeit: 3 Monate
Kunde: Raumhoch (LINK) 