//陣列、for迴圈: 五子棋(棋盤)
//int go[9][9]; C語言
//int [][]go = new int[9][9];//Java/processing
int [][]go = 
{
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,1,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0},
  {1,1,0,0,0,0,0,0,0}
};
void setup()
{
  size(500,500);
}
void draw()
{
  background(253,236,180);
  for(int i=0; i<9; i++)
  {
    line(50+50*i, 50, 50+50*i, 450);
    line(50, 50+50*i, 450, 50+50*i);
  }
  for(int i=0; i<9; i++)
  {
    for(int j=0; j<9; j++)
    {
      if(go[i][j]==1) 
      {
        int x=50+50*j, y=50+50*i;
        fill(255); ellipse(x,y,40,40);
      }
    }
  }
}
void mousePressed()
{
  int j = (mouseX-25)/50;
  int i = (mouseY-25)/50;
  go[i][j]=1;
}
