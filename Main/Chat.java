import java.awt.Font;
import java.awt.FontMetrics;
import processing.core.*;
import java.lang.Math;
public class Chat {
  PApplet p;
  private int messageCount;
  public void chatUI(){
    questionUI();

  }
  Chat(PApplet p){
    this.p = p;
  }
  public void chatBubble(String chatMessage, boolean received){
    int bottomRightFillet, bottomLeftFillet;
    float chatWidth, xVal;

    chatWidth = p.textWidth(chatMessage);
    if (received){
      xVal = 26;
      bottomRightFillet = 20;
      bottomLeftFillet = 80;
    } else {
      xVal = 1054 -chatWidth;
      bottomLeftFillet = 20;
      bottomRightFillet = 80;
    }
    p.rect(410f, 292f * messageCount + 242f, chatWidth +100, 100f);
    messageCount++;
  }

  public void questionUI(){
    PImage sendIcon;
    sendIcon = p.loadImage("/icons/sendArrow.png");
    p.fill(217,217,217);
    p.rect(26,1547,1020,350,80);
    p.fill(255,255,255);
    p.line(26, 1722, 1046, 1722);
    p.text(Main.dialogue1Counter, 800, 1571);
    p.text(Main.dialogue2Counter, 800, 1736);
    p.text(Data.questions[0], 78, 1477);
    p.text(Data.questions[1], 78, 1616);
    //p.image(sendIcon, 906, 1787);
  }
}