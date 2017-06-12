//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
(3) esiste un\u2019esecuzione in cui il cane gioca sempre.
*/
E[] Cane.gioca

/*
(2) esiste un\u2019esecuzione in cui il cane gioca con la pancia vuota almeno una volta; 

*/
E<>(Cane.gioca && Pancia.vuota)

/*
(1) in ogni esecuzione esiste almeno uno stato in cui il cane mangia; 
*/
A<> Cane.mangia
