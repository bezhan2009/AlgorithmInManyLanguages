/ Bubble Sort in Q
bubbleSort: {
  n: count x;
  for[i: 0; i < n - 1; i + 1;
    for[j: 0; j < n - 1 - i; j + 1;
      if[x[j] > x[j + 1];
        / Swap elements
        temp: x[j];
        x[j]: x[j + 1];
        x[j + 1]: temp;
      ];
    ];
  ];
  x
};

/ Example usage
list: 5 3 8 4 2;
sortedList: bubbleSort list;
sortedList
