//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*

*/
A[] not deadlock

/*
Ogni stato in cui il lavoratore lavora \u00e8 sempre seguito da uno stato in cui ha finito.
*/
Worker.working --> Worker.finished

/*
Ogni esecuzione ha almeno uno stato in cui il lavoratore lavora e la porta \u00e8 aperta.
*/
A<> Worker.working && Doors.opened

/*
Esiste un esecuzione che abbia almeno uno stato in cui il lavoratore lavora e la porta \u00e8 aperta.
*/
E<> Worker.working && Doors.opened

/*
Ogni esecuzione ha almeno uno stato in cui il lavoratore ha finito.
*/
A<> Worker.finished

/*
In nessuna esecuzione il lavoratore aspetta quando la porta dell\u2019ascensore \u00e8 aperta.
*/
A[] (Worker.waiting imply not Doors.opened)
