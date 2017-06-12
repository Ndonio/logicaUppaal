//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

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
ogni volta che il satellite si trova nello stato Science, si trover\u00e0 prima o poi nello stato Comm; 

Non \u00e8 soddisfatta perch\u00e8 il modello \u00e8 molto semplificato, nulla mi vieta di andare in slewing, andare sulla terra e tornare in slewing.
*/
Satellite.science --> Satellite.comm
