import com.hamoid.*;

String filename;
String timestamp;

VideoExport videoExport;


void videosetup() {
filename = timestamp = year() + nf(month(),2) + nf(day(),2) + "-"  + nf(hour(),2) + nf(minute(),2) + nf(second(),2);

  videoExport = new VideoExport(this, filename + "basic.mp4");

}

void video(int frames) {

  if (frameCount == 1){
   videosetup(); 
  }
  
 videoExport.saveFrame();
  if (frameCount == frames) {
    exit();
  }
}