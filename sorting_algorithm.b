SORT: PROCEDURE RETURNS (VECTOR OF INTEGER);
    DECLARE I, J, TEMP, N INTEGER;
    EXTERNAL A, K;

    N = #A;
    FOR I = 2 STEP 1 UNTIL N DO
        TEMP = A[I];
        J = I - 1;
        WHILE J > 0 AND A[J] > TEMP DO
            A[J + 1] = A[J];
            J = J - 1;
        OD;
        A[J + 1] = TEMP;
    OD;

    K = #A;
    RETURN A;
END;
