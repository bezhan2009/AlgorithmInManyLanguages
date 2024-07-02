bubbleSort:{[arr]
  n:count arr;
  do[n-1; 
    do[n-i-1; 
      if[arr[x]>arr[x+1];
        arr[x; x+1]: arr[x+1; x]
      ]
    ]
  ];
  arr
}

/ Пример использования
arr: (5 3 8 4 2)
bubbleSort arr
