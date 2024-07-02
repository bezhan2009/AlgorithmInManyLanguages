package {
    public class Main {
        public static function main():void {
            var arr:Array = [64, 34, 25, 12, 22, 11, 90];
            bubbleSort(arr);
            trace("Sorted array: " + arr);
        }

        public static function bubbleSort(arr:Array):void {
            var n:int = arr.length;
            var swapped:Boolean;
            do {
                swapped = false;
                for (var i:int = 0; i < n-1; i++) {
                    if (arr[i] > arr[i+1]) {
                        var temp:int = arr[i];
                        arr[i] = arr[i+1];
                        arr[i+1] = temp;
                        swapped = true;
                    }
                }
            } while (swapped);
        }
    }
}
