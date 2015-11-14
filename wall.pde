

class Brick 
{
 public int x,y,w,h;
 public color c;
  
 public Brick (int x, int y, int w, int h, color c)
 {
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.c = c;
 }
 
 public void Show ()
 {
   fill(c);
   rect (x,y,w,h);
 } 
}


 class Wall 
{
 public int width,height,x,y,bx,by;
 public color c;
 private ArrayList<Brick> bricks = new ArrayList<Brick>();
 
 public Wall (params)
 {
   this.param;
   bricks.add = new brick
 }
 
 public Show ()
 {
  showing of wall 
 }
 
}

ArrayList<Brick> list;

void setup ()
{
  int i = 0 ;
  size (500,500);
  background (204, 102, 0);
  list = new ArrayList <Brick> ();
  while ( i < 100)
  {
  int posR = (int)random (0, width);
  int w = 30;
  int h = 30;
  int r = (int)random ( 0, 256);
  int g = (int)random ( 0, 256);
  int b = (int)random ( 0, 256);    
  list.add(new Brick(posR,posR,w,h,color (r,g,b))) ;
  i++;
  }
  
}

void draw ()
{
  
  for ( int i = 0; i < list.size() ; i++)
  {
    int moveX = (int) random ( -25,25);
    int moveY = (int) random ( -25,25);    
    Brick b = list.get(i);
    b.Show();
    b.x += moveX;
    b.y += moveY;
  }
}
