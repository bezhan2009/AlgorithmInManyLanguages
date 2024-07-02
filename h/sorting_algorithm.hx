class Main {
    static public function main():Void {
        var arr:Array<Int> = [64, 34, 25, 12, 22, 11, 90];
        bubbleSort(arr);
        trace("Sorted array: " + arr);
    }

    static function bubbleSort(arr:Array<Int>):Void {
        var n:Int = arr.length;
        var swapped:Bool;
        do {
            swapped = false;
            for (i in 0...n-1) {
                if (arr[i] > arr[i + 1]) {
                    var temp:Int = arr[i];
                    arr[i] = arr[i + 1];
                    arr[i + 1] = temp;
                    swapped = true;
                }
            }
        } while (swapped);
    }
}
