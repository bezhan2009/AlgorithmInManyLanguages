IDENTIFICATION DIVISION.
PROGRAM-ID. SORTING-ALGORITHM.

DATA DIVISION.
WORKING-STORAGE SECTION.
01  ARR PIC 9(2) OCCURS 7 TIMES VALUE IS 64, 34, 25, 12, 22, 11, 90.
01  N   PIC 99 VALUE 7.
01  I   PIC 99.
01  J   PIC 99.
01  TEMP PIC 99.

PROCEDURE DIVISION.
BEGIN.
    PERFORM 1000-INITIALIZE-DATA
    PERFORM 2000-BUBBLE-SORT
    PERFORM 3000-PRINT-SORTED-DATA
    STOP RUN.

1000-INITIALIZE-DATA.
    DISPLAY "Initial Array:".
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
        DISPLAY ARR(I)
    END-PERFORM.

2000-BUBBLE-SORT.
    PERFORM VARYING I FROM 1 BY 1 UNTIL I >= N
        PERFORM VARYING J FROM 1 BY 1 UNTIL J <= N - I
            IF ARR(J) > ARR(J + 1)
                MOVE ARR(J) TO TEMP
                MOVE ARR(J + 1) TO ARR(J)
                MOVE TEMP TO ARR(J + 1)
            END-IF
        END-PERFORM
    END-PERFORM.

3000-PRINT-SORTED-DATA.
    DISPLAY "Sorted Array:".
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
        DISPLAY ARR(I)
    END-PERFORM.