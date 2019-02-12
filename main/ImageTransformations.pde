/*
Sketch ImageTransformations consists of methods which 
are resposible for transformations part of menu.
*/

boolean transformOn = false;
char transform = 'N'; //define which transformation is used
char kaleid = 'D'; //defines which kaleidoscope is used
boolean mirror = true; //facing transformations
int partSize = 50; //size of kaleidoscope part
int invertRadius = 250; //radius of inverse circle
int invertTranslate = 2; //translates pixels of inversion


public void transformation()
{
  int wholeWidth;
  int wholeHeight;

  wholeWidth = pictureWidth;
  wholeHeight = pictureHeight;

  if (img == null)
  {
    wholeWidth = pictureWidth;
    wholeHeight = pictureHeight;
  } else
  {
    wholeWidth = img.width;
    wholeHeight = img.height;
  }

  int partsX = (int) (wholeWidth / kaleidoscopeXCoordinate);
  int partsY = (int) (wholeHeight / kaleidoscopeYCoordinate);

  if (partsX > 20) partsX = 20;
  if (partsY > 20) partsY = 20;

  int widthScreenLayoutPart = (int) (wholeWidth / partsX);
  int heightScreenLayoutPart = (int) (wholeHeight / partsY);
  switch (transform)
  {
  case 'N':
    {
      image(sketch, 0, 0);
      break;
    }

  case 'X':
    {
      imageInvert();
      break;
    }

    //repeat columns
  case 'C':
    {
      if (img != null)
        img2 = new PImage(ww, hh);

      if (kaleidoscopeXCoordinate < ww/2)
      {
        for (int i = 0; i < partsX; i++)
        {
          PImage reflection;
          PImage reflection2;

          //creates column
          if (img != null)
          {
            reflection = img.get(0, 0, widthScreenLayoutPart, hh);
            reflection2 = new PImage(widthScreenLayoutPart, hh);
            for (int k = 0; k <= reflection.height; k++)
            {
              for (int l = 0; l <= reflection.width; l++)
              {
                reflection2.set(reflection.width - l, k, img.get(l, k));
              }
            }
          } else
          {
            reflection = get(0, 0, widthScreenLayoutPart, sketch.height);  
            reflection2 = new PImage(widthScreenLayoutPart, sketch.height);

            for (int k = 0; k <= reflection.height + 1; k++)
            {
              for (int l = 0; l <= reflection.width + 1; l++)
              {
                reflection2.set(reflection.width - l, k, sketch.get(l, k));
              }
            }
          }

          //facing columns       
          if (mirror)
          {   
            pushMatrix();
            if ((i % 2) == 1)
            {
              image(reflection2.get(0, drawStartY, reflection.width, reflection.height), 0 + i * widthScreenLayoutPart, 0);

              if (img != null)                 
                img2.set(0 + i * widthScreenLayoutPart, 0, reflection2);
            } else
            {
              image(reflection.get(0, drawStartY, reflection.width, reflection.height), 0 + i * widthScreenLayoutPart, 0);  

              if (img != null)
                img2.set(0 + i * widthScreenLayoutPart, 0, reflection);
            }
            popMatrix();
          }

          //not facing columns
          else
          {
            image(reflection.get(0, drawStartY, reflection.width, reflection.height), 0 + i * widthScreenLayoutPart, 0);
          }
        }
      }
      break;
    }

    //repeat rows
  case 'R':
    {
      if (img != null)
        img2 = new PImage(ww, hh);

      if (kaleidoscopeYCoordinate < hh/2)
      {
        for (int i = 0; i < partsY; i++)
        {
          PImage reflection;
          PImage reflection2;

          //creates row
          if (img != null)
          {
            reflection = img.get(0, 0, ww, heightScreenLayoutPart);
            reflection2 = new PImage(ww, heightScreenLayoutPart);
            for (int k = 0; k <= reflection.height; k++)
            {
              for (int l = 0; l <= reflection.width; l++)
              {
                reflection2.set(l, reflection.height - k, img.get(l, k));
              }
            }
          } else
          {
            reflection = get(0, 0, sketch.width, heightScreenLayoutPart);            
            reflection2 = new PImage(sketch.width, heightScreenLayoutPart);

            for (int k = 0; k <= reflection.height + 1; k++)
            {
              for (int l = 0; l <= reflection.width + 1; l++)
              {
                reflection2.set(l, reflection.height - k, sketch.get(l, k));
              }
            }
          }

          //facing rows    
          if (mirror)
          {   
            pushMatrix();
            if ((i % 2) == 1)
            {
              //scale(1,-1);  
              image(reflection2.get(drawStartX, 0, reflection.width, reflection.height), 0, (0 + i * heightScreenLayoutPart));

              if (img != null)                 
                img2.set(0, 0 + i * heightScreenLayoutPart, reflection2);
            } else
            {
              image(reflection.get(drawStartX, 0, reflection.width, reflection.height), 0, 0 + i * heightScreenLayoutPart);  

              if (img != null)                 
                img2.set(0, 0 + i * heightScreenLayoutPart, reflection);
            }
            popMatrix();
          }

          //not facing rows
          else
          {           
            image(reflection.get(drawStartX, 0, reflection.width, reflection.height), 0, 0+ i * heightScreenLayoutPart);
          }
        }
      }
      break;
    }

    //repeating rectangle part
  case 'Z':
    {
      PImage reflect;    
      PImage reflect2;

      if (img != null)
      {
        reflect = new PImage(img.width, img.height);
        reflect2 = new PImage(img.width, img.height);
        reflect2 = img;
      } else
      {
        reflect = new PImage(sketch.width, sketch.height);
        reflect2 = new PImage(sketch.width, sketch.height);
        reflect2 = sketch;
      }

      //creates rectangle part and fills the whole image with this part
      for (int k = 0; k < partsX; k++)
      {
        for (int l = 0; l < partsY; l++)
        {
          for (int i=0; i<=ww/2; i++) 
          {
            for (int j=0; j<=hh/2; j++) 
            {
              int pixelColor = reflect2.get(i, j);

              reflect.set(i + k * widthScreenLayoutPart, j + l * heightScreenLayoutPart, pixelColor);
              reflect.set(ww-i + k * widthScreenLayoutPart, j+ l * heightScreenLayoutPart, pixelColor);
              reflect.set(i + k * widthScreenLayoutPart, hh-j+ l * heightScreenLayoutPart, pixelColor);      
              reflect.set(ww-i + k * widthScreenLayoutPart, hh - j+ l * heightScreenLayoutPart, pixelColor);
            }
          }
        }
      }
      image(reflect, 0, 0);
      img2 = new PImage(ww, hh);
      img2 = reflect;
      break;
    }  

  case 'D':
    {
      kaleid();
      break;
    }

  case 'E':
    {
      kaleid();
      break;
    }

  case 'F' :
    {
      kaleid();
      break;
    }
  }
}


//kaleidoscope variations
void kaleid()
{
  //img2 = img;
  int wholeWidth;
  int wholeHeight;

  if (img == null)
  {
    wholeWidth = pictureWidth;
    wholeHeight = pictureHeight;
  } else
  {
    wholeWidth = img.width;
    wholeHeight = img.height;
    img2 = img;
  }

  switch (kaleid)
  {
    //kaleidoscope part with four rectangle parts
  case 'D':
    {
      PImage temp;

      //creates rectangle part and fills the whole image with this part
      PImage partImage = get(kaleidoscopeXCoordinate, kaleidoscopeYCoordinate, partSize, partSize);
      for (int k = 0; k < wholeWidth; k += partSize) {
        for (int l = 0; l < wholeHeight; l += partSize) {
          for (int i=0; i<=partImage.width/2; i++) {
            for (int j=0; j<=partImage.height/2; j++) {
              int pixelColor = partImage.get(i, j);
              partImage.set(i, j, pixelColor);
              partImage.set(partImage.width-i, j, pixelColor);
              partImage.set(i, partImage.height-j, pixelColor);
              partImage.set(partImage.width-i, partImage.height-j, pixelColor);
            }
          }
          image(partImage, k, l);
          if (img != null)
            img2.set(k, l, partImage);
        }
      }
      temp = get();
      image(temp, 0, 0);
      break;
    }

    //kaleidoscope with four triangle parts
  case 'F' :
    {
      PImage temp;

      //creates one kaleidoscope part
      PImage partImage = get(kaleidoscopeXCoordinate, kaleidoscopeYCoordinate, partSize, partSize);
      for (int i=0; i<=partImage.width; i++) {
        for (int j=i; j<= (partImage.height - i); j++) {
          int pixelColor = partImage.get(i, j);
          partImage.set(partImage.height - j, partImage.height - i, pixelColor);
          partImage.set(partImage.width - i, partImage.height - j, pixelColor);
          partImage.set(j, i, pixelColor);
        }
      }

      //other three kaleidoscope parts with different orientations
      pushMatrix();
      scale(-1.0, 1.0);
      image(partImage, -partImage.width, 0);
      popMatrix();
      PImage partImage2 = get(0, 0, partImage.width, partImage.width);
      pushMatrix();
      scale(1.0, -1.0);
      image(partImage, 0, -partImage.width);
      popMatrix();
      PImage partImage3 = get(0, 0, partImage.width, partImage.width);
      pushMatrix();
      scale(-1.0, -1.0);
      image(partImage, -partImage.width, -partImage.width);
      popMatrix();
      PImage partImage4 = get(0, 0, partImage.width, partImage.width);

      //facing triangle parts
      if (mirror)
      {

        //fits right parts to the right place in image
        for (int i = 0; i< wholeHeight; i+=partSize)
        { 
          for (int j = 0; j < wholeWidth; j+=partSize)
          {           
            if (((i % (partSize *2)) == 0)&&((j % (partSize *2)) == 0))
            {
              image(partImage, j, i);
              if (img != null)
                img2.set(j, i, partImage);
            } else if ((!((i % (partSize *2)) == 0))&&((j % (partSize *2)) == 0))
            {
              image(partImage3, j, i);
              if (img != null)
                img2.set(j, i, partImage3);
            } else if ((!((i % (partSize *2)) == 0))&&(!((j % (partSize *2)) == 0)))
            {
              image(partImage4, j, i);
              if (img != null)
                img2.set(j, i, partImage4);
            } else if ((((i % (partSize *2)) == 0))&&(!((j % (partSize *2)) == 0)))
            {
              image(partImage2, j, i);
              if (img != null)
                img2.set(j, i, partImage2);
            }
          }
        }
      }

      //not facing triangle parts
      else
      {
        //fills image with created part
        for (int i = 0; i< wholeWidth; i+=partSize)
        { 
          for (int j = 0; j < wholeHeight; j+=partSize)
          {
            image(partImage, i, j);
            if (img != null)
              img2.set(j, i, partImage);
          }
        }
      }

      temp = get();
      image(temp, 0, 0);
      break;
    }

    //kaleidoscope with two triangle parts 
  case 'E':
    {
      PImage temp;

      //triangles not facing
      if (!mirror)
      {
        //kaleidoscope part
        PImage partImage = get(kaleidoscopeXCoordinate, kaleidoscopeYCoordinate, partSize, partSize);

        for (int i=0; i<=partImage.width; i++) 
        {
          for (int j=0; j<= (partImage.height - i); j++) 
          {
            int pixelColor = partImage.get(i, j);
            partImage.set(partImage.width-1 -j, partImage.height-1 -i, pixelColor);
          }
        }

        //fills the whole image with created part
        for (int k = 0; k < wholeWidth; k += partSize) 
        {
          for (int l = 0; l < wholeHeight; l += partSize) 
          {
            image(partImage, k, l);
            if (img != null)
              img2.set(k, l, partImage);
          }
        }
      }

      //facing triangle parts
      else    
      {
        //creates one rectangle part of kaleidoscope 
        PImage partImage = get(kaleidoscopeXCoordinate, kaleidoscopeYCoordinate, partSize, partSize);

        for (int i=0; i<=partImage.width; i++) 
        {
          for (int j=0; j<= (partImage.height - i); j++) 
          {
            int pixelColor = partImage.get(i, j);
            partImage.set(partImage.width-1 -j, partImage.height-1 -i, pixelColor);
          }
        }

        //three other parts of kaleidoscope with different orientation
        pushMatrix();
        scale(-1.0, 1.0);
        image(partImage, -partImage.width, 0);
        popMatrix();
        PImage partImage2 = get(0, 0, partImage.width, partImage.width);

        pushMatrix();
        scale(1.0, -1.0);
        image(partImage, 0, -partImage.width);
        popMatrix();
        PImage partImage3 = get(0, 0, partImage.width, partImage.width);

        pushMatrix();
        scale(-1.0, -1.0);
        image(partImage, -partImage.width, -partImage.width);
        popMatrix();
        PImage partImage4 = get(0, 0, partImage.width, partImage.width);


        //following for cycle fits all parts of kaleidoscope to right positions according to their orientations
        for (int i = 0; i<wholeHeight; i+=partSize)
        { 
          for (int j = 0; j < wholeWidth; j+=partSize)
          {
            pushMatrix();
            if (((i % (partSize *2)) == 0)&&((j % (partSize *2)) == 0))
            {
              image(partImage, j, i);
              if (img != null)
                img2.set(j, i, partImage);
            } else if ((!((i % (partSize *2)) == 0))&&((j % (partSize *2)) == 0))
            {
              image(partImage3, j, i);
              if (img != null)
                img2.set(j, i, partImage3);
            } else if ((!((i % (partSize *2)) == 0))&&(!((j % (partSize *2)) == 0)))
            {
              image(partImage4, j, i);
              if (img != null)
                img2.set(j, i, partImage4);
            } else if ((((i % (partSize *2)) == 0))&&(!((j % (partSize *2)) == 0)))
            {
              image(partImage2, j, i);
              if (img != null)
                img2.set(j, i, partImage2);
            } else
            {
            }
            popMatrix();
          }
        }
      }
      temp = get();
      image(temp, 0, 0);

      break;
    }
  }
}

//method for transform image with inverse circle
void imageInvert() 
{
  PImage temp; //temporary image to create inverted image

  //copies temp picture values from sketch
  if (img != null)
  {
    temp = new PImage(img.width, img.height);
  } else
  {
    temp = new PImage(sketch.width, sketch.height);
  }

  temp.loadPixels();

  double newWidth = ww / invertTranslate; //translation of vertex
  double newHeight = hh / invertTranslate; //translation of vertex
  Circle circle = new Circle(new Vertex(ww/2, hh/2), invertRadius); //defines circle

  //transformation Inverse Circle
  for (int i = 0; i < (ww); ++i) 
  {
    for (int j = 0; j < (hh); ++j) 
    {
      Vertex vert = invertVertex(new Vertex(i, j), circle); //new inverted position of vertex
      double xx = vert.getX() + newWidth;
      double yy = vert.getY() + newHeight;          

      xx = (int)Math.round(Math.abs(xx)) % ww;
      yy = (int)Math.round(Math.abs(yy)) % hh;

      //sets pixel color of inverted vertex
      if (((0 <= xx) && (xx < ww)) && (0 <= yy) && (yy < hh)) {
        if (img != null)
          temp.set(i, j, (img.get((int)xx, (int)yy)));
        else
        {
          int pixelColor = sketch.get((int)xx, (int)yy);
          temp.set(i, j, pixelColor);
        }
      }
    }
  }

  //saves and displays an image
  if (img != null)
  {
    image(temp.get(drawStartX, drawStartY, drawStartX + sketch.width, drawStartY + sketch.height), 0, 0);
    img2 = new PImage(img.width, img.height);
    img2 = temp;
  } else
  {
    image(temp, 0, 0);
  }
}

//this method gets position of input pixel and circle and the result is new position of inverted circle according to defined circle
Vertex invertVertex(Vertex old, Circle c) 
{    
  double centVert = Math.pow((old.getX() - c.getCenter().getX()), 2) + 
  Math.pow((old.getY() - c.getCenter().getY()), 2.0);
  
  return new Vertex(
  (((Math.pow(c.getRadius(), 2)) * (old.getX() - //x coordinate of inverted vertex
  c.getCenter().getX())) / centVert)+((ww)/2), 
  
  (((Math.pow(c.getRadius(), 2)) * (old.getY() - //y coordinate of inverted vertex
  c.getCenter().getY())) / centVert)+((hh)/2));
}


//class for Circle
public class Circle 
{
  private double radius; //circle radius
  private Vertex center; // circle center position

  //constructor for Circle class
  public Circle(Vertex center, double radius)
  {
    this.center = center;
    this.radius = radius;
  }

  //gets radius of circle
  public double getRadius() 
  {
    return radius;
  }

  //gets center vertex of circle
  public Vertex getCenter() 
  {
    return center;
  }
}

//class for Vertex
public class Vertex 
{
  private double x; //x position of vertex
  private double y; //y postion of vertex

  //constructor of Vertex
  public Vertex(double x, double y) {    
    this.x = x;
    this.y = y;
  }

  //gets x postion from Vertex
  public double getX() {        
    return this.x;
  }

  //gets Y postion from Vertex
  public double getY() {        
    return this.y;
  }
}
