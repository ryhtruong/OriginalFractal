int len = 50;
public void setup()
{
  background(0);
  size(800, 800);
  rectMode(CENTER);
}
public void draw()
{
  fractal(400,400,len);
}
public void keyPressed() {
  if(keyCode == UP) {
    len+=10;
  }
  if (len > 0) {
    if(keyCode == DOWN) {
      len-=10;
    }
  }
}
public void fractal(int x, int y, int len) 
{
  rect(x, y, len, len);
  if (len > 10) {
    fractal(x, y+len*3/4, len/2);
    fractal(x, y-len*3/4, len/2);
    fractal(x+len*3/4, y, len/2);
    fractal(x-len*3/4, y, len/2);
  }
}


