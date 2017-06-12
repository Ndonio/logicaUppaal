//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
(1) Verificare se ogni esecuzione ha almeno uno stato in cui la stampante stampa

*/
A<> Printer.printing

/*
(2) Verificare se ogni stato in cui l\u2019utente lavora \u00e8 sempre seguito da uno stato in cui aspetta la stampa.
*/
User.working --> User.waiting
