/*
Sketch NewLoadSave consists of methods which 
are resposible for working with inputs and outputs.
*/

PImage img; //loaded image
PImage img2; //loaded image backup

boolean load; //true if we work with loaded image
boolean newFile = false; //allows user to create new sketch
boolean loadImage = false; //allows user to load image
boolean save; //allows to save change if true

int[][] oldPixels; //pixels of loaded image in two dimensional array
int[][] newPixels;

int drawStartX = 0; //x position of cropped image displayed from img
int drawStartY = 0; //y position of cropped image displayed from img

int ww; //width of the whole image
int hh; //height of the whole image

int pictureWidth = 700; //width of sketch window
int pictureHeight = 700; //height of sketch window

int newSize = 700; //size of new image

void countParameters() {

    pictureHeight = img.height;
    pictureWidth = img.width;

    if ((img.height > displayHeight - 50)||(img.width > displayWidth - 100))
    {
      if ((img.height > displayHeight - 50)&&(img.width > displayWidth - 100))
      {
        pictureHeight = displayHeight - 50;  
        pictureWidth = displayWidth - 250;
      } else if (img.height > displayHeight - 50)
      {
        pictureHeight = displayHeight - 50;
      } else if (img.width > displayWidth - 100)
      {
        pictureWidth = displayWidth - 250;
      }
    }

    drawStartX = 0;
    drawStartY = 0;

    oldPixels = new int[img.width][img.height];
    newPixels = new int[pictureWidth][pictureHeight];

    img.loadPixels();
    /*for (int i = 0; i < (img.width); i++) 
    {
      for (int j = 0; j < (img.height); j++) 
      {
        oldPixels[i][j] = img.pixels[i*(img.width) + j];
      }
    }*/
    img.updatePixels();  
}

//loads image from folder selected by user
void fileSelected(File file) {

  if (file == null) {
    println("Image not found.");
  } else 
  {
    turnOffFunctions();
    println("Selected image " + file.getAbsolutePath());

    recover = null;
    img = null;
    img = loadImage(file.getAbsolutePath());
    img.loadPixels();

    load = true;
    sketch = img;
    
    countParameters();
  }
}

//saves image from sketch to folder selected by user
void fileSaving(File file) 
{
  if (file == null) 
  {
    println("Nothing saved.");
  } else 
  {
    println("Selected path " + file.getAbsolutePath());
    if (img == null)
    {
      save(savePath(file.getAbsolutePath() + ".png"));
    } else
    {
      img.save(savePath(file.getAbsolutePath() + ".png"));
    }
  }
}


//creates new image according to selected size and background color
void newFile()
{
  turnOffFunctions();

  recover = null;
  img = null;

  pictureWidth = newSize;
  pictureHeight = newSize;

  ww = newSize;
  hh = newSize;
  setup();

  background(backgroundColor);

  sketch = get();
}

