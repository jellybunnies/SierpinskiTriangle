int size = 600;
int colour = 255;
int change = 0;

public void setup()
{
  size(600,600);
}
public void draw()
{
  background(0);
  fill(colour,130,250);
  sierpinski(0,600,600);
}
public void mousePressed()//optional
{
  size = size/2;
  if (size < 10) {
    size = 600;
  }
}
public void mouseMoved()
{
  colour = colour + change;
  if (colour == 0) {
    change = 1;
  } else {
    if (colour == 255) {
    change = -1;
   }
  }
}
public void sierpinski(int x, int y, int len) 
{
  for(int i = 0; i < 10; i++){
    if(len <= size){
      triangle(x,y,x+len/2,y-len,x+len,y);
    }
    else{
      sierpinski(x,y,len/2);
      sierpinski(x+len/4,y-len/2,len/2);
      sierpinski(x+len/2,y,len/2);
    }
  }
}
