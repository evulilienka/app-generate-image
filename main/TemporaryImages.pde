
/*
Sketch TemporaryImages consists of methods which 
are resposible for manipulation with temp images.
*/

PImage temporary1;           //first temporary image saved
PImage temporary1Thumbnail;  //first temporary image thumbnail
PImage temporary2;           //second temporary image saved
PImage temporary2Thumbnail;  //second temporary image thumbnail
PImage temporary3;           //third temporary image saved
PImage temporary3Thumbnail;  //third temporary image thumbnail

boolean drawTemporary1 = false; //true if temp1 is not empty
boolean drawTemporary2 = false; //true if temp2 is not empty
boolean drawTemporary3 = false; //true if temp3 is not empty

int tempPositionX = 200; //x position of temporary image
int tempPositionY = 200; //y position of temporary image

int tempDegree = 0; //rotation of temporary image
float scale = 1; //scale factor of temporary image

int tempOpacity = 100; //opacity value of temporary image

boolean tempFadeOut = true; //fading out of temp image
char tempBlendType = 'N'; //blending typ of temp image

//saves image to first temporary image slot
void temporarySave1()
{
  if (img == null)
  { 
    temporary1 =  new PImage(sketch.width, sketch.height);
    temporary1 = sketch;
    temporary1Thumbnail = get();
    temporary1Thumbnail.resize(30, 30);
  } else
  {
    temporary1 =  new PImage(img.width, img.height);
    temporary1 = img.get(0, 0, img.width, img.height);
    temporary1Thumbnail = get();
    temporary1Thumbnail.resize(30, 30);
  }
}

//saves image to second temporary image slot
void temporarySave2()
{
  if (img == null)
  { 
    temporary2 =  new PImage(sketch.width, sketch.height);
    temporary2 = sketch;
    temporary2Thumbnail = get();
    temporary2Thumbnail.resize(30, 30);
  } else
  {
    temporary2 =  new PImage(img.width, img.height);
    temporary2 = img.get(0, 0, img.width, img.height);
    temporary2Thumbnail = get();
    temporary2Thumbnail.resize(30, 30);
  }
}

//saves image to third temporary image slot
void temporarySave3()
{
  if (img == null)
  { 
    temporary3 =  new PImage(sketch.width, sketch.height);
    temporary3 = sketch;
    temporary3Thumbnail = get();
    temporary3Thumbnail.resize(30, 30);
  } else
  {
    temporary3 =  new PImage(img.width, img.height);
    temporary3 = img.get(0, 0, img.width, img.height);
    temporary3Thumbnail = get();
    temporary3Thumbnail.resize(30, 30);
  }
}

//deletes all temporarily saved images
void deleteAllTemporary()
{
  temporary1 = null;
  temporary2 = null;
  temporary3 = null;
  temporary1Thumbnail = null;
  temporary2Thumbnail = null;
  temporary3Thumbnail = null;
}

//creates opacity mask with fade out or no fade out
PImage opacityMask(PImage temp)
{
  PImage mask = new PImage();
  if (!tempFadeOut)
  {
    if (img == null)
    {
      mask = new PImage(sketch.width, sketch.height);
      for (int i = 0; i < sketch.width; i++)
      {
        for (int j = 0; j < sketch.height; j++)
        {
          mask.set(i, j, tempOpacity);
        }
      }
    } else 
    {
      mask = new PImage(img.width, img.height);
      for (int i = 0; i < img.width; i++)
      {
        for (int j = 0; j < img.height; j++)
        {
          mask.set(i, j, tempOpacity);
        }
      }
    }
  } 
  //if fade out is selected, mask is loaded from preprepared picture,
  //scaled to needed size and set to needed opacity
  else
  {
    mask = loadImage("data/mask.jpg");
    for (int i = 0; i < mask.width; i++)
    {
      for (int j = 0; j < mask.height; j++)
      {
        color c = mask.get(i, j);
        int red = (int)red(c);
        int green = (int)green(c);
        int blue = (int)blue(c);
        int gray = (int)((red + green + blue)/3);
        if (gray > tempOpacity)
        {
          mask.set(i, j, tempOpacity);
        }
      }
    }

    if (img == null)
    {
      mask.resize(temp.width, temp.height);
    } else
    {
      mask.resize(temp.width, temp.height);
    }
  }
  return mask;
}

//sets temporary image1 settings
void drawTemporary1()
{
  if (img != null)
  {
    img2 = img.get(0, 0, img.width, img.height);
  }

  PImage mask = opacityMask(temporary1);

  pushMatrix();
  
  //sets translation, rotation and scale of temp image
  translate(temporary1.width/2, temporary1.height/2);
  rotate(tempDegree*TWO_PI/360);
  translate(-temporary1.width/2, -temporary1.height/2);
  scale(scale);
  
  //uses created opacity mask
  mask.resize(temporary1.width, temporary1.height);
  temporary1.mask(mask);
  
  PImage tempTemp = temporary1.get(0, 0, temporary1.width, temporary1.height);
  if ((int)(temporary1.width * scale) > 0 && (int)(temporary1.width * scale) > 0)
    tempTemp.resize((int)(temporary1.width * scale), (int)(temporary1.height * scale));
  
  //sets blending type
  switch (tempBlendType)
  {
  case 'N':
    {
      image(temporary1, tempPositionX - temporary1.width, tempPositionY - temporary1.height);
      if (img != null)
        img2.set(tempPositionX - temporary1.width + drawStartX, tempPositionY - temporary1.height + drawStartY, temporary1);
      break;
    }
    
  //overlay blend function
  case 'A':
    {
      blend(tempTemp, 
        0, 
        0, 
        (int)(temporary1.width * scale), 
        (int)(temporary1.height * scale), 
        tempPositionX - temporary1.width, 
        tempPositionY - temporary1.height, 
        (int)(tempPositionX * scale), 
        (int)(tempPositionY * scale), 
        OVERLAY);
      break;
    }
    
  case 'B':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), ADD);
      break;
    }
  case 'C':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SUBTRACT);
      break;
    }
  case 'D':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), BURN);
      break;
    }
  case 'E':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), DODGE);
      break;
    }
  case 'F':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SOFT_LIGHT);
      break;
    }
  case 'G':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), HARD_LIGHT);
      break;
    }
  case 'H':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), MULTIPLY);
      break;
    }

  case 'I':
    {
      blend(tempTemp, 0, 0, (int)(temporary1.width * scale), (int)(temporary1.height * scale), tempPositionX - temporary1.width, 
      tempPositionY - temporary1.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SCREEN);
      break;
    }
  }

  popMatrix();
}

//sets temporary image2 settings
void drawTemporary2()
{
  PImage mask = opacityMask(temporary2);

  pushMatrix();
  translate(temporary2.width/2, temporary2.height/2);
  rotate(tempDegree*TWO_PI/360);
  translate(-temporary2.width/2, -temporary2.height/2);
  scale(scale);
  temporary2.mask(mask);
  PImage tempTemp = temporary2.get(0, 0, temporary2.width, temporary2.height);
  if ((int)(temporary2.width * scale) > 0 && (int)(temporary2.width * scale) > 0)
    tempTemp.resize((int)(temporary2.width * scale), (int)(temporary2.height * scale));

  switch (tempBlendType)
  {
  case 'N':
    {
      image(temporary2, tempPositionX - temporary2.width, tempPositionY - temporary2.height);
      break;
    }

  case 'A':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), OVERLAY);
      break;
    }
  case 'B':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), ADD);
      break;
    }
  case 'C':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SUBTRACT);
      break;
    }
  case 'D':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), BURN);
      break;
    }
  case 'E':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), DODGE);
      break;
    }
  case 'F':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SOFT_LIGHT);
      break;
    }
  case 'G':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), HARD_LIGHT);
      break;
    }
  case 'H':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), MULTIPLY);
      break;
    }

  case 'I':
    {
      blend(tempTemp, 0, 0, (int)(temporary2.width * scale), (int)(temporary2.height * scale), tempPositionX - temporary2.width, 
      tempPositionY - temporary2.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SCREEN);
      break;
    }
  }

  popMatrix();
}

//sets temporary image3 settings
void drawTemporary3()
{
  PImage mask = opacityMask(temporary3);

  pushMatrix();
  translate(temporary3.width/2, temporary3.height/2);
  rotate(tempDegree*TWO_PI/360);
  translate(-temporary3.width/2, -temporary3.height/2);
  scale(scale);
  temporary3.mask(mask);
  PImage tempTemp = temporary3.get(0, 0, temporary3.width, temporary3.height);
  if ((int)(temporary2.width * scale) > 0 && (int)(temporary2.width * scale) > 0)
    tempTemp.resize((int)(temporary2.width * scale), (int)(temporary2.height * scale));

  switch (tempBlendType)
  {
  case 'N':
    {
      image(temporary3, tempPositionX - temporary3.width, tempPositionY - temporary3.height);
      break;
    }

  case 'A':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), OVERLAY);
      break;
    }
  case 'B':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), ADD);
      break;
    }
  case 'C':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SUBTRACT);
      break;
    }
  case 'D':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), BURN);
      break;
    }
  case 'E':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), DODGE);
      break;
    }
  case 'F':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SOFT_LIGHT);
      break;
    }
  case 'G':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), HARD_LIGHT);
      break;
    }
  case 'H':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), MULTIPLY);
      break;
    }

  case 'I':
    {
      blend(tempTemp, 0, 0, (int)(temporary3.width * scale), (int)(temporary3.height * scale), tempPositionX - temporary3.width, 
      tempPositionY - temporary3.height, (int)(tempPositionX * scale), (int)(tempPositionY * scale), SCREEN);
      break;
    }
  }

  popMatrix();
}

//deletes temporary image used in sketch
void deleteTempDrawing()
{
  drawTemporary1 = false;
  drawTemporary2 = false;
  drawTemporary3 = false;
}

