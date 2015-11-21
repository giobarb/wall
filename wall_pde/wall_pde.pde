Wall w;

class Brick 
{
 public int x,y,w,h;
 public color c;
  
 public Brick ()
 {
  this.x = (int)random (0,20);
  this.y = (int)random (0,20);
  this.w = (int)random (0,20);
  this.h = (int)random (0,20);
  this.c = (int)random (0,256);
 }
  
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
 public int width,height,widthB,heightB,x,y,move_x,move_y,walls;
 public color clr;
 private ArrayList<Brick> bricks = new ArrayList<Brick>();
 
 public Wall (int w,int h,int wB,int hB,int _x,int _y,int W)
 {
   width = w;
   height = h;
   widthB = wB;
   heightB = hB;
   walls = W;
   clr = c;
   x = _x;
   y = _y;
   for ( int k = 0;k < W;k++);
     for ( int i = 0;i < h ;i++)
       for (int j = 0; j < w;j++)
         bricks.add (new Brick( x+wB*j , y+hB*i , wB, hB, random (int) (0,100)));
 }
 
 public void Show ()
 {
   for ( int i = 0;i < bricks.size();i++)
     bricks.get(i).Show();     
 }
 
 public void Change (int mx,int my)
 {
   for ( int i = 0;i < bricks.size(); i++)
    {
    bricks.get(i).x += mx;
    bricks.get(i).y += my;
    }     
 } 
}

ArrayList<Brick> list;

void setup ()
{
  w = new Wall(6,3,30,15,30,30);
  int i = 0 ;
  size (500,500);
  background (204, 102, 0);
}

void draw ()
{
  
//  for ( int i = 0; i < list.size() ; i++)
//  {
//    int moveX = (int) random ( -25,25);
//    int moveY = (int) random ( -25,25);    
//    Brick b = list.get(i);
//    b.Show();
//    b.x += moveX;
//    b.y += moveY;
//  }
 
  w.Change(25,25);
  w.Show();
}

/*
DZ 1. ronacvetnuje kurpucu v stene novuj constructor v kotorum nebudut ukayan cvet i budut ivo padbirat drugim obroyom 
   2. slucajnaje kolicistvo sten i ani dvigajutsa i v etom nomer 1 
*/