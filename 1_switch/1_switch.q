//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Esiste la possibilit\u00e0 che l\u2019interruttore resti acceso per pi\u00f9 di 10 time units.
(No, l'invariante su "on" mi blocca a 3)
*/
E<> (Switch.on && Switch.y>=10)

/*
Ogni volta che l\u2019interruttore \u00e8 acceso verr\u00e0 spento prima o poi.
(Questa dovrebbe passare in quanto sulla locazione "on" ho l'invariante con y<=3, non ci sono transizioni che la resettano e pertanto quando y<=3 me ne devo andare dalla locazione)
*/
Switch.on --> Switch.off

/*
Esiste la possibilit\u00e0 che l\u2019interruttore sia sempre spento, per tutta la durata di un\u2019esecuzione.
(Dovrebbe andare bene perch\u00e8 se non scatta mai la transizione per andare ad on resta sempre nello stato di spento.
*/
E[] Switch.off

/*
l\u2019interruttore verr\u00e0 sempre acceso prima o poi.
(Dovrebbe fallire perch\u00e8 non ho invarianti su off, dunque \u00e8 possibile che mi resta spento a vita)
*/
A<>Switch.on
