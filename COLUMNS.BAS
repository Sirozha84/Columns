DECLARE SUB About ()
DECLARE SUB Bonus ()
DECLARE SUB DrawNext (so!(), fg!())
DECLARE SUB Game (z!, o!)
DECLARE SUB GameScreen (sp!(), rek!)
DECLARE SUB Intro ()
DECLARE SUB KeyClear ()
DECLARE SUB LoadSprites ()
DECLARE SUB Menu ()
DECLARE SUB pau ()
DECLARE SUB PST (x!, y!, z!, fg!(), so!())
DECLARE SUB PSTC (x!, y!, z!, si!())
DECLARE SUB RecordBroken ()
DECLARE SUB Score (o!)
DECLARE SUB StopSound ()
DECLARE SUB WZA ()
DECLARE SUB WZB ()
DECLARE SUB WZC ()
DECLARE SUB WZD ()
DECLARE SUB WZE ()

DIM SHARED sp(166), so(166), si(166):
DIM SHARED soundEn

Intro
LoadSprites
Menu
About
END

a:  DATA "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9999999999999AAA9999999999999AAA9999999999999AAA9999999999999AAA9999999999999AAA"
    DATA "9999999999999AAA9999999999999AAA9999999999999AAA9999999999999AAA9999999999999AAA:::::::::::::9AA::::::::::::::9A:::::::::::::::9"
b:  DATA "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA99999999999999999999999999999999999999999999999999999999999999999999999999999999"
    DATA "99999999999999999999999999999999999999999999999999999999999999999999999999999999::::::::::::::::::::::::::::::::::::::::::::::::"
c:  DATA "9AAAAAAAAAAAAAAA:9AAAAAAAAAAAAAA::9AAAAAAAAAAAAA:::9999999999999:::9999999999999:::9999999999999:::9999999999999:::9999999999999"
    DATA ":::9999999999999:::9999999999999:::9999999999999:::9999999999999:::9999999999999:::99999999999:::::9999999999A9::::9999999999AA9"
d:  DATA ":::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA"
    DATA ":::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999AAA"
e:  DATA ":::9999999999AAA:::9999999999AAA:::9999999999AAA:::9999999999999:::9999999999999:::9999999999999:::9999999999999:::9999999999999"
    DATA ":::9999999999999:::9999999999999:::9999999999999:::9999999999999:::9999999999999::::::::::::::::::::::::::::::::::::::::::::::::"
ba: DATA "9999999999999992::::::::::::::92:92222222:::::92:922222222::::92:9999229222:::92::::922:9222::92::::922::9222:92::::922:::922:92"
    DATA "::::922:::922:92::::922:::922:92::::922:::922:92:922222222222:92:922222222222:92:999999999999:92::::::::::::::922222222222222222"
bb: DATA ";;;;;;;;;;;;;;;233333333333333;23;222222222223;23;222222222223;23;22;;;22;;223;23;2233;223;223;23;2233;223;223;23;2233;223;223;2"
    DATA "3;2233;223;223;23;2233;222;223;23;222322222223;233;22222;22233;2333;22233;2333;23333;;;3333333;233333333333333;22222222222222222"
bc: DATA "<<<<<<<<<<<<<<<244444444444444<2444<2222222444<244<22222222244<24<222<<<<<2224<24<22<44444<224<24<22444444<224<24<22444444<224<2"
    DATA "4<22444444<224<24<22444444<224<24<222444442224<244<22244422244<2444<2244422<44<24444<<444<<444<244444444444444<22222222222222222"
bd: DATA ">>>>>>>>>>>>>>>266666666666666>26>222222222226>26>222222222226>26>22>>>>>>>226>26>22666666>226>26>22666666>226>26>22666666>226>2"
    DATA "6>22666666>226>26>2226666>2226>266>22266622266>2666>2222222666>26666>22222>666>266666>>>>>6666>266666666666666>22222222222222222"
be: DATA "AAAAAAAAAAAAAAA2==============A2=A22222222222=A2=A22222222222=A2=A22AAA22AA22=A2=A22==A22=A22=A2=A22==A22=A22=A2=A22==A22=A22=A2"
    DATA "=A22==A22=A22=A2=A22==A22=A22=A2=A22==AAA=A22=A2=A22======A22=A2=A22======A22=A2=AAA======AAA=A2==============A22222222222222222"
wa: DATA "99922929299299292999929992299299922999292929299929929299292992929299929299292229292999992999299292929929229292292999229992999999"
    DATA "92229922292999999999929929992292299299922999999992292999992922992929992292999922999299992929229992299229299292922999299929299929"
