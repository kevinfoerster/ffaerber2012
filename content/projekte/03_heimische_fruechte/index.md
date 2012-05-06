---
title: Hohes C Heimische Früchte
summary: summary summary summary summary summary summary summary summary summary summary summary
date: 06.2010
---

Für Hohes C wurde eine interaktive Obst-Plantage im Web entwickelt, in der Facebook User ihre eigenen Baum pflanzen können. Der Baum ist am anfang klein und muss täglich gepflegt werden, damit er wächst. Der User bekommt alle 24 Stunden eine Benachrichtigung über Facebook, dass er seinen Baum bestäuben, wässern, sonnen oder ernten muss. Mit jedem erfolgreich absolvierten Spiel wird der Baum größer. Nach 5 Tagen ist er ausgewachsen und trägt Früchte. Diese können dann interaktiv geerntet werden. 
http://heye-digital-lab.de/de.heyelab.blog/2010/08/23/live-aus-dem-lab-ein-kleines-produktionstagebuch/

Technik: 
Das Flash Frontend sitzt auf einem Rails 2.3 Applikation, mit der über RubyAMF kommuniziert wird. Das Flash Frontend benutzt als MVC PureMVC und zur 3D-Darstellung Papervision3D. 
Die Bäume wurden in C4D gebaut und als MD2 Format in Papervision3D geladen.
Das Rails Backend speichert alle Zustände der Bäume in MySQL und mittels Delayed_Job wurden die Facebook Wallposts und das Wachsen der Bäume im Hintergrund durchgeführt.

Entwicklungszeit: 3 Monate
Kunde: http://heye-digital-lab.de
Flash, Rails, PureMVC, Papervision3D, RubyAMF