---
title: Tic Tac Toe
summary: Um die Möglichkeiten von Mobile Web Appilcations besser zu verstehen, habe ich selbst ein Spiel auf Basis moderner Webtechnologien entwickelt.
date: 03.2011
---

Um die Möglichkeiten von Mobile Web Appilcations besser zu verstehen, habe ich selbst ein Spiel auf Basis moderner Webtechnologien entwickelt. Als Grundlage dafür habe ich das Spiel “Tic Tac Toe” als iPhone Web App nachgebaut. Der User meldet sich über Twitter an. Anschließend wird ihm ein Gegenspieler zugewiesen, mit dem er dann in Echtzeit gegeneinander spielen kann. Im Twitter Stream des Gewinners erscheint automatisch ein Tweet zu seinem Erfolg. 


Technik
Das Speil ist eine Ruby on Rails 3.0.3 App.
Das Frondend ist in HTML5 / CSS3 / JS entwickelt und kommuniziert mittels STOMP über WebSocket mit dem Rails Backend.
Als Datenbank habe ich MongoDB eingesetzt. Die Twitter Authentifizierung ist mittels omniauth geregelt.

Entwicklungszeit: 5 Tage
Github Sourcecode: …???