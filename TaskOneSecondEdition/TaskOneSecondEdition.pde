//Setup, declaration and initalization of array
void setup() {
  int [] valArr = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2}; //Array values
  int n = valArr.length;                                       //integer for array-length
  bubble(valArr, n);                                           //Calling fucntion bubble()
  println("Sorted array");                                     //Prints string in console
  printArray(valArr, n);                                       //Print array in console (sorted)
}

//Method for sort (bubble)
void bubble(int valArr[], int n) {
  int i, j, temp;                      //Local integers for calculating and swapping index[] positions
  boolean swapped;                     //Boolean to check if the loop swapped two indexes[]
  for (i = 0; i < n - 1; i ++) { 
    swapped = false;
    for (j = 0; j < n - 1; j++) { 
      if (valArr[j] > valArr[j+1]) {
        temp = valArr[j];
        valArr[j] = valArr[j+1];
        valArr[j + 1] = temp;
        swapped = true;
      }
    }
    if (swapped == false) {            //Making sure we dont end up with an infinite loop
      break;                           //using break;
    }
  }
}

//Function to print the sorted array
void printArray(int valArr[], int size) { 
  int i;
  for (i = 0; i < size; i++) {
  println(valArr[i]);                  //Prints values from the sorted array to the console
  }
}
