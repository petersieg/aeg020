

..  Anleitung zum Programm SPS - Simulation einer AEG-020



.!  Hauptmenue



.!  Einlesen Anweisungsliste

    Das Programm erwartet eine Anweisungsliste als normale Text-
    datei. Die Datei muss die Endung .AWL haben. Eine solche An-
    weisungsliste kann mit jedem Editor, der ASCII-Text erzeugt,
    erstellt werden und hat z.B folgendes Aussehen:

                        UE1
                        UNM10
                        O(
                        UNA2
                        UE2
                        )
                        =NA1
                        PE


    Vor, nach und zwischen Anweisungen duerfen keine Leerzeichen
    stehen. Die AWL wird beim Einlesen ueberprueft. Sollte die AWL
    fehlerhaft sein, wird das Einlesen an dieser Stelle gestoppt
    und die Moeglichkeit zur Korrektur gegeben. Falls eine erfolg-
    reiche Korrektur stattgefunden hat, wird die korrigierte AWL
    auf dem Magnetspeicher zurueckgeschrieben.


..  Operationen und Operatoren



.!  Folgende Operationen werden verarbeitet:


                        U       -       Und
                        O       -       Oder
                        UN      -       Und nicht
                        ON      -       Oder nicht
                        U(      -       Und Klammer auf
                        O(      -       Oder Klammer auf
                        UN(     -       *Und nicht Klammer auf
                        ON(     -       *Oder nicht Klammer auf
                        )       -       Klammer zu
                        NO      -       keine Operation
                        =       -       Gleich
                        =N      -       Gleich nicht
                        SL      -       Setzen speichernd
                        RL      -       Ruecksetzen speichernd
                        SW      -       Schreite weiter


   *Diese Operationen werden von der AEG-020 NICHT verarbeitet!
    Die Operation ')N' wird vom Simulationsprogramm NICHT unter-
    stuetzt.

   *Auch Eingaenge koennen wie Merker oder Ausgaenge gesetzt werden!
    


.!  Folgende Operanden werden verarbeitet:


                        E       -       Eingaenge 1 bis  24
                        A       -       Ausgaenge 1 bis  16
                        M       -       Merker    1 bis 128
                        T       -       Timer     1 bis  16
                        Z       -       Zaehler   1 bis  16


    Beachten Sie bitte, das einige Merker der AEG-020 eine spe-
    zielle Bedeutung haben, diese speziellen Bedeutungen aber
    bei der Simulation NICHT beruecksichtigt werden.


..  Hauptmenupunkte


.!  Simulation SP-Steuerung

    Unter diesem Menuepunkt wird ein Unterprogramm zur Simulation
    der aktuell geladenen Anweisungsliste aktiviert. Sollte noch
    keine AWL geladen worden sein, wird automatisch das Einladen
    einer Anweisungsliste veranlasst. Die SPS-Simulation selbst
    wird unter einem gesonderten Punkt ausfuehrlich erklaert.


.!  Ver„ndern Anweisungsliste

    Es wird ein Editor mit dem Namen EDIT.EXE mit der vorab selektierten
    Datei aufgerufen.


.!  Generieren Dokumentation

    Es wird eine strukturierte Anweisungs- und Querverweissliste
    erzeugt und auf dem Massenspeicher unter [AWL-NAME].REF
    gesichert. Diese Datei kann mit MORE <[AWL-NAME].REF auf
    dem Bildschirm und mit PRINT [AWL-NAME].REF auf dem Drucker
    ausgegeben werden. Die Funktion wird nur ausgefuehrt wenn noch
    mindestens 20 KB auf dem Massenspeicher zur Verfuegung stehen.


.!  Laden der AWL in die SPS

    Durch diesen Menuepunkt wird das Terminalprogramm PROCOMM mit
    der Kommandoprozedur UPLOAD.CMD aufgerufen. Die Kommando-
    prozedur fragt anschliessend nach dem Dateinamen der Anwei-
    sungsliste und sendet diese Datei dann an die AEG-020. Ein
    bereits existierendes Programm in der SPS wird geloescht. Nach
    dem Senden wird das Pruefzeichen ermittelt und man befindet
    sich automatisch im sog. Terminalmodus von PROCOMM. Jetzt
    kann im sog. Online-Betrieb mit der SPS gearbeitet werden.
    Beendet wird PROCOMM durch die gleichzeitige Betaetigung der
    Tasten <ALT> und <X>. Nach Beendigung von PROCOMM kommt man
    wieder in das Hauptmenue zurueck.


.!  Terminalprogramm

    Hierdurch wird das Terminalprogramm PROCOMM aufgerufen und es
    kann anschliessend im sog. Online-Modus mit der SPS gearbeitet
    werden. PROCOMM ist 'Shareware' und kann fuer einen geringen
    Unkostenbeitrag von einschlaegigen Firmen bezogen werden.

    Lieferfirmen z.B.   Kirschbaum Software




.!  Beenden des Programms

    Beendet das SPS Programm.


..  Simulation


.!  Hauptmenue - Simulation

    Nach dem Aufruf des Menuepunktes 'Simulation SP-Steuerung'
    kommen Sie in diesen Bildschirm.


E 000000000111111111122222222223    AEG -020   A 000000000111111111122222222223
E 123456789012345678901234567890   Simulation  A 123456789012345678901234567890
  * *                                            *   *
                                   Speed=100%
[   40] T  1 [   40]   +-------------------------------+   [   12] Z  1 [   12]
[     ] T  2 [     ]   |  1|U  E  1|*|*|               |   [    5] Z  2 [    5]
[     ] T  3 [     ]   |  2|UN A  3| |*|               |   [     ] Z  3 [     ]
[     ] T  4 [     ]   |  3|SW   12| |*| (V)eraendern  |   [     ] Z  4 [     ]
[     ] T  5 [     ]   |   |  ...  | | |               |   [     ] Z  5 [     ]
[     ] T  6 [     ]   |   |  ...  | | | [  1]U E  1   |   [     ] Z  6 [     ]
[     ] T  7 [     ]   |   |  ...  | | |               |   [     ] Z  7 [     ]
[     ] T  8 [     ]   |   |       | | | (E)inzelanw.  |   [     ] Z  8 [     ]
[     ] T  9 [     ]   |   |       | | |               |   [     ] Z  9 [     ]
[     ] T 10 [     ]   |   |       | | | (S)tart Prg.  |   [     ] Z 10 [     ]
[     ] T 11 [     ]   |   |       | | |               |   [     ] Z 11 [     ]
[     ] T 12 [     ]   |   |       | | | (S)top  Prg.  |   [     ] Z 12 [     ]
[     ] T 13 [     ]   |   |       | | |               |   [     ] Z 13 [     ]
[     ] T 14 [     ]   |   |       | | | (Q)uittieren  |   [     ] Z 14 [     ]
[     ] T 15 [     ]   |   |       | | |               |   [     ] Z 15 [     ]
[     ] T 16 [     ]   +-------------------------------+   [     ] Z 16 [     ]

  *        *
M 000000000111111111122222222223333333333444444444455555555556666666666777777777
M 123456789012345678901234567890123456789012345678901234567890123456789012345678


    Gesetzte Eingaenge, Ausgaenge und Merker werden durch das Symbol
    '*' angezeigt. Bei Timern und Zaehlern wird jeweils Aussen der
    Sollwert und Innen der Istwert angezeigt. In der Mitte des
    Bildschirms befindet sich die Anzeige der Anweisungsliste und
    die einzelnen Menueoptionen. Nach jeder Anweisung sind noch zwei
    Spalten vorhanden in denen ein Sternsymbol (*) erscheinen kann.
    In der linken Spalte wird ein Sternsymbol gezeigt, wenn der
    entsprechende Operand gesetzt ist, in der rechten Spalte wenn
    das Verknuepfungsergebnis aller bisherigen Operationen wahr ist.

..  Funktionstasten - Simulation

    Bei angehaltener oder laufender Simulation sind folgende Tasten
    aktiv:


        <Pfeil hoch>         -  Bereich der angezeigten AWL um
                                1 Anweisung nach oben 'scrollen'

        <Pfeil runter>       -  Bereich der angezeigten AWL um
                                1 Anweisung nach unten 'scrollen'

        <Pfeil links>        -  Geschwindigkeit, mit der die AWL
                                simuliert wird, um 1% erniedrigen

        <Pfeil rechts>       -  Geschwindigkeit, mit der die AWL
                                simuliert wird, um 1% erhoehen

        <Shift> + <F1 - 10>  -  Veraendern von Eingang 1 - 10


        <Ctrl>  + <F1 - 10>  -  Veraendern von Eingang 11 - 20
                                (Die Taste <Ctrl> ist auf der
                                deutschen Tastatur mit <Strg>
                                bezeichnet)
..  Weitere Funktionen

    Bei angehaltener Simulation stehen folgende Optionen zur Ver-
    fuegung (Jeweils durch Druecken des ersten Buchstabens des
    Menuepunktes):

    Durch Betaetigen der Taste <V> kommt man in ein Untermenue, in
    dem alle verfuegbaren Eingaenge, Ausgaenge, Merker und die Soll-
    werte der Timer und Zaehler veraendert werden koennen. Nach dem
    Druecken des Anfangsbuchstabens (<E>,<A>,<M>,<T>,<Z>) wird nach
    der Kennzahl des entsprechenden Operanden gefragt. Bei Timern
    und Zaehlern muss anschliessend noch der gewuenschte Sollwert ein-
    gegeben werden. Durch die Taste <B> kehrt man wieder ins
    Simulations-Hauptmenue zurueck.

    Mit der Taste <S> wird die Simulation der Anweisungsliste ge-
    startet bzw. gestoppt.

    Durch Betaetigen der Taste <E> kann jeweils die naechste Anwei-
    sung Simuliert werden.

    Mit der Taste <Q> kehrt mann wieder ins Hauptmenue zurueck.



    Peter Sieg

    Rabishauerstr 9
    37603 Holzminden