wb: DATA "92922929292222222999229922292222922299222929222229929229292292229292929292292222292929292929292292929922229292222929229922292922"
    DATA "92229222292229222999229222992222229299222922922292292229222922222222292292929222929299922929222292292229229222222929292929292222"
wc: DATA "92922922222222222929222922222222922229222922222229229229222222229292229292222222292929292922222292929222229222222929222922292222"
    DATA "92229222292222222229229222922222229229222922222292292229222922222222292292222222929292922922222222292229222222222922292292222222"
wd: DATA "92922222222222222229222222222222922229222222222229229222222222222222229222222222292922292222222222222222222222222929222922222222"
    DATA "92222222222222222229229222222222222229222222222292292222222222222222292222222222929222222222222222222222222222222922222222222222"

SUB About ()
    SCREEN 0: WIDTH 80, 25: COLOR 7, 0: CLS
    PRINT "COLUMNS"
    PRINT
    PRINT "Ç•‡·®Ô: 1.1 (07.01.2017)"
    PRINT "Ä¢‚Æ‡: ë•‡£•© ÉÆ‡§••¢"
    PRINT "ë†©‚: www.sg-software.ru"
END SUB

SUB Bonus ()
    IF soundEn = 1 THEN
        FOR a = 1 TO 8
            SOUND 500, 1: SOUND 1000, 1
        NEXT
    ELSE
        FOR a = 1 TO 8: SOUND 30000, 2: NEXT
    END IF
END SUB

SUB DrawNext (so(), fg())
    FOR a = 2 TO 7
        FOR s = 1 TO 3
            PUT (a * 32 + 80, s * 16 + 128), so(fg(s, a) * 33 - 32), PSET
        NEXT
    NEXT
END SUB

SUB Game (z, o)
    speed = 10
    u$ = CHR$(0) + CHR$(72): d$ = CHR$(0) + CHR$(80)
    l$ = CHR$(0) + CHR$(75): r$ = CHR$(0) + CHR$(77)
    REDIM fg(3, 7), m(0 TO 7, 12): o = 0
    CALL GameScreen(sp(), rek)
    COLOR 9: LOCATE 12, 18: PRINT "ë‚†‡‚ - ´Ó°†Ô ™´†¢®Ë†."
    KeyClear
    DO
        q$ = INKEY$: LOCATE 1, 36: COLOR 10: PRINT LEFT$(TIME$, 5)
        FOR a = 1 TO 7: FOR s = 1 TO 3: fg(s, a) = INT(RND * 5 + 1): NEXT: NEXT
        CALL DrawNext(so(), fg())
    LOOP UNTIL q$ <> "": LOCATE 12, 18: PRINT "                      "

new:
    IF o > rek THEN RecordBroken
    x = 3: y = 9: z = 0
    KeyClear

10
    LOCATE 1, 36: COLOR 10: PRINT LEFT$(TIME$, 5)
    CALL PST(x, y, z, fg(), so())
    z = z - 1
    IF z = -1 THEN
        z = 15
        IF y = 1 THEN GOTO STP
        IF m(x, y - 1) <> 0 THEN GOTO STP
        y = y - 1
    END IF

11
    q$ = INKEY$
    IF q$ = CHR$(27) THEN GOTO pr1
    IF q$ = d$ THEN
        CALL PSTC(x, y, z, si()): z = 0
        plus = 1: FOR a = 1 TO 11: IF m(x, a) > 0 THEN plus = plus + 1
        NEXT: y = plus: CALL PST(x, y, z, fg(), so())
        GOTO STP
    END IF
    IF q$ = l$ THEN
        IF x = 1 THEN GOTO 11
        IF m(x - 1, y) = 0 THEN CALL PSTC(x, y, z, si()): x = x - 1: CALL PST(x, y, z, fg(), so())
    END IF
    IF q$ = r$ THEN
        IF x = 6 THEN GOTO 11
        IF m(x + 1, y) = 0 THEN CALL PSTC(x, y, z, si()): x = x + 1: CALL PST(x, y, z, fg(), so())
    END IF
    IF q$ = u$ THEN a = fg(3, 1): fg(3, 1) = fg(2, 1): fg(2, 1) = fg(1, 1): fg(1, 1) = a: CALL PST(x, y, z, fg(), so()): GOTO 11
    FOR s = 1 TO speed: SOUND 30000, .1: NEXT: GOTO 10

