#include <iostream>
#include <vector>

aspect BubbleSortAspect {
    pointcut bubbleSortCall: call(void BubbleSort.sort(std::vector<int>&));
    
    advice bubbleSortCall {
        std::vector<int>& arr = thisJoinPoint.args()[0];
        int n = arr.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - 1 - i; j++) {
                if (arr[j] > arr[j + 1]) {
                    std::swap(arr[j], arr[j + 1]);
                }
            }
        }
    }
};

class BubbleSort {
public:
    void sort(std::vector<int>& arr) {
        // AspectC++ will inject the sorting logic here
    }
};

// Пример использования
int main() {
    std::vector<int> arr = {5, 3, 8, 4, 2};
    BubbleSort sorter;
    sorter.sort(arr);
    for (int num : arr) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
    return 0;
}
