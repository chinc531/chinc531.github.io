import processing.video.*;
Capture cam;
void setup()
{
 size(640,480);
 String[] cameras = Capture.list();
 for(String name : cameras)
 {
   println(name);
 }
}
