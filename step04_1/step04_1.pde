//Q: 能不能改用漂亮的圖片, 來顯示數字
//(1) 在 images.google.com 找到10張圖 0....9
//    ex. lconsPng Golden Number 1 lcons PNG
//(2) 存在我們的專案目錄,檔名: 0.png ~ 9.png
//    使用陣列讀進來
PImage [] img = new PImage[10];//0....9
void setup()
{
  //size(224*5,225*2);
  size( 1120, 450);
  for(int i=0; i<10; i++) img[i]=loadImage(i+".png");
}
void draw()
{
  for(int i=0; i<10; i++)
  {
    //int x = (i%5) *224, y= int(i/5)*225;
    int x =i*100, y=0;
    image(img[i], x, y, 100,100);
  }
}