'é·‚†≠Æ¢™†
STP:
    StopSound
    IF m(3, 9) <> 0 THEN GOTO GameOver
    FOR a = 1 TO 3: m(x, y - 1 + a) = fg(a, 1): NEXT
    prw = 0: bn = 0
prow:
    REDIM wx(66), wy(66)
    z = 1
    prw = prw + 1
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) = 0 THEN EXIT FOR
            plus = 1
            FOR d = 1 TO 6
                IF m(a, s) = m(a + d, s) THEN plus = plus + 1 ELSE EXIT FOR
            NEXT
            IF plus > 2 THEN FOR d = 0 TO plus - 1: wx(z) = a + d: wy(z) = s: z = z + 1: NEXT
            plus = 1
            FOR d = 1 TO 6
                IF m(a, s) = m(a + d, s + d) THEN plus = plus + 1 ELSE EXIT FOR
            NEXT
            IF plus > 2 THEN FOR d = 0 TO plus - 1: wx(z) = a + d: wy(z) = s + d: z = z + 1: NEXT
            plus = 1
            FOR d = 1 TO 6
                IF m(a, s) = m(a, s + d) THEN plus = plus + 1 ELSE EXIT FOR
            NEXT
            IF plus > 2 THEN FOR d = 0 TO plus - 1: wx(z) = a: wy(z) = s + d: z = z + 1: NEXT
            plus = 1
            FOR d = 1 TO 6
                IF m(a, s) = m(a - d, s + d) THEN plus = plus + 1 ELSE EXIT FOR
            NEXT
            IF plus > 2 THEN FOR d = 0 TO plus - 1: wx(z) = a - d: wy(z) = s + d: z = z + 1: NEXT
        NEXT
    NEXT
    plus = 0
    FOR a = 1 TO 66
        IF wx(a) > 0 THEN plus = plus + 1
    NEXT
    IF plus <> 0 THEN
        FOR a = 1 TO plus
            PUT (wx(a) * 16 + 1, wy(a) * 16 + 1), si(1), PSET
        NEXT
        WZA
        FOR a = 1 TO plus
            PUT (wx(a) * 16 + 1, wy(a) * 16 + 1), si(34), PSET
        NEXT
        WZB
        FOR a = 1 TO plus
            PUT (wx(a) * 16 + 1, wy(a) * 16 + 1), si(67), PSET
        NEXT
        WZC
        FOR a = 1 TO plus
            PUT (wx(a) * 16 + 1, wy(a) * 16 + 1), si(100), PSET
        NEXT
        WZD
        FOR a = 1 TO plus
            PUT (wx(a) * 16 + 1, wy(a) * 16 + 1), si(133), PSET
        NEXT
        WZE
        FOR a = 1 TO plus
            IF prw = 1 THEN o = o + 1: CALL Score(o)
            IF prw > 1 THEN bn = bn + (prw - 1) * 10
        NEXT
        FOR a = 1 TO plus: m(wx(a), wy(a)) = 0: NEXT
        DO
            plus = 0
            FOR a = 1 TO 6
                FOR s = 1 TO 10
                    IF m(a, s) = 0 AND m(a, s + 1) <> 0 THEN m(a, s) = m(a, s + 1): m(a, s + 1) = 0: plus = 1
                NEXT
            NEXT
            FOR a = 1 TO 6
                FOR s = 1 TO 11
                    IF m(a, s) = 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(133), PSET
                    IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), so(m(a, s) * 33 - 32), PSET
                NEXT
            NEXT
            FOR s = 0 TO 15: PALETTE s, s: NEXT
        LOOP UNTIL plus = 0
        GOTO prow
    END IF
    IF bn > 0 THEN
        LOCATE 12, 24: COLOR 9: PRINT "Åéçìë";
        COLOR 14: PRINT bn;
        COLOR 9: PRINT "!"
        Bonus
        LOCATE 12, 24: COLOR 0: PRINT "     "; bn; "   "
        o = o + bn: CALL Score(o)
    END IF
    FOR a = 1 TO 6
        FOR s = 1 TO 3
            fg(s, a) = fg(s, a + 1)
        NEXT
    NEXT
    FOR a = 1 TO 3: fg(a, 7) = INT(RND * 5 + 1): NEXT
    CALL DrawNext(so(), fg())
    GOTO new
pr1:
    PCOPY 0, 1: COLOR 1
    LOCATE 11, 10: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
    LOCATE 12, 10: PRINT "≥                    ≥"
    LOCATE 13, 10: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"
    COLOR 14: LOCATE 12, 12: PRINT "ÇÎ „¢•‡•≠Î ? (Y/N)"
    DO: q$ = INKEY$: LOOP UNTIL q$ <> ""
    IF q$ <> "Y" AND q$ <> "y" AND q$ <> "≠" AND q$ <> "ç" THEN : PCOPY 1, 0: GOTO 11
    PCOPY 1, 0

'è‡Æ®£‡Î¢†≠®•
GameOver:
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(1), PSET
        NEXT
    NEXT
    WZA
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(34), PSET
        NEXT
    NEXT
    WZB
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(67), PSET
        NEXT
    NEXT
    WZC
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(100), PSET
        NEXT
    NEXT
    WZD
    FOR a = 1 TO 6
        FOR s = 1 TO 11
            IF m(a, s) > 0 THEN PUT (a * 16 + 1, s * 16 + 1), si(133), PSET
        NEXT
    NEXT
    WZE
    FOR a = 0 TO 300 STEP 2
        PSET (a, 1), 0: DRAW "h100e100"
        PSET (320 - a, 1), 0: DRAW "e100h100"
        PSET (a - 21, 1), 0: DRAW "h100e100"
        PSET (341 - a, 1), 0: DRAW "e100h100"
        LOCATE 1, 36: COLOR 10: PRINT LEFT$(TIME$, 5)
        SOUND 30000, .2
    NEXT
END SUB

SUB GameScreen (sp(), rek)
    CLS : PUT (1, 1), sp(67), PSET
    FOR a = 1 TO 6
        PUT (a * 16 + 1, 1), sp(100), PSET
    NEXT: PUT (113, 1), sp(133), PSET
    FOR a = 1 TO 10
        PUT (1, a * 16), sp(34), PSET
        PUT (113, a * 16), sp(34), PSET
    NEXT
    PUT (1, 176), sp(1), PSET: PUT (113, 176), sp(1), PSET
    COLOR 1: LOCATE 9, 24: PRINT "ëãÖÑìûôàÖ"
    LOCATE 15, 27: PRINT "éóäà": LOCATE 21, 26: PRINT "êÖäéêÑ"
    COLOR 5: LOCATE 17, 26: PRINT "000000"
    COLOR 6: LOCATE 23, 26: PRINT "000000"
    OPEN "Columns.his" FOR APPEND AS 1: CLOSE
    OPEN "Columns.his" FOR INPUT AS 1
        IF EOF(1) = -1 THEN s = 0 ELSE INPUT #1, s$, d$, s
    CLOSE
    COLOR 14: s$ = STR$(s)
    LOCATE 23, 33 - LEN(s$)
    IF s <> 0 THEN PRINT RIGHT$(s$, LEN(s$) - 1)
    rek = s
END SUB

