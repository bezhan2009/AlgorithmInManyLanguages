10 DIM arr(7)
20 LET arr(1) = 64
30 LET arr(2) = 34
40 LET arr(3) = 25
50 LET arr(4) = 12
60 LET arr(5) = 22
70 LET arr(6) = 11
80 LET arr(7) = 90
90 LET n = 7
100 LET swapped = 1
110 IF swapped = 0 THEN GOTO 160
120 LET swapped = 0
130 FOR i = 1 TO n - 1
140 IF arr(i) > arr(i + 1) THEN LET temp = arr(i) : LET arr(i) = arr(i + 1) : LET arr(i + 1) = temp : LET swapped = 1
150 NEXT i
160 IF swapped = 1 THEN GOTO 110
170 FOR i = 1 TO n
180 PRINT arr(i)
190 NEXT i
