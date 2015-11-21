Wall w;
int countW;
int clr1;
Wall [] Walls;

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
 public int width,height,widthB,heightB,x,y,move_x,move_y;
 public color clr;
 private ArrayList<Brick> bricks = new ArrayList<Brick>();
 
 public Wall (color c,int w,int h,int wB,int hB,int _x,int _y)
 {
   width = w;
   height = h;
   widthB = wB;
   heightB = hB;   
   clr = (c == -1 ? color(random (0,256), random (0,256), random (0,256)) : c);
   x = _x;
   y = _y;
     for ( int i = 0;i < h ;i++)
       for (int j = 0; j < w;j++)
          bricks.add(new Brick( x+wB*j , y+hB*i , wB, hB, c == -2 ? color(random (0,256), random (0,256), random (0,256)) : clr));
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
  size (500,500);  
  countW = (int) random(1 , 10);
  Walls = new Wall [countW]; 
  for (int i = 0 ; i < countW ; i++)
  {
    clr1 = (int) random (-3,-1);  
    Walls[i] = new Wall(clr1,6,3,30,15,(int) random (0,width-6*30),(int) random (0,height-3*15));
  }
  int i = 0 ;
  background (204, 102, 0);
}

void draw ()
{
  for (int i = 0 ; i < countW ; i++)
    Walls[i].Show();
}

/*
DZ 1. ronacvetnuje kurpucu v stene novuj constructor v kotorum nebudut ukayan cvet i budut ivo padbirat drugim obroyom 
   2. slucajnaje kolicistvo sten i ani dvigajutsa i v etom nomer 1 
*/