SUB Intro ()
    SCREEN 13: WINDOW (1, 1)-(320, 200)
    FOR a = 1 TO 200: PALETTE 0, 0: NEXT
    COLOR 1: REDIM q$(5): q$(1) = "€€€€  €€€€": q$(2) = "€     €   "
    q$(3) = "€€€€  € €€": q$(4) = "   €  €  €": q$(5) = "€€€€  €€€€"
    FOR a = 1 TO 5: PALETTE a, 0: COLOR a: LOCATE a + 7, 15: PRINT q$(a): NEXT
    PALETTE 6, 0: COLOR 6: LOCATE 17, 14: PRINT "è‡•§·‚†¢´Ô•‚..."
    FOR a = 0 TO 10
        PALETTE 1, a * 65536 * 5
        PALETTE 2, a * 65536 * 4
        PALETTE 3, a * 65536 * 3
        PALETTE 4, a * 65536 * 2
        PALETTE 5, a * 65536 * 1
        PALETTE 6, a * 256 * 3
        SOUND 30000, 1
    NEXT
    FOR a = 1 TO 10
        PALETTE 1, a * 65536 * 1 + 65536 * 50
        PALETTE 2, a * 65536 * 2 + 65536 * 40
        PALETTE 3, a * 65536 * 3 + 65536 * 30
        PALETTE 4, a * 65536 * 4 + 65536 * 20
        PALETTE 5, a * 65536 * 5 + 65536 * 10
        PALETTE 6, a * 256 * 3 + 256 * 30
        SOUND 30000, 1
    NEXT
    FOR a = 10 TO 1 STEP -1
        PALETTE 1, a * 65536 * 5 + 65536 * 10
        PALETTE 2, a * 65536 * 4 + 65536 * 20
        PALETTE 3, a * 65536 * 3 + 65536 * 30
        PALETTE 4, a * 65536 * 2 + 65536 * 40
        PALETTE 5, a * 65536 * 1 + 65536 * 50
        PALETTE 6, a * 256 * 3 + 256 * 30
        SOUND 30000, 1
    NEXT
    FOR a = 10 TO 0 STEP -1
        PALETTE 1, a * 65536 * 1
        PALETTE 2, a * 65536 * 2
        PALETTE 3, a * 65536 * 3
        PALETTE 4, a * 65536 * 4
        PALETTE 5, a * 65536 * 5
        PALETTE 6, a * 256 * 3
        SOUND 30000, 1
    NEXT
    CLS
    SCREEN 7: WINDOW (1, 1)-(320, 200)
    COLOR 8: LINE (160, 30)-(160, 180): FOR a = 30 TO 180 STEP 50
    LINE (100, a + 10)-(160, a): LINE -(220, a + 10): NEXT
    LINE (100, 40)-(100, 190): LINE -(160, 200)
    LINE -(220, 190): LINE -(220, 40)
    PAINT (160, 190), 11, 8
    PAINT (150, 180), 9, 8: PAINT (170, 180), 1, 8
    PAINT (150, 130), 12, 8: PAINT (170, 130), 4, 8
    PAINT (150, 80), 10, 8: PAINT (170, 80), 2, 8
    COLOR 1: LOCATE 23, 17: PRINT "COLUMNS"
    pau
    COLOR 9: LOCATE 23, 17: PRINT "COLUMNS"
    pau
    COLOR 11: LOCATE 23, 17: PRINT "COLUMNS"
    pau
    COLOR 15: LOCATE 23, 17: PRINT "COLUMNS"
    FOR a = 1 TO 100: SOUND 30000, .5
        IF INKEY$ <> "" THEN EXIT FOR
    NEXT
    FOR a = 0 TO 300 STEP 2
        PSET (a, 1), 0: DRAW "h100e100"
        PSET (320 - a, 1), 0: DRAW "e100h100"
        PSET (a - 21, 1), 0: DRAW "h100e100"
        PSET (341 - a, 1), 0: DRAW "e100h100"
        SOUND 30000, .2
    NEXT
END SUB

SUB KeyClear ()
    DO
        q$ = INKEY$
    LOOP UNTIL q$ = ""
END SUB

SUB LoadSprites () '(sp(), so(), si())
    SCREEN 7, 1, 1, 0
    WINDOW (1, 1)-(320, 200)
    RESTORE a: GOSUB zap: GET (1, 1)-(16, 16), sp(1)
    RESTORE b: GOSUB zap: GET (1, 1)-(16, 16), sp(34)
    RESTORE c: GOSUB zap: GET (1, 1)-(16, 16), sp(67)
    RESTORE d: GOSUB zap: GET (1, 1)-(16, 16), sp(100)
    RESTORE e: GOSUB zap: GET (1, 1)-(16, 16), sp(133)
    RESTORE ba: GOSUB zap: GET (1, 1)-(16, 16), so(1)
    RESTORE bb: GOSUB zap: GET (1, 1)-(16, 16), so(34)
    RESTORE bc: GOSUB zap: GET (1, 1)-(16, 16), so(67)
    RESTORE bd: GOSUB zap: GET (1, 1)-(16, 16), so(100)
    RESTORE be: GOSUB zap: GET (1, 1)-(16, 16), so(133)
    RESTORE wa: GOSUB zap: GET (1, 1)-(16, 16), si(1)
    RESTORE wb: GOSUB zap: GET (1, 1)-(16, 16), si(34)
    RESTORE wc: GOSUB zap: GET (1, 1)-(16, 16), si(67)
    RESTORE wd: GOSUB zap: GET (1, 1)-(16, 16), si(100)
    CLS
    GET (1, 1)-(16, 16), si(133)
    SCREEN 7, 0, 0, 0
    'CALL MENU(sp(), so(), si())

    EXIT SUB

zap:
    READ a$: dl = 1
    FOR a = 1 TO 8
        FOR s = 1 TO 16
            PSET (a, s), ASC(MID$(a$, dl, a)) - 50
            dl = dl + 1:
        NEXT
    NEXT
    READ a$: dl = 1
    FOR a = 1 TO 8
        FOR s = 1 TO 16
            PSET (a + 8, s), ASC(MID$(a$, dl, a)) - 50
            dl = dl + 1:
        NEXT
    NEXT
    RETURN

END SUB

SUB Menu ()
    u$ = CHR$(0) + CHR$(72): d$ = CHR$(0) + CHR$(80)
    l$ = CHR$(0) + CHR$(75): r$ = CHR$(0) + CHR$(77)
    OPEN "Columns.ini" FOR APPEND AS 1: CLOSE
    OPEN "Columns.ini" FOR INPUT AS 1
        IF EOF(1) = -1 THEN soundEn = 1:  ELSE INPUT #1, soundEn
    CLOSE
    REDIM z$(0 TO 4)
    z$(0) = "                                                                                "
    z$(1) = "∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞∞"
    z$(2) = "±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±"
    z$(3) = "≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤≤"
    z$(4) = "€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
1 :
    SCREEN 0: COLOR 0, 0: CLS
    COLOR 10, 0: LOCATE 1, 36: PRINT LEFT$(TIME$, 5)
    COLOR 4
    LOCATE 11, 1: PRINT z$(1)
    pau
    LOCATE 11, 1: PRINT z$(2): LOCATE 9, 1: PRINT z$(1): LOCATE 13, 1: PRINT z$(1)
    pau
    LOCATE 11, 1: PRINT z$(3): LOCATE 9, 1: PRINT z$(2): LOCATE 13, 1: PRINT z$(2)
    LOCATE 7, 1: PRINT z$(1): LOCATE 15, 1: PRINT z$(1)
    pau
    LOCATE 11, 1: PRINT z$(4): LOCATE 9, 1: PRINT z$(3): LOCATE 13, 1: PRINT z$(3)
    LOCATE 7, 1: PRINT z$(2): LOCATE 15, 1: PRINT z$(2)
    LOCATE 5, 1: PRINT z$(1): LOCATE 17, 1: PRINT z$(1)
    pau
    PCOPY 0, 1

    COLOR 14: LOCATE 1, 14: PRINT "ã„ÁË®• ®£‡Æ™®:": COLOR 15, 7
    LOCATE 3, 4: PRINT "⁄ƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒø"
    LOCATE 4, 4: PRINT "≥     ≥          ≥       ≥       ≥"
    LOCATE 5, 4: PRINT "√ƒƒƒƒƒ≈ƒƒƒƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒ≈ƒƒƒƒƒƒƒ¥"
    FOR a = 6 TO 18
        LOCATE a, 4: PRINT "≥     ≥          ≥       ≥       ≥"
    NEXT
    LOCATE 19, 4: PRINT "¿ƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒŸ"
    COLOR 15, 1
    LOCATE 23, 1: PRINT " Enter-·‚†‡‚. Esc-¢ÎÂÆ§. è‡Æ°•´-ß¢„™:   "
    COLOR 14: LOCATE 23, 39
    IF soundEn THEN PRINT CHR$(14) ELSE PRINT " "
    COLOR 0, 7
    LOCATE 4, 5: PRINT "å•·‚Æ"
    LOCATE 4, 14: PRINT "à¨Ô"
    LOCATE 4, 23: PRINT "Ñ†‚†"
    LOCATE 4, 31: PRINT "éÁ™®"

    REDIM nm$(100), dt$(100), sc(100):
    ch = 0
    k = 0
    OPEN "Columns.his" FOR APPEND AS 1: CLOSE
    OPEN "Columns.his" FOR INPUT AS 1
        FOR a = 1 TO 100
            IF EOF(1) <> -1 THEN
                INPUT #1, nm$(a), dt$(a), sc(a)
                ch = ch + 1
            END IF
        NEXT
    CLOSE
    KeyClear
