float[] randomArr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
int Rand = (int)random(randomArr.length);


void setup() {
  noLoop();
  divisible(5);
  returnRandom();
  recurInt(10);
  FibNums(1,1);
}

void divisible(int i) {
  for (int j = 1; j < 100; j++) {
    if (j % i == 0) {
      println(j);
    }
  } 
}

void returnRandom(){
  println(randomArr[Rand]);
}

void recurInt(int n) {
  if (n <= 0) {
    println(0);
    return;
  }
  println(n);
  n --;
  recurInt(n);
}

void FibNums(int h, int w) {
  println(w +"\t"+ h);
  if (h >= 10000) {
    return;
  } else {
  int temp = h;
  h += w;
  w = temp;
  FibNums(h,w);
  }
}
