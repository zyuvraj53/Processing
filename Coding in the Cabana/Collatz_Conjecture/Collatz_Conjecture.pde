void setup() {
  size(600, 600);
  background(125, 0, 255);
  
  float len = 60, angle = PI / 32;
  translate(width / 2, height);
  IntList sequence = new IntList();
  
  for (int i = 1; i < 100; ++i) {
    
    int n = i;
    
    do{
      sequence.append(n);
      n = collatz(n);
    } while(n != 1);
    sequence.append(1);
    sequence.reverse();
    
    resetMatrix();
    translate(width / 2, height / 2);
    
    for (int j = 0; j < sequence.size(); ++j) {
      int value = sequence.get(j); 
      if (n % 2 ==  0) rotate(angle);
      else rotate( -angle);
      
      stroke(255);
      line(0, 0, 0, -len);
      translate(0, -len);
    }
  }
  println("finished");
}



// void draw() {

// }

int collatz(int n) {
  if (n % 2 == 0) {
    return n / 2;
  } else{
    return n * 3 + 1;
  }
}