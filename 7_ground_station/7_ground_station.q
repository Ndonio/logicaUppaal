//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*

*/
A[] not deadlock

/*
2. E possibile che la stazione di terra sia visibile mentre il satellite sta effettuando attivit\u00e0 scientifiche

Anche possibile E<> GroundStation.visible && Satellite.science
*/
E<> isVisible && Satellite.science

/*
1. In ogni stato di ogni esecuzione la stazione di terra `e visibile quando il satellite sta comunicando dati
*/
A[] ( Satellite.comm imply GroundStation.visible )

/*
Il satellite possa comunicare dati (passare da Earth a Comm) soltanto dopo che ha eseguito un\u2019attivit\u00e0 Science
*/
Satellite.science --> Satellite.comm

/*
In ogni esecuzione, il satellite non resta nello stato Science per pi`u di 60 u.t.
*/
A[] (Satellite.science imply Satellite.x<=60)

/*
In tutte le esecuzioni il satellite si trova almeno una volta nello stato Comm; 
*/
A<> Satellite.comm

/*
 esiste almeno un\u2019esecuzione in cui il satellite si trova almeno una volta nello stato Comm; 
*/
E<> Satellite.comm

/*
3. Dallo stato Slewing non possa tornare allo stato Earth senza prima passare per Science;

Questa non riesco a verificarla facilmente.
 In CTL la propriet`a si potrebbe esprimere
in uno dei due modi seguenti:
\u2022 A[](satellite.Slewing \u2192 A(satellite.Earth \u2192 done): per ogni stato di ogni esecuzione, se il satellite `e in Slewing, allora se la locazione successiva, in qualsiasi esecuzione che inizia da tale stato, \u00e8 Earth, allora done \u00e8 true;
*/
//NO_QUERY

/*
2. possa fare scienza (passare da Earth a Slewing, e poi a Science) soltanto se non ha dati da comunicare.

In pratica mi sto chidendo se \u00e8 vero in tutte le esecuzioni che sto nello stato science solo se hasData \u00e8 false
*/
A[] (Satellite.science imply not hasData)

/*
ogni volta che il satellite si trova nello stato Science, si trover\u00e0 prima o poi nello stato Comm;
*/
A[] (Satellite.comm imply hasData)
