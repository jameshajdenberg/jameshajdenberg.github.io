import java.util.Random;
int checkpoint = -1;
int titleCheck = 0;
PImage title;
PImage boypic;
PImage girl;
PImage cave;
PImage poolpic;
PImage koipic;
PImage bear;
PImage caveExit;
PImage citypic;
PImage mallpic;
PImage koipond;
PImage mallInterior;
PImage baker;
PImage police;
PImage pigeon;
PImage win1;
PImage lose1;
PImage flee;
PImage mountain;
PImage taxi;
PImage cableCar;
PImage roadFork;
PImage forest;
PImage cabin;
PImage cabinInterior;
PImage pondpic;
PImage endingpic;
PImage koiGod;
PImage koideath;
PImage trueEnding;
boolean titleScreen = false;
boolean end = false;
boolean ending = false;
boolean gender = false;
boolean boy = false;
boolean koi = false;
boolean left = false;
boolean right = false;
boolean exit = false;
boolean city = false;                
boolean pool = false;
boolean downtown = false;
boolean mall = false;
boolean bakery = false;
boolean koibread = false;
boolean white = false;
boolean pumpernickel = false;
boolean money = false;
boolean poor = false;
boolean pumpedUp = false;
boolean encounter = false;
boolean encounter2 = false;
boolean halfkoibread = false;
boolean koiExplosion = false;
boolean townsville = false;
boolean fled = false;
boolean cableCheck = false;
boolean cableCheck2 = false;
boolean cableCheck3 = false;
boolean taxiCheck = false;
boolean taxiCheck2 = false;
boolean taxiCheck3 = false;
boolean fork = false;
boolean fork2 = false;
boolean fork3 = false;
boolean pond = false;
boolean pigeons = false;
boolean cabins = false;
boolean pond2 = false;
boolean forest1 = false;
boolean fight2 = false;
boolean godhood = false;

public void setup()
{
  boypic = loadImage("boy.jpg");
  girl = loadImage("girl.png");
  poolpic = loadImage("pool.jpg");
  koipic = loadImage("koi.jpg");
  bear = loadImage("bear.jpg");
  cave = loadImage("cave.jpg");
  caveExit = loadImage("exit.jpg");
  citypic = loadImage("city.jpg");
  title = loadImage("title.JPG");
  mallpic = loadImage("mall.jpg");
  koipond = loadImage("koipond.jpg");
  mallInterior = loadImage("mallinterior.jpg");
  baker = loadImage("bakery.jpg");
  police = loadImage("police.jpg");
  pigeon = loadImage("pigeon.jpg");
  win1 = loadImage("win.jpg");
  lose1 = loadImage("lose.jpg");
  flee = loadImage("flee.jpg");
  mountain = loadImage("mountain.png");
  taxi = loadImage("taxi.jpg");
  cableCar = loadImage("cable car.jpg");
  roadFork = loadImage("roadfork.jpg");
  forest = loadImage("forest.jpg");
  cabin = loadImage("cabin.jpg");
  cabinInterior = loadImage("cabin interior.jpg");
  pondpic = loadImage("pond.jpg");
  endingpic = loadImage("ending.jpg");
  koiGod = loadImage("god2.jpg");
  koideath = loadImage("koideath.jpg");
  trueEnding = loadImage("trueending.JPG");
}

public void settings()
{
  size(960, 540);
}

