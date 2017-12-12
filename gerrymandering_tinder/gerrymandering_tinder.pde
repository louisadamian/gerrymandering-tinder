boolean chatInactive = true; // activates swtich to chat page
boolean boolLike = false; // makes like button smaller
boolean boolDislike = false; // makes dislike button smaller
boolean likeFunction = false; // active like animation moves profile img to the right
boolean dislikeFunction = false; // active dislike animation moves profile img to the left
int timer, likeTimer, likeCounter, dislikeCounter, switchPageCounter lastMatch;
int oldLikeTimer = 0;
int timerReset = 0;
int timerTime = 12;

void setup() {
        size(1080, 1920);
        background(255, 255, 255);
}

void draw() {
  pullupMainUI();
  keyPressed();
  if (boolTimerReset == true) {
    timerReset = millis();
    timerReset = timerReset/1000;
    boolTimerReset = false;
    }

        likeTimer = millis();
        if (likeTimer-oldLikeTimer >= 50) {
          boolLike = false;
          boolDislike = false;
          oldLikeTimer = likeTimer;
        }
}

void pullupMainUI(/* arguments */) {
  mainUI();
  topUI();
}

void resetTimer(){
  timerReset = millis();
  timerReset = timerReset/1000;
  boolTimerReset = false;
}

void keyPressed() {
  int keyIndex = -1;
  if (!keyPressed) {
    return;
  }
  if ( key == 'w') {
                //chatInactive = false;
                switchPageCounter++;
        }
        if (key == 'a') {
                dislikeCounter++;
                //boolDislike = true;
                //dis

        } else {
                boolDislike = false;
                dislikeFunction = false;
        }
        if (key == 'd') {
                likeCounter++;
                //boolLike = true;
              //  likeFunction();
                //likeFunction = true;
                //oldLikeTimer = likeTimer;
        } else {
                boolLike = false;
                likeFunction = false;
        }
}

void topUI() {
        PImage chatButton;
        String activeInactive;
        if (chatInactive == true) {
                activeInactive = "chat icon (inactive).png";
                //pullupMainUI();
        } else {
                activeInactive = "chat icon (active).png";
                //pullupChat
        }
        chatButton = loadImage(activeInactive);
        int textSize =  48;
        stroke(255);
        fill(0, 0, 0, 65);
        rect(-1, 6, 1082, 115);
        stroke(255);
        fill(255, 255, 255, 255);
        rect(0, 0, 1080, 115);
        imageMode(CENTER);
        image(chatButton, 1080-(1080/9), 115/2);
        textSize(textSize);
        fill(0, 0, 0);
        text(timer, 1080/15, (115/2)+(textSize/3));
        fill(196, 196, 196);
        text(switchPageCounter, (1080-1080/15), (115/2)+(50));
        int keyIndex = -1;
}
void mainUI() {
        background(246, 247, 251);
        PImage profile;
        profile = loadImage("profile.png");
        PImage like;
        like = loadImage("like icon.png");
        PImage dislike;
        dislike = loadImage("dislike icon.png");

        int profileX = 1080/2;
        int profileY = 920;


        imageMode(CENTER);
        image(profile, profileX, profileY);
        likeDislike(like, 1080-(1080/4), 1920-(1920/15), boolLike);
        likeDislike(dislike, 1080/4, 1920-(1920/15), boolDislike);
        textSize(48);
        fill(39, 174, 96);
        text(likeCounter, (1080-1080/4)+80, (1920-1920/15)+(100));
        fill(255, 0, 0);
        text(dislikeCounter, (1080/4)+80, (1920-1920/15)+(100));
        voting(likeCounter, dislikeCounter, switchPageCounter, likeFunction, dislikeFunction, chatInactive);
}
void likeFunction(/* arguments */) {
  boolLike = true;
  oldLikeTimer = likeTimer;
  likeCounter = 0;
  dislikeCounter = 0;
  switchPageCounter = 0;

  for (int i = 0; i<1080/2; i = i+1) {
          profileX = profileX+1;
  }
}
void dislikeFunction(){
  boolDislike = true;
  oldLikeTimer = likeTimer;
  dislikeCounter = 0;
  likeCounter = 0;
  switchPageCounter = 0;
  for (int i = 0; i<1080/2; i = i+1) {
          profileX = profileX-1;
  }
}
void likeDislike(PImage imageName, float x, float y, boolean pressed) {
        int across = 160;
        int up = 160;
        int across2 = 100;
        int up2 = 100;
        if (pressed == true) {
                across = across-across/4;
                up = up-up/4;
                across2 = across2-across2/4;
                up2 = up2-up2/4;
        } else {
                across = 160;
                up = 160;
                across2 = 100;
                up2 = 100;
        }

        ellipseMode(CENTER);
        fill(0, 0, 0, 65);
        ellipse(x+5, y+10, across, up);
        fill(255, 255, 255);
        ellipse(x, y, across, up);
        image(imageName, x, y, across2, up2);
}

void allChats()

void chatConcacts(String contanctName, String contactPhoto) {
}

void chat() {
  background(246, 247, 251);

}
void chatConcacts() {
}
void voting(int voteCase1, int voteCase2, int voteCase3, int voteCase4, boolean voteCase1Bool, boolean voteCase2Bool, boolean voteCase3Bool, boolean voteCase4Bool) {

}
void voting(int voteCase1, int voteCase2, int voteCase3, boolean voteCase1Bool, boolean voteCase2Bool, boolean voteCase3Bool) {
        int voteCount = voteCase1+voteCase2+voteCase3;
        if (voteCase1 >= 99) {
                voteCase1 = 99;
        }
        if (voteCase2 >= 99) {
                voteCase2 = 99;
        }
        if (voteCase3 >= 99) {
                voteCase3 = 99;
        }
        if (voteCount <= 3 || timer <= 0) {
                timerReset = millis();
                timerReset = timerReset/1000;
        }
        if (voteCount >= 3) {
                int m = millis();
                m = m/1000;
                m = m-timerReset;
                timer = timerTime-m;
        } else {
                timer = timerTime;
        }
        if (timer <= 10) {
                fill(235, 87, 87);
        }
        if (timer <= 0) {
                timer = millis();
                if (voteCase3 == voteCase1 || voteCase3 == voteCase2 || voteCase2 == voteCase1) {
                        float random = random(1, 3);
                        if (random <= 1) {
                                voteCase1++;
                        }
                        if (random <= 2 && random > 1) {
                                voteCase2++;
                        }
                        if (random <= 3 && random > 2) {
                                voteCase3++;
                        }
                }
                if (voteCase1 > voteCase2 && voteCase1 > voteCase3) {
                        voteCase1Bool = !voteCase1Bool;
                        resetTimer();
                }
                if (voteCase2 > voteCase1 && voteCase2 > voteCase3) {
                        voteCase2Bool = !voteCase2Bool;
                        resetTimer();
                }
                if (switchPageCounter > likeCounter && switchPageCounter > dislikeCounter) {
                        voteCase3Bool = !voteCase3Bool;
                        resetTimer();
                }
        }
}
void populate() {
        // addDisctict("NC 13", "profile.png", )
}
