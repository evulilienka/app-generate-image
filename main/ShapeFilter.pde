/*
ShapeFilter transforms the visible part of image with shape filter with a choosen shape.
 */

int shapeFilterRand = 10; //color of every n-th pixel(shapeFilterRand,shapeFilterRand) is choosen to draw a shape in this color
char shapeFilter = 'A'; //sets shape of shape filter
boolean shapeFilterOn = false; //allows to filter image
PImage shapeFilterTemp; //temporary image for drawing shape filter

//draws shape filter according to selected shape
void shapeFilter()
{
  if  (img != null)
  {
    img2 = new PImage(img.width, img.height);
    img2 = img.get(0, 0, img.width, img.height);
  }

  switch(shapeFilter)
  {
  case 'A':
    {
      shapeFilterTemp = imageShapeCircle();
      shapeFilter = 'D';
      break;
    }
  case 'B':
    {
      shapeFilterTemp = imageShapeRectangle();
      shapeFilter = 'D';
      break;
    }
  case 'C':
    {
      shapeFilterTemp = imageShapeTriangle();
      shapeFilter = 'D';
      break;
    }  
  case 'D':
    {
      if (img == null)
        image(shapeFilterTemp, 0, 0);
      else
      {
        image(shapeFilterTemp, 0, 0);
        img2.set(drawStartX, drawStartY, shapeFilterTemp);
      }
    }
  }
}

//initializes temporary image for drawing shape filter
PImage initializeShapeFilterTemp()
{
  shapeFilterTemp = new PImage(sketch.width, sketch.height);
  shapeFilterTemp = get();
  return shapeFilterTemp;
}

//sets stroke settings for shape filter
void setShapeFilterStroke()
{
  if (stroke)
  {
    stroke(strokeColor);
    strokeWeight(strokeWidth);
  } else
  {
    noStroke();
  }
}

//draws shape filter with triangles
PImage imageShapeTriangle() {

  shapeFilterTemp = initializeShapeFilterTemp();

  setShapeFilterStroke();
  
  shapeFilterTemp.loadPixels();
        
  for (int i = 0; i < shapeFilterTemp.height; i++) 
  {
    for (int j = 0; j < shapeFilterTemp.width; j++) 
    {
      if ((i % shapeFilterRand == 0)&&(j % shapeFilterRand == 0))
      {
        fill(shapeFilterTemp.pixels[i*ww + j]);
        triangle( j +random(-shapeFilterRand, shapeFilterRand), i +random(-shapeFilterRand, shapeFilterRand), 
        j +random(-shapeFilterRand, shapeFilterRand), i +random(-shapeFilterRand, shapeFilterRand), 
        j +random(-shapeFilterRand, shapeFilterRand), i +random(-shapeFilterRand, shapeFilterRand));
      }
    }
  }

  shapeFilterTemp = get();

  return shapeFilterTemp;
}

//draws shape filter with circles
PImage imageShapeCircle() {

  shapeFilterTemp = initializeShapeFilterTemp();

  setShapeFilterStroke();

  for (int i = 0; i < shapeFilterTemp.height; i++) 
  {
    for (int j = 0; j < shapeFilterTemp.width; j++) 
    {
      shapeFilterTemp.loadPixels();
      fill(shapeFilterTemp.pixels[i*ww + j]);

      if ((i % shapeFilterRand == 0)&&(j % shapeFilterRand == 0))
        ellipse( j + random(-shapeFilterRand, shapeFilterRand), 
        i + random(-shapeFilterRand, shapeFilterRand), 
        shapeFilterRand, shapeFilterRand);
    }
  }

  shapeFilterTemp = get();

  return shapeFilterTemp;
}

//draws shape filter with rectangles
PImage imageShapeRectangle() {

  shapeFilterTemp = initializeShapeFilterTemp();

  setShapeFilterStroke();


  for (int i = 0; i < shapeFilterTemp.height; i++) 
  {
    for (int j = 0; j < shapeFilterTemp.width; j++) 
    {
      shapeFilterTemp.loadPixels();
      fill(shapeFilterTemp.pixels[i*ww + j]);

      if ((i % shapeFilterRand == 0)&&(j % shapeFilterRand == 0))
        rect( j + random(-2*shapeFilterRand, shapeFilterRand), i + random(-2*shapeFilterRand, shapeFilterRand), 
        shapeFilterRand, shapeFilterRand);
    }
  }  

  shapeFilterTemp = get();

  return shapeFilterTemp;
}