public void draw()
{
  if (titleCheck == 0)
  {
    end = false;
    ending = false;
    checkpoint = -1;
    background(173, 216, 230);
    image(title, 0, 0, 960, 540);
    textSize(30);
    fill(255);
    textAlign(CENTER);
    text("KOI GAME", 480, 270);
    textSize(15);
    text("THIS GAME USES KEYBOARD INPUTS. USE THE KEYS SHOWN ONSCREEN IN () TO MAKE CHOICES.", 480, 330);
    textSize(20);
    text("SPACEBAR TO START.", 480, 400);
    titleCheck++;
  }
  if (titleCheck == 1)
  {
    if (keyPressed && key == ' ')
    {
      checkpoint++;
      titleCheck++;
    }
  }
  if (checkpoint == 0)
  {
    end = false;
    ending = false;
    background(173, 216, 230);
    image(title, 0, 0, 960, 540);
    textSize(24);
    fill(255);
    textAlign(CENTER);
    text("WELCOME TO koi game. ARE YOU A BOY (b), OR A GIRL (g)?", 480, 395);
    image(boypic, 240, 270);
    image(girl, 720, 270);
    if (keyPressed && key == 'b')//boy
    {
      background(173, 216, 230);
      image(cave, 0, 0);
      fill(255);
      text("YOU WAKE UP IN A CAVE. DO YOU GO LEFT (l), OR RIGHT (r)?", 480, 395);
      boy = true;
      checkpoint++;
    }
    if (keyPressed && key == 'g')//girl
    {
      background(255, 0, 0);
      text("YOU LOSE.", 480, 395);
      checkpoint--;
      end = true;
    }
  }
  if (checkpoint == 1)
  {
    if (keyPressed && key == 'l')//left
    {
      background(173, 216, 230);
      image(caveExit, 0, 0, 960, 540);
      text("YOU SEE THE EXIT TO THE CAVE. YOU CONTINUE FORWARD (x).", 480, 420);
      left = true;
      exit = true;
      checkpoint++;
    }
    if (keyPressed && key == 'r' && pool == false)//right
    {
      background(173, 216, 230);
      image(poolpic, 0, 0);
      textSize(20);   
      fill(255);
      text("YOU SEE A POOL WITH SOMETHING GLISTENING AT THE BOTTOM.", 480, 430);
      text("DO YOU DIVE DOWN AND GET IT (d), OR TURN BACK AROUND (t)?", 480, 450);
      right = true;
      checkpoint++;
    }
  }
  if (checkpoint == 2)
  {
    if (keyPressed && key == 'x' && left == true && city == false)//exit
    {
      background(173, 216, 230);
      image(citypic, 0, 0, 960, 540);
      textSize(15);
      text("THERE'S A MASSIVE CITY IN FRONT OF YOU!", 480, 400);
      text("DO YOU CONTINUE INTO IT (c), OR HIDE IN THE CAVE (h)?", 480, 500);
      city = true;
      checkpoint++;
    }
    if (keyPressed && key == 'd' && right == true && koi == false)//dive
    {
      image(koipic, 0, 0);
      textSize(15);
      text("IT'S JUST A KOI. YOU TAKE IT (FOR WHATEVER REASON) AND RETURN TO THE ROOM BEFORE (spacebar).", 480, 500);
      pool = true;
      koi = true;
      checkpoint++;
    }
    if (keyPressed && key == 't' && right == true)//return to first cave room
    {
      background(173, 216, 230);
      image(cave, 0, 0);
      textAlign(CENTER);
      textSize(20);
      fill(255);
      text("YOU'RE BACK AT THE CAVE ENTRANCE. THERE'S NOTHING TO THE RIGHT. GO LEFT? (l)", 480, 395);
      checkpoint--;
    }
  }
  if (checkpoint == 3)
  {
    if (keyPressed && key == ' ' && pool == true && left == false)//return to pool room
    {
      background(173, 216, 230);
      image(poolpic, 0, 0);
      textSize(20);   
      fill(255);
      text("THERE'S NOTHING IN THE POOL... TURN BACK AROUND? (t)", 480, 430);
      left = false;
      checkpoint--;
    }
    if (keyPressed && key == 'c' && city == true && downtown == false)//go into city
    {
      background(173, 216, 230);
      image(mallpic, 0, 0, 960, 540);
      textSize(15);
      text("TO YOUR RIGHT, THERE'S A MALL (m). TO YOUR LEFT, THERE'S A BAKERY (b). WHERE DO YOU GO?", 480, 500);
      downtown = true;
      checkpoint++;
    }
    if (keyPressed && key == 'h' && city == true && koi == false)//eaten by bear
    {        
      background(255, 0, 0);
      image(bear, 0, 0);
      textAlign(CENTER);
      textSize(15);
      fill(0);
      text("YOU RETURN TO THE CAVE AND MANAGE TO LIVE OFF OF KOI FOR A FEW WEEKS. THEN A BEAR EATS YOU.", 480, 100);
      textSize(30);
      text("GAME OVER.", 480, 270);
      end = true;
    }
    if (keyPressed && key == 'h' && city == true && koi == true)//eaten by bear alt
    {
      background(255, 0, 0);
      image(bear, 0, 0);
      textAlign(CENTER);
      textSize(15);
      fill(0);
      text("AS SOON AS YOU WALK BACK IN, A BEAR SMELLS KOI ON YOU AND EATS YOU.", 480, 100);
      textSize(30);
      text("GAME OVER.", 480, 270);
      end = true;
    }
  }
  if (checkpoint == 4)
  {
    if (keyPressed && key == 'm' && downtown == true && mall == false)//mall
    {
      background(173, 216, 230);
      if (koi == true)
      {
        image(koipond, 0, 0, 960, 540);
        fill(255);
        text("YOU SEE A POND AT THE FRONT OF THE MALL. WOULD YOU LIKE TO PUT THE KOI IN THE POND? (Y/N)", 480, 500);
        mall = true;
        checkpoint++;
      }
      if (koi == false)
      {
        image(mallInterior, 0, 0, 940, 560);
        fill(255);
        text("SHOPPING IS FOR GIRLS. YOU GET BORED AND LEAVE THE MALL. (spacebar)", 480, 500);
        mall = true;
        checkpoint++;
      }
    }
    if (keyPressed && key == 'b' && downtown == true)//bakery
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("BAKER: I CAN MAKE YA SOME AMAZIN' BREAD!", 480, 400);
      if (koi == false)
      {
        text("FOR WHITE BREAD, PRESS 'w.' FOR PUMPERNICKEL, PRESS 'p.'", 480, 500);
        bakery = true;
        checkpoint++;
      }
      if (koi == true)
      {
        text("I SEE YA'VE GOT SOME KOI THERE. I CAN MAKE YA SOME SPECIAL KOI BREAD IF YA WANT! (Y/N)", 480, 500);
        bakery = true;
        checkpoint++;
      }
    }
    if (keyPressed && key == ' ' && mall == true && koi == true)//return to town center
    {
      background(173, 216, 230);
      image(mallpic, 0, 0, 960, 540);
      text("YOU STILL SEE THE BORING MALL ON YOUR LEFT. GO INTO THE BAKERY ON THE RIGHT? (b)", 480, 500);
    }
  }
  if (checkpoint == 5)
  {
    if (keyPressed && key == ' ' && mall == true && koi == false)//return to town center
    {
      background(173, 216, 230);
      image(mallpic, 0, 0, 960, 540);
      text("YOU STILL SEE THE BORING MALL ON YOUR LEFT. GO INTO THE BAKERY ON THE RIGHT? (b)", 480, 500);
      mall = false;
      checkpoint--;
    }
    if (keyPressed && key == 'n' && mall == true && koi == true)//leave mall
    {
      text("YOU LEAVE THE MALL. (spacebar)", 480, 520);
      checkpoint--;
    }
    if (keyPressed && key == 'y' && mall == true && koi == true)//arrested
    {
      background(255, 0, 0);
      image(police, 0, 0, 960, 540);
      fill(0);
      textSize(15);
      text("THE KOI IS DEAD AFTER BEING CARRIED AROUND BY YOU FOR SO LONG, AND IT FLOATS TO THE TOP OF THE POOL.", 480, 155);
      text("IN ADDITION, YOU ARE PLACED UNDER ARREST FOR TERRORIZING A PUBLIC FACILITY WITH A DEAD ANIMAL.", 480, 170);
      textSize(30);
      fill(255);
      text("GAME OVER.", 480, 270);
    }
    if (keyPressed && key == 'n' && bakery == true)//white bread vs pumpernickel
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("BAKER: I CAN MAKE YA SOME AMAZIN' BREAD!", 480, 400);
      text("FOR WHITE BREAD, PRESS 'w.' FOR PUMPERNICKEL, PRESS 'p.'", 480, 500);
    }
    if (keyPressed && key == 'y' && bakery == true && koi == true)//free koi bread
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      textSize(15);
      text("HERE YA GO! ON THE HOUSE.", 480, 400);
      text("YOU LEAVE THE AROMATIC BAKERY. (spacebar)", 480, 500);
      koibread = true;
      koi = false;
      checkpoint++;
    }
    if (keyPressed && key == 'w' && bakery == true)//white bread
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("HERE YA GO! WHITE BREAD IS $5.", 480, 400);
      text("YOU DON'T HAVE ANY MONEY. DO YOU STEAL THE BREAD (s) OR GIVE IT BACK (g)?", 480, 500);
      white = true;
      checkpoint++;
    }
    if (keyPressed && key == 'p' && bakery == true)//pumpernickel
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("HERE YA GO! PUMPERNICKEL IS $3.", 480, 400);
      text("YOU DON'T HAVE ANY MONEY. DO YOU STEAL THE BREAD (s) OR GIVE IT BACK (g)?", 480, 500);
      pumpernickel = true;
      checkpoint++;
    }
  }
  if (checkpoint == 6)
  {
    if (keyPressed && key == 's' && white == true)//steal white bread
    {
      background(173, 216, 230);
      image(police, 0, 0, 960, 540);
      fill(0);
      textSize(15);
      text("WHO DO YOU TIHNK YOU ARE? STEALING WHITE BREAD LIKE THAT. SMH.", 480, 170);
      textSize(30);
      fill(255);
      text("GAME OVER.", 480, 270);
      end = true;
    }
    if (keyPressed && key == 's' && pumpernickel == true)//steal pumpernickel
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("NO ONE LIKES PUMPERNICKEL ANYWAY. NOW GET OUTTA HERE!.", 480, 400);
      text("YOU LEAVE THE BAKERY OUT THE BACK WITH PUMPERNICKEL IN HAND. (spacebar)", 480, 500);
      pumpedUp = true;
      checkpoint++;
    }
    if (keyPressed && key == 'g' && white == true)//return white bread
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("WOW! YA DIDN'T STEAL IT! VERY UNUSUAL AROUND HERE. HERE, HAVE SOME MONEY.", 480, 400);
      text("YOU LEAVE THE BAKERY OUT THE BACK WITH $2 IN HAND. (spacebar)", 480, 500);
      money = true;
      checkpoint++;
    }
    if (keyPressed && key == 'g' && pumpernickel == true)//return pumpernickel
    {
      background(173, 216, 230);
      image(baker, 0, 0, 960, 540);
      text("I DON'T KNOW WHY YA'D GIVE IT BACK TO ME, BUT OK.", 480, 400);
      text("YOU LEAVE THE BAKERY EMPTYHANDED. (spacebar)", 480, 500);
      poor = true;
      checkpoint++;
    }
    if (keyPressed && key == ' ' && koibread == true)//attacked by pigeon
    {
      background(173, 216, 230);
      image(pigeon, 0, 0, 960, 540);
      text("YOU ARE ATTACKED BY A WILD PIGEON! IT ATTEMPTS TO TAKE YOUR KOI BREAD.", 480, 400);
      text("DO YOU FIGHT IT FOR THE BREAD (f), OR LET IT GET AWAY (l)?", 480, 500);
      encounter = true;
      checkpoint++;
    }
  }
  if (checkpoint == 7)
  {
    if (keyPressed && key == ' ' && koi == true)//attacked by pigeon
    {
      background(173, 216, 230);
      image(pigeon, 0, 0, 960, 540);
      text("YOU ARE ATTACKED BY A WILD PIGEON! IT ATTEMPTS TO TAKE YOUR KOI .", 480, 400);
      text("DO YOU FIGHT IT FOR THE KOI (f), OR LET IT GET AWAY (l)?", 480, 500);
      encounter2 = true;
      encounter = true;
    }
    if (keyPressed && key == 'f' && encounter == true)//fight pigeon
    {
      int k = (int)random(1, 3);
      if (k == 1)//win
      {
        background(173, 216, 230);
        image(win1, 0, 0, 960, 540);
        fill(0);
        textSize(15);
        text("YOU GET AWAY WITH HALF OF THE BREAD, AND THE PIGEON GETS AWAY WITH THE OTHER HALF.", 480, 230);
        text("CONTINUE INTO THE CITY? (c)", 480, 450);
        halfkoibread = true;
        checkpoint++;
      } 
       else//lose
      {
        background(255, 0, 0);
        image(lose1, 0, 0, 960, 540);
        fill(0);
        textSize(20);
        text("THE PIGEON SCRATCHES YOUR EYE AND THEN CALLS ITS FRIEND TO THROW A ROCK AT YOU.", 480, 170);
        fill(255);
        text("TWO BIRDS KILL YOU WITH ONE STONE.", 480, 400);
        textSize(30);
        text("GAME OVER.", 480, 270);
        end = true;
      }
    }
    if (keyPressed && key == 'f' && encounter2 == true)//fight pigeon
    {
      int l = (int)random(1, 3);
      if (l == 1)//win
      {
        background(173, 216, 230);
        image(win1, 0, 0, 960, 540);
        fill(0);
        textSize(15);
        text("THE KOI EXPLODES. NO ONE GETS ANYTHING.", 480, 250);
        text("CONTINUE INTO THE CITY? (c)", 480, 460);
        koi = false;
        koiExplosion = true;
        checkpoint++;
      } 
       else//lose
      {
        background(255, 0, 0);
        image(lose1, 0, 0, 960, 540);
        fill(0);
        textSize(20);
        text("THE PIGEON SCRATCHES YOUR EYE AND THEN CALLS ITS FRIEND TO THROW A ROCK AT YOU.", 480, 170);
        fill(255);
        text("TWO BIRDS KILL YOU WITH ONE STONE.", 480, 400);
        textSize(30);
        text("GAME OVER.", 480, 270);
        end = true;
      }
    }
    if (keyPressed && key == 'l' && encounter == true)//flee pigeon
    {
      background(173, 215, 230);
      image(flee, 0, 0, 960, 540);
      fill(0);
      text("YOU LET GO OF IT AND THE PIGEON FLIES AWAY WITH IT.", 480, 200);
      text("THE PIGEON LEAVES A TRAIL OF DROPPINGS. DO YOU FOLLOW IT (f), OR HEAD DEEPER INTO THE CITY (c)?", 480, 300);
      encounter2 = false;
      fled = true;
      pigeons = true;
      checkpoint++;
    }
    if (keyPressed && key == 'l' && encounter2 == true)//flee pigeon
    {
      background(173, 215, 230);
      image(flee, 0, 0, 960, 540);
      fill(0);
      text("YOU LET GO OF IT AND THE PIGEON FLIES AWAY WITH IT.", 480, 200);
      text("THE PIGEON LEAVES A TRAIL OF DROPPINGS. DO YOU FOLLOW IT (f), OR HEAD DEEPER INTO THE CITY (c)?", 480, 300);
      encounter = false;
      fled = true;
      pigeons = true;
      checkpoint++;
    }
    if (keyPressed && key == ' ' && poor == true && koi == false)
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
      checkpoint++;
    }
    if (keyPressed && key == ' ' && pumpedUp == true && koi == false)
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
      checkpoint++;
    }
    if (keyPressed && key == ' ' && money == true && koi == false)
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
      checkpoint++;
    }
  }
  if (checkpoint == 8)
  {
    if (keyPressed && key == 'c' && halfkoibread == true)//townsville
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
    }
    if (keyPressed && key == 'c' && townsville == true)//townsville
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
    }
    if (keyPressed && key == 'c' && koiExplosion == true)//townsville
    {
      background(173, 215, 230);
      image(mountain, 0, 0, 960, 540);
      fill(255);
      text("AFTER WALKING FOR A WHILE, YOU LEARN YOU'RE IN KOI CITY.", 480, 300);
      text("THE LOCALS TELL YOU THERE'S NOT MUCH TO DO IN TOWN, BUT THERE IS A LEGEND ABOUT A KOI GOD.", 480, 400);
      text("THEY SAY HE LIVES ON TOP OF A MOUNTAIN. HOW WOULD YOU LIKE TO TRAVEL?", 480, 450);
      text("TAXI (1)  CABLE CAR (2)  WALK (3)", 480, 500);
      townsville = true;
      fled = false;
    }
    if (keyPressed && key == 'c' && fled == true)//go further into city
    {
      townsville = true;
    }
    if (keyPressed && key == '1' && townsville == true && fled == false)//taxi
    {
      background(173, 215, 230);
      image(taxi, 0, 0, 960, 540);
      fill(255);
      text("TAXI TIME! YOU RIDE UP THE MOUNTAIN AND HAVE A NICE CONVERSATION WITH THE DRIVER.", 480, 450);
      textSize(15);
      taxiCheck = true;
      text("(SPACEBAR TO CONTINUE.)", 480, 500);
      checkpoint++;
    }
    if (keyPressed && key == '2' && townsville == true)//cable car
    {
      background(173, 215, 230);
      image(cableCar, 0, 0, 960, 540);
      fill(255);
      text("THE CABLE CAR IS REALLY SLOW. YOU'RE BORED AND LONELY.", 480, 200);
      textSize(15);
      text("(SPACEBAR TO CONTINUE.)", 480, 500);
      cableCheck = true;
      checkpoint++;
    }
    if (keyPressed && key == '3' && townsville == true)//walk
    {
      background(173, 215, 230);
      image(roadFork, 0, 0, 940, 540);
      textSize(15);
      fill(255);
      text("YOU BEGRUDGINGLY START TO WALK UP THE MOUNTAIN.", 480, 400);
      text("THERE'S A FORK IN THE ROAD. DO YOU GO LEFT (l) OR RIGHT (r)?", 480, 500);
      fork = true;
      checkpoint++;
    }
    if (keyPressed && key == 'f' && fled == true)
    {
      background(173, 215, 230);
      image(forest, 0, 0, 960, 540);
      textSize(15);
      fill(255);
      text("YOU FIND YOURSELF LOST IN A FOREST. YOU CAN GO LEFT (l), OR RIGHT (r).", 480, 450);
      forest1 = true;
      checkpoint = 10;
    }
  }
  if (checkpoint == 9)
  {
    if (keyPressed && key == ' ' && taxiCheck == true)
    {
      background(173, 215, 230);
      image(taxi, 0, 0, 960, 540);
      textSize(15);
      fill(255);
      text("THE DRIVER TELLS YOU ABOUT HIS PROBLEMS AT HOME. HE THINKS HIS WIFE MIGHT WANT TO LEAVE HIM.", 480, 450);
      taxiCheck2 = true;
      textSize(15);
      text("(1 TO CONTINUE.)", 480, 500);
      checkpoint++;
    }
    if (keyPressed && key == ' ' && cableCheck == true)
    {
      background(173, 215, 230);
      image(cableCar, 0, 0, 960, 540);
      fill(255);
      text("THE CABLE CAR IS INCREDIBLY BORING. YOU THINK YOU SEE A MAN ON TOP OF THE CAR IN FRONT OF YOU.", 480, 200);
      cableCheck2 = true;
      textSize(15);
      text("(1 TO CONTINUE.)", 480, 500);
      checkpoint++;
    }
    if (keyPressed && key == 'l' && fork == true)
    {
      background(173, 215, 230);
      image(forest, 0, 0, 960, 540);
      text("THERE'S ONLY ONE PATH FROM HERE. (spacebar)", 480, 450);
      fled = true;
      fork2 = true;
      checkpoint = 11;
    }
    if (keyPressed && key == 'r' && fork == true)
    {
      background(173, 215, 230);
      image(cabin, 0, 0, 960, 540);
      text("YOU'VE FOUND YOUR FAMILY'S OLD SUMMER CABIN! DO YOU SETTLE DOWN (s), OR CONTINUE YOUR QUEST (q)?", 480, 450);
      cabins = true;
      checkpoint = 11;
    }
  }
  if (checkpoint == 10)
  {
    if (keyPressed && key == '1' && taxiCheck2 == true)
    {
      background(173, 215, 230);
      image(taxi, 0, 0, 960, 540);
      textSize(15);
      fill(255);
      text("YOU TELL THE DRIVER HE SHOULD WORK THINGS OUT WITH HIS WIFE. HE THANKS YOU, AND TELLS YOU THE RIDE IS FREE.", 480, 450);
      taxiCheck3 = true;
      textSize(15);
      text("(2 TO CONTINUE.)", 480, 500);
      checkpoint++;
    }
    if (keyPressed && key == '1' && cableCheck2 == true)
    {
      background(173, 215, 230);
      image(cableCar, 0, 0, 960, 540);
      fill(255);
      text("THE MAN LOOKS LIKE HE'S TRYING TO JUMP!", 480, 200);
      fill(0);
      text("YOU HAVE ENOUGH DISTANCE BETWEEN YOU AND THE CAR TO SAFELY MAKE IT TO THE ROOF.", 480, 250);
      fill(255);
      text("DO YOU SAVE HIM (s), OR GET OFF ONCE YOU ARRIVE (q)?", 480, 500);
      cableCheck3 = true;
      checkpoint++;
    }
    if (keyPressed && key == 'q' && cabins == true)
    {
      background(173, 215, 230);
      image(forest, 0, 0, 960, 540);
      text("THERE'S ONLY ONE PATH FROM HERE. (spacebar)", 480, 450);
      fled = true;
      fork2 = true;
      checkpoint++;
    }
    if (keyPressed && key == 'l' && forest1 == true)
    {
      background(173, 215, 230);
      image(forest, 0, 0, 960, 540);
      text("THERE'S ONLY ONE PATH FROM HERE. (spacebar)", 480, 450);
      fled = true;
      fork2 = true;
      checkpoint++;
    }
    if (keyPressed && key == 'r' && forest1 == true)
    {
      background(173, 215, 230);
      image(cabin, 0, 0, 960, 540);
      text("YOU'VE FOUND YOUR FAMILY'S OLD SUMMER CABIN! DO YOU SETTLE DOWN (s), OR CONTINUE YOUR QUEST (q)?", 480, 450);
      cabins = true;
      checkpoint++;
    }
  }
  if (checkpoint == 11)
  {
    if (keyPressed && key == 'l' && fork2 == true && money == true)
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. MAKE AN OFFERING? (Y/N)", 480, 450);
      checkpoint++;
    }
    if (keyPressed && key == 'l' && fork2 == true && poor == true)
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      pond = true;
      checkpoint++;
    }
    if (keyPressed && key == 's' && cabins == true)
    {
      background(173, 215, 230);
      image(cabinInterior, 0, 0, 960, 540);
      textSize(20);
      text("YOU LIVE OUT THE REST OF YOUR DAYS PEACEFULLY IN THE CABIN.", 480, 450);
      textSize(30);
      text("PEACEFUL ENDING.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == ' ' && money == true && fork2 == true)//go to pond w/ money
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. MAKE AN OFFERING? (Y/N)", 480, 450);
      checkpoint++;
    }
    if (keyPressed && key == ' ' && money == false && fork2 == true)//go to pond w/ money
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      poor = true;
      pond = true;
      checkpoint++;
    }
    if (keyPressed && key == 'q' && money == true && cableCheck3 == true)//go to pond w/ money
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. MAKE AN OFFERING? (Y/N)", 480, 450);
      checkpoint++;
    }
    if (keyPressed && key == '2' && money == true && taxiCheck3 == true)//go to pond w/ money
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. MAKE AN OFFERING? (Y/N)", 480, 450);
      checkpoint++;
    }
    if (keyPressed && key == 'q' && money == false && cableCheck3 == true)//go to pond
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      poor = true;
      pond = true;
      checkpoint++;
    }
    if (keyPressed && key == '2' && money == false && taxiCheck3 == true)//go to pond
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      poor = true;
      pond = true;
      checkpoint++;
    }
    if (keyPressed && key == 'n' && fork2 == true && money == true)//go to pond
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      poor = true;
      pond = true;
      checkpoint++;
    }
    if (keyPressed && key == 'q' && money == true && cabins == true)//go to pond w/ money
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. MAKE AN OFFERING? (Y/N)", 480, 450);
      pond2 = true;
      checkpoint++;
    }
    if (keyPressed && key == 's' && cableCheck3 == true)//save man
    {
      background(173, 215, 230);
      image(endingpic, 0, 0, 960, 540);
      textSize(15);
      text("YOU MANAGE TO CONVINCE THE MAN NOT TO JUMP. FEELING SATISFIED, YOU RETURN HOME.", 480, 400);
      textSize(30);
      text("SATISFYING ENDING.", 480, 150);
      ending = true;
    }
    if (keyPressed && key == 'q' && money == false && cabins == true)//go to pond
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("YOU'VE ARRIVED AT THE LEGENDARY KOI POND. GO FOR A SWIM? (Y/N)", 480, 450);
      poor = true;
      pond = true;
      checkpoint++;
    }
  }
  if (checkpoint == 12)
  {
    if (keyPressed && key == 'y' && money == true && pigeons == false)//leave
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      textSize(15);
      text("THE MONEY QUICKLY GETS ABSORBED INTO THE WATER. BUT NOTHING HAPPENS. YOU GET BORED AND GO HOME.", 480, 450);
      textSize(30);
      text("UNSATISFYING ENDING 1.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == 'y' && money == true && pigeons == true)//slavery
    {
      background(173, 215, 230);
      image(koiGod, 0, 0, 960, 540);
      textSize(15);
      text("THE PIGEON SEEMS TO HAVE MERGED WITH THE KOI.", 480, 400);
      text("KOI GOD: AS THANKS FOR MY REVITALIZATION, I SHALL MAKE YOU MY THRALL.", 480, 450);
      textSize(30);
      text("SERVITUDE ENDING 2.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == 'y' && pond == true && pigeons == false)//bath
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      textSize(15);
      text("THE WATER FEELS NICE ON YOUR BODY. YOU FEEL REFRESHED, AND GO HOME.", 480, 450);
      textSize(30);
      text("REFRESHING ENDING.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == 'y' && pigeons == true && pond == true)//eaten
    {
      background(173, 215, 230);
      image(koiGod, 0, 0, 960, 540);
      textSize(15);
      text("SOMETHING RISES OUT OF THE WATER.", 480, 400);
      text("KOI GOD: THANK YOU FOR YOUR OFFERING.", 480, 450);
      text("HE EATS YOU.", 480, 500);
      textSize(30);
      text("FISH FOOD ENDING.", 480, 270);
      ending = true;
    }    
    if (keyPressed && key == 'n' && pond == true && halfkoibread == true)//leave
    {
      background(173, 214, 230);
      image(lose1, 0, 0, 960, 540);
      textSize(15);
      text("YOU SEE THE PIGEON FROM BEFORE EATING ITS HALF OF THE BREAD. YOU GET BORED AND GO HOME.", 480, 450);
      textSize(30);
      text("UNSATISFYING ENDING.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == 'n' && pigeons == true && pond == true && fight2 == false)//koi god encounter
    {
      background(173, 215, 230);
      image(koiGod, 0, 0, 960, 540);
      textSize(15);
      text("THE PIGEON SEEMS TO HAVE MERGED WITH THE KOI.", 480, 450);
      text("KOI GOD: WHO HAS SUMMONED ME?", 480, 270);
      text("FIGHT THE KOI GOD? (1/2)", 480, 500);
      fight2 = true;
      checkpoint++;
    }
    if (keyPressed && key == 'n' && pond == true && pigeons == false)//bath
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      textSize(15);
      text("WHY DID YOU EVEN COME UP HERE THEN?", 480, 450);
      textSize(30);
      text("STUPID ENDING.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == 'n' && money == true)//leave
    {
      background(173, 215, 230);
      image(pondpic, 0, 0, 960, 540);
      text("GO FOR A SWIM? (Y/N)", 480, 450);
      money = false;
      pond = true;
      poor = true;
    }
  }
  if (checkpoint == 13)
  {
    if (keyPressed && key == '1' && fight2 == true && pumpedUp == true)
    {
      background(173, 215, 230);
      image(koiGod, 0, 0, 960, 540);
      fill(0);
      text("KOI GOD: WAIT. IS THAT... PUMPERNICKEL? I LOVE THAT STUFF!", 480, 200);
      text("TELL YOU WHAT, IF YOU GIVE ME THE PUMPERNICKEL, I'LL MAKE YOU THE KOI GOD.", 480, 300);
      text("(Y/N)", 480, 350);
      godhood = true;
      checkpoint++;
    }
    if (keyPressed && key == '1' && fight2 == true && pumpedUp == false)
    {
      background(173, 215, 230);
      image(koideath, 0, 0, 960, 540);
      fill(0);
      textSize(20);
      text("THE KOI GOD POKES YOU AND YOU INSTANTLY DIE.", 480, 300);
      textSize(30);
      text("DEATH ENDING.", 480, 270);
      ending = true;
    }
    if (keyPressed && key == '2' && fight2 == true)
    {
      background(173, 215, 230);
      image(koideath, 0, 0, 960, 540);
      fill(0);
      textSize(15);
      text("KOI GOD: OH. OK. YOU'RE JUST PASSING BY. THE UHH... EXIT'S THAT WAY.", 480, 150);
      textSize(20);
      text("THE 'REALLY? YOU GOT ALL THE WAY HERE AND JUST GAVE UP?' ENDING", 480, 290);
      ending = true;
    }
  }
  if (checkpoint == 14)
  {
    if (keyPressed && key == 'y' && godhood == true)
    {
      background(173, 215, 230);
      image(trueEnding, 0, 0, 960, 540);
      fill(255);
      textSize(15);
      text("WHO WOULD'VE THOUGHT THAT A SCHOOL PROJECT WOULD END LIKE THIS?", 480, 100);
      textSize(30);
      fill(255, 215, 0);
      text("TRUE ENDING.", 200, 450);
      ending = true;
    }
    if (keyPressed && key == 'n' && godhood == true)
    {
      background(173, 215, 230);
      image(koideath, 0, 0, 960, 540);
      fill(0);
      textSize(15);
      text("KOI GOD: SERIOUSLY? YOU WOULD TURN DOWN GODHOOD? YOUR LOSS, I GUESS.", 480, 200);
      textSize(20);
      text("THE 'I THOUGHT I WOULD GET A BETTER REWARD FOR CHOOSING NO' ENDING", 480, 290);
      ending = true;
    }
  }
  //if (end == true)
  //{
  //  textSize(15);
  //  text("RETRY? (r)", 480, 300);
  //  if (keyPressed && key == 'r')
  //  {
  //    fill(255);
  //    titleCheck = 0;
      
  //  }
  //}
  //if (ending == true)
  //{
  //  textSize(15);
  //  fill(255);
  //  text("TRY FOR DIFFERENT ENDING? (r)", 480, 300);
  //  if (keyPressed && key == 'r')
  //  {
  //    titleCheck = 0;
  //  }
  //}
}