2 :
    IF ch > 13 THEN
        IF k < 0 THEN k = 0
        IF k > ch - 13 THEN k = ch - 13
        COLOR 0, 3
        LOCATE 6, 37: PRINT CHR$(24)
        LOCATE 18, 37: PRINT CHR$(25)
        COLOR 9, 0
        FOR a = 7 TO 17: LOCATE a, 37: PRINT "±": NEXT
        COLOR 9
        LOCATE (k) / (ch - 13) * 10 + 7, 37: PRINT "€"
        LOCATE 21, 1
        COLOR 15, 1
        PRINT "   "; CHR$(24); ","; CHR$(25); ",PgUp,PgDn,Home,End - Ø‡Æ··¨Æ‚‡.  "
    END IF

    COLOR 1, 7
    FOR a = 1 TO 13
        IF a + k <= ch THEN
            LOCATE a + 5, 6: PRINT "   "
            LOCATE a + 5, 5: PRINT a + k
            LOCATE a + 5, 11: PRINT "          "
            LOCATE a + 5, 11: PRINT nm$(a + k)
            LOCATE a + 5, 22: PRINT dt$(a + k)
            LOCATE a + 5, 31: PRINT "     "
            LOCATE a + 5, 30: PRINT sc(a + k);
        END IF
    NEXT

    DO
        DO
            q$ = INKEY$: COLOR 10, 0: LOCATE 1, 36: PRINT LEFT$(TIME$, 5)
        LOOP UNTIL q$ <> ""
        IF q$ = CHR$(27) THEN EXIT SUB
        IF q$ = " " THEN
            IF soundEn THEN soundEn = 0 ELSE soundEn = 1
            COLOR 14, 1: LOCATE 23, 39
            OPEN "Columns.ini" FOR OUTPUT AS 1
                PRINT #1, soundEn
            CLOSE
            IF soundEn THEN PRINT CHR$(14) ELSE PRINT " "
        END IF
        IF ch > 13 THEN
            IF q$ = u$ AND k <> 0 THEN k = k - 1: GOTO 2
            IF q$ = d$ AND k <> ch - 13 THEN k = k + 1: GOTO 2
            IF q$ = CHR$(0) + CHR$(71) THEN k = 0: GOTO 2
            IF q$ = CHR$(0) + CHR$(79) THEN k = ch - 13: GOTO 2
            IF q$ = CHR$(0) + CHR$(73) THEN k = k - 13: GOTO 2
            IF q$ = CHR$(0) + CHR$(81) THEN k = k + 13: GOTO 2
        END IF
    LOOP UNTIL q$ = CHR$(13)
    PCOPY 1, 0
    COLOR 10, 0: LOCATE 1, 36: PRINT LEFT$(TIME$, 5)

    COLOR 4, 0

    LOCATE 11, 1: PRINT z$(3): LOCATE 9, 1: PRINT z$(2): LOCATE 13, 1: PRINT z$(2)
    LOCATE 7, 1: PRINT z$(1): LOCATE 15, 1: PRINT z$(1)
    LOCATE 5, 1: PRINT z$(0): LOCATE 17, 1: PRINT z$(0)
    pau
    LOCATE 11, 1: PRINT z$(2): LOCATE 9, 1: PRINT z$(1): LOCATE 13, 1: PRINT z$(1)
    LOCATE 7, 1: PRINT z$(0): LOCATE 15, 1: PRINT z$(0)
    pau
    LOCATE 11, 1: PRINT z$(1): LOCATE 9, 1: PRINT z$(0): LOCATE 13, 1: PRINT z$(0)
    pau
    LOCATE 11, 1: PRINT z$(0)
    FOR s = 0 TO 7: PALETTE s, s: NEXT


    SCREEN 7
    WINDOW (1, 1)-(320, 200)
    CALL Game(z, o)
    SCREEN 0
    OPEN "Columns.his" FOR APPEND AS 1: CLOSE
    OPEN "Columns.his" FOR INPUT AS 1
        REDIM nm$(100), dt$(100), sc(100)
        ch = 0:
        FOR a = 1 TO 100
            IF EOF(1) <> -1 THEN INPUT #1, nm$(a), dt$(a), sc(a): ch = ch + 1
        NEXT
    CLOSE
    IF ch = 100 AND sc(100) >= o THEN GOTO 1
    IF o = 0 THEN GOTO 1
    COLOR 10, 0: LOCATE 1, 36: PRINT LEFT$(TIME$, 5)
    COLOR 9, 1
    LOCATE 10, 12: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
    LOCATE 11, 12: PRINT "≥              ≥"
    LOCATE 12, 12: PRINT "≥              ≥"
    LOCATE 13, 12: PRINT "≥              ≥"
    LOCATE 14, 12: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"
    COLOR 0: LOCATE 13, 15: PRINT "±±±±±±±±±±"
    LOCATE 11, 14: COLOR 14: PRINT "ê•™Æ‡§:"; o
    LOCATE 12, 16: COLOR 9: PRINT "Ç†Ë• ®¨Ô:"
    q = 1
    REDIM b$(10): nm$ = ""
3
    DO
    COLOR 10, 0: LOCATE 1, 36: PRINT LEFT$(TIME$, 5)
    IF q <> 11 THEN
        COLOR 14, 1: LOCATE 13, 14 + q: PRINT "€": PALETTE 1, 1
        COLOR 0, 1: LOCATE 13, 14 + q: PRINT "±": PALETTE 1, 1
    END IF
    q$ = INKEY$: LOOP UNTIL q$ <> ""
    IF q$ = CHR$(13) THEN GOTO 4
    IF q$ = CHR$(8) AND q <> 1 THEN LOCATE 13, 13 + q: COLOR 0, 1: PRINT "±": q = q - 1
    IF q$ = CHR$(8) THEN GOTO 3
    IF q$ < " " THEN GOTO 3
    IF q = 11 THEN GOTO 3
    LOCATE 13, 14 + q: COLOR 11: PRINT q$
    b$(q) = q$: q = q + 1
    GOTO 3

'á†Ø®·Ï ·‚‡Æ™® ¢ ‚†°´®Ê„ ‡•™Æ‡§Æ¢
4 :
    FOR a = 1 TO q - 1: nm$ = nm$ + b$(a): NEXT
    FOR a = 1 TO 100: IF o > sc(a) THEN m = a: EXIT FOR
    NEXT
    FOR a = 100 TO m + 1 STEP -1
    nm$(a) = nm$(a - 1)
    dt$(a) = dt$(a - 1)
    sc(a) = sc(a - 1)
    NEXT
    nm$(m) = nm$
    dt$(m) = FORMAT$(NOW, "yyyy-mm")
    sc(m) = o
    IF m <> 101 THEN ch = ch + 1
    IF ch > 100 THEN ch = 100
    OPEN "Columns.his" FOR OUTPUT AS 1
        FOR a = 1 TO ch
            WRITE #1, nm$(a), dt$(a), sc(a)
        NEXT
    CLOSE
    GOTO 1

END SUB

SUB pau ()
    FOR a = 1 TO 30: SOUND 30000, .1: NEXT
END SUB

SUB PST (x, y, z, fg(), so())
    FOR a = 1 TO 3
        PUT (x * 16 + 1, y * 16 + z + a * 16 - 15), so(fg(a, 1) * 33 - 32), PSET
    NEXT
END SUB

SUB PSTC (x, y, z, si())
    FOR a = 1 TO 3
        PUT (x * 16 + 1, y * 16 + z + a * 16 - 15), si(133), PSET
    NEXT
END SUB

SUB RecordBroken ()
    a = 4
    LINE (200 + a, 10)-(250 + a, 45), 4
    LINE (250 + a, 15)-(195 + a, 43), 4
    a = 0
    LINE (200 + a, 10)-(250 + a, 45), 4
    LINE (250 + a, 15)-(195 + a, 43), 4
    FOR a = 1 TO 3
        LINE (200 + a, 10)-(250 + a, 45), 12
        LINE (250 + a, 15)-(195 + a, 43), 12
    NEXT
END SUB

SUB Score (o)
    COLOR 13: o$ = STR$(o)
    LOCATE 17, 33 - LEN(o$)
    IF o <> 0 THEN PRINT RIGHT$(o$, LEN(o$) - 1)
END SUB

SUB StopSound ()
    IF soundEn THEN
        FOR a = 500 TO 100 STEP -50
            SOUND a, .1
        NEXT
    ELSE
        SOUND 30000, .5
    END IF
END SUB

SUB WZA ()
    IF soundEn THEN
        FOR a = 1 TO 50: SOUND RND * 50 + 250, .03: NEXT
    ELSE
        FOR a = 1 TO 15: PALETTE a, a: NEXT
    END IF
END SUB

SUB WZB ()
    IF soundEn THEN
        FOR a = 1 TO 50: SOUND RND * 50 + 200, .03: NEXT
    ELSE
        FOR a = 1 TO 15: PALETTE a, a: NEXT
    END IF
END SUB

SUB WZC ()
    IF soundEn THEN
        FOR a = 1 TO 50: SOUND RND * 50 + 150, .03: NEXT
    ELSE
        FOR a = 1 TO 15: PALETTE a, a: NEXT
    END IF
END SUB

SUB WZD ()
    IF soundEn THEN
        FOR a = 1 TO 50: SOUND RND * 50 + 100, .03: NEXT
    ELSE
        FOR a = 1 TO 15: PALETTE a, a: NEXT
    END IF
END SUB

SUB WZE ()
    IF soundEn THEN
        FOR a = 1 TO 50: SOUND RND * 50 + 50, .03: NEXT
    ELSE
        FOR a = 1 TO 15: PALETTE a, a: NEXT
    END IF
END SUB

