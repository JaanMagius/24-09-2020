int [] numArray = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 };
int temp = 0;

void setup() {
  origArray();
  sortArray();
}

void origArray() {
  println("Original array");
  for (int i = 0; i < numArray.length; i++) {
    println(numArray[i] + " ");
  }
}

void sortArray() {
  println("Sorted array");
 for (int i = 0; i < numArray.length; i ++) {
  for (int j = i + 1; j < numArray.length; j++) {
   if (numArray[i] > numArray[j]) {
    temp = numArray[i];
    numArray[i] = numArray[j];
    numArray[j] = temp;
   }
  }
 }
 println(numArray);
}
