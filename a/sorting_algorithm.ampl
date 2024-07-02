param n;
param a{1..n};

var i integer;
var j integer;
var temp;

for {i in 1..n} {
    for {j in 1..n-1} {
        if a[j] > a[j+1] then {
            temp := a[j];
            a[j] := a[j+1];
            a[j+1] := temp;
        }
    }
}

for {i in 1..n} {
    printf "%d\n", a[i];
}
