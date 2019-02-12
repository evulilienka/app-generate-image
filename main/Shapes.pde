/*
Sketch Shapes is responsible for drawing shapes selected by user on screen in correct way.
It consists of methods with various types of drawing, shapes and parameters influencing
these actions.
*/

char shape = 'A'; //selects shape
char concentricShape = 'A'; //sets type of drawing
float sizeOfShape = 50; //shape size
int numshape = 5; //number of drawn shapes
int randomness = 50; //randomness value
int shapeRadius = 5; //sets radius
float wheel; //mouse wheel value

//resizing selected shape by scrolling mouse wheel  
void mouseWheel(MouseEvent event) {
  wheel = event.getAmount();
  sizeOfShape -= (wheel * 5);
  if (sizeOfShape > 400) sizeOfShape = 400;
  if (sizeOfShape < 1) sizeOfShape = 1;
  shapeSizeSlider.setValue(sizeOfShape);
}

//drawPeriod() function allows to draw something every 15th frame
boolean drawPeriod()
{
  if (counting > 20)
  {
    return true;
  }  
  return false;
}

//drawing circles
void drawEllipse() {
  if (drawPeriod()) {
    //not allowed to paint one simple circle out of border
    if ((mouseX < sizeOfShape/2)||(mouseX > (pictureWidth - sizeOfShape/2))
      ||(mouseY < sizeOfShape/2)||(mouseY > (pictureHeight - sizeOfShape/2)))
    {
      return;
    } 

    //simple option selected
    if (concentricShape =='A') 
    {
      //draws one simple circle
      ellipse(mouseX, mouseY, sizeOfShape, sizeOfShape); 
      //draws amount of circles according to numshape value in various positions accordinf
      //to randomness value
      for (int i = 0; i < (numshape - 1); i++)
      {
        int ranX = (int) random(-randomness, randomness);
        int ranY = (int) random(-randomness, randomness);
        //condition doesnt allow to generate circles out of borders
        if ((mouseX + ranX < sizeOfShape/2)||(mouseX + ranX > (pictureWidth - sizeOfShape/2))
          ||(mouseY +ranY < sizeOfShape/2)||(mouseY + ranY > (pictureHeight - sizeOfShape/2)))
        {
          continue;
        }  
        ellipse(mouseX + ranX, mouseY + ranY, sizeOfShape, sizeOfShape);
      }
    }

    //concentric option selected
    else if (concentricShape == 'B')
    {     
      int radiusDown = 0;
      //draws single concentric circle with numshape value circles inside
      //and shapeRadius value distances between them
      for (int j = 0; j < (numshape - 1); j++)
      {
        radiusDown += shapeRadius;
        if (radiusDown < sizeOfShape) {
          ellipse(mouseX, mouseY, sizeOfShape - radiusDown, sizeOfShape - radiusDown);
        }
      }

      //draws amount of concetric circles according to numshape value
      //and shapeRadius value distances between them
      for (int i = 0; i < (numshape - 1); i++)
      {
        int ranX = (int) random(-randomness, randomness);
        int ranY = (int) random(-randomness, randomness);
        if ((mouseX + ranX < sizeOfShape/2)||(mouseX + ranX > (pictureWidth - sizeOfShape/2))
          ||(mouseY +ranY < sizeOfShape/2)||(mouseY + ranY > (pictureHeight - sizeOfShape/2)))
        {
          continue;
        } 
        ellipse(mouseX + ranX, mouseY + ranY, sizeOfShape, sizeOfShape); 
        if (concentricShape == 'B')
        {
          radiusDown = 0;
          for (int j = 0; j < (numshape - 1); j++)
          {
            radiusDown += shapeRadius;
            if (radiusDown < sizeOfShape) {
              ellipse(mouseX + ranX, mouseY + ranY, sizeOfShape - radiusDown, sizeOfShape - radiusDown);
            }
          }
        }
      }
    }

    //touching option selected
    else if (concentricShape == 'C')
    {
      touchingShapes();
    }

    counting = 0;
  }
}

//draws rectangles
void drawRectangle() {  
  if (drawPeriod()) {

    if ((mouseX - (sizeOfShape/2) < 0)||(mouseX + (sizeOfShape/2) > (pictureWidth))
      ||(mouseY - (sizeOfShape/2) < 0)||(mouseY + sizeOfShape/2 > (pictureHeight)))
    {
      return;
    } 

    //simple option selected
    if (concentricShape == 'A')
    {
      rect(mouseX - (sizeOfShape/2), mouseY - (sizeOfShape/2), sizeOfShape, sizeOfShape); 

      for (int i = 1; i < numshape; i++)
      {
        int ranX = (int) random(-randomness, randomness);
        int ranY = (int) random(-randomness, randomness);

        if ((mouseX + ranX - (sizeOfShape/2)) < 0||(mouseX + ranX + (sizeOfShape/2) > (pictureWidth))
          ||(mouseY + ranY - (sizeOfShape/2) < 0)||(mouseY + ranY + sizeOfShape/2 > (pictureHeight)))
        {
          continue;
        }
        rect(mouseX + ranX - (sizeOfShape/2), mouseY + ranY - (sizeOfShape/2), sizeOfShape, sizeOfShape);
      }
    }

    //concentric option selected  
    else if (concentricShape == 'B')
    {
      for (int i = 0; i < numshape; i++)
      {
        int ranX = (int) random(-randomness, randomness);
        int ranY = (int) random(-randomness, randomness);

        if ((mouseX + ranX - (sizeOfShape/2)) < 0||(mouseX + ranX + (sizeOfShape/2) > (pictureWidth))
          ||(mouseY + ranY - (sizeOfShape/2) < 0)||(mouseY + ranY + sizeOfShape/2 > (pictureHeight)))
        {
          continue;
        }

        rect(mouseX + ranX - (sizeOfShape/2), mouseY + ranY - (sizeOfShape/2), sizeOfShape, sizeOfShape);

        if (concentricShape == 'B')
        {
          int radiusDown = 0;
          for (int j = 0; j < (numshape - 1); j++)
          {
            radiusDown += shapeRadius;
            if (2*radiusDown < sizeOfShape) {
              rect(mouseX + ranX - (sizeOfShape/2) + radiusDown, mouseY + ranY - (sizeOfShape/2) + radiusDown, sizeOfShape - (2*radiusDown), sizeOfShape - (2*radiusDown));
            }
          }
        }
      }
    } else if (concentricShape == 'C')
    {
      touchingShapes();
    }
    counting = 0;
  }
}

//draws triangles
void drawTriangle() {

  if (drawPeriod())
  { 
    //SIMPLE OPTION SELECTED
    if (concentricShape == 'A')
    {
      if ((mouseX < 0)||(mouseX + sizeOfShape * 0.6 > (pictureWidth))
        ||(mouseY < 0)||(mouseY + sizeOfShape > (pictureHeight))||
        (mouseX - sizeOfShape * 0.6 < 0))
      {
        return;
      }
      triangle(mouseX, mouseY, mouseX + sizeOfShape * 0.6, mouseY + sizeOfShape, mouseX - sizeOfShape * 0.6, mouseY + sizeOfShape);
      for (int i = 1; i < numshape; i++)
      {
        int ranFactorX = (int) random(-randomness, randomness);
        int ranFactorY = (int) random(-randomness, randomness);
        int[] posNegX1 = {
          ranFactorX, -ranFactorX
        };
        int[] posNegY1 = {
          ranFactorY, -ranFactorY
        };
        int ranX11 = posNegX1[(int)random(0, 1)];
        int ranX22 = posNegX1[(int)random(0, 1)];
        int ranX33 = posNegX1[(int)random(0, 1)];
        int ranY11 = posNegY1[(int)random(0, 1)];
        int ranY22 = posNegY1[(int)random(0, 1)];
        int ranY33 = posNegY1[(int)random(0, 1)];

        if ((mouseX + ranX11 < 0)||(mouseX + sizeOfShape * 0.6 + ranX22 > (pictureWidth))
          ||(mouseY + ranY11 < 0)||(mouseY + sizeOfShape + ranY22 > (pictureHeight))||
          (mouseX - sizeOfShape * 0.6 + ranX33 < 0))
        {
          return;
        } 

        triangle(mouseX + ranX11, mouseY + ranY11, mouseX + sizeOfShape * 0.6 + ranX22, 
        mouseY + sizeOfShape + ranY22, mouseX - sizeOfShape * 0.6 + ranX33, mouseY + sizeOfShape + ranY33);
      }
    }

    //CONCENTRIC OPTION SELECTED
    else if (concentricShape == 'B')
    {
      int radiusDown = 0;
      for (int j = 0; j < (numshape - 1); j++)
      {
        radiusDown += shapeRadius;
        if (2*radiusDown < sizeOfShape) {
          triangle(mouseX, mouseY + radiusDown*1.2, mouseX + sizeOfShape * 0.6 - radiusDown - 2, 
          mouseY + sizeOfShape - radiusDown*0.6, mouseX - sizeOfShape * 0.6 + radiusDown + 2, 
          mouseY + sizeOfShape - radiusDown*0.6);
        }
      }

      for (int i = 1; i < numshape; i++)
      {
        int randomFactorX = (int) random(-randomness, randomness);
        int randomFactorY = (int) random(-randomness, randomness);
        int[] posNegX = {
          randomFactorX, -randomFactorX
        };
        int[] posNegY = {
          randomFactorY, -randomFactorY
        };
        int ranX = posNegX[(int)random(0, 1)];
        int ranY = posNegY[(int)random(0, 1)];
        int ranX1 = posNegX[(int)random(0, 1)];
        int ranX2 = posNegX[(int)random(0, 1)];
        int ranX3 = posNegX[(int)random(0, 1)];
        int ranY1 = posNegY[(int)random(0, 1)];
        int ranY2 = posNegY[(int)random(0, 1)];
        int ranY3 = posNegY[(int)random(0, 1)];

        if ((mouseX + ranX1 < 0)||(mouseX + sizeOfShape * 0.6 + ranX2 > (pictureWidth))
          ||(mouseY + ranY1 < 0)||(mouseY + sizeOfShape + ranY2 > (pictureHeight))||
          (mouseX - sizeOfShape * 0.6 + ranX3 < 0))
        {
          return;
        } 

        triangle(mouseX + ranX1, mouseY + ranY1, mouseX + sizeOfShape * 0.6 + ranX2, 
        mouseY + sizeOfShape + ranY2, mouseX - sizeOfShape * 0.6 + ranX3, mouseY + sizeOfShape + ranY3);
        if (concentricShape == 'B')
        {
          radiusDown = 0;
          for (int j = 0; j < (numshape - 1); j++)
          {
            radiusDown += shapeRadius;

            if (2*radiusDown < sizeOfShape) 
            {
              triangle(mouseX + ranX1, mouseY + ranY1 + radiusDown*1.2, 
              mouseX + sizeOfShape * 0.6 + ranX2 - radiusDown - 2, 
              mouseY + sizeOfShape + ranY2 - radiusDown*0.6, 
              mouseX - sizeOfShape * 0.6 + ranX3 + radiusDown + 2, 
              mouseY + sizeOfShape + ranY3 - radiusDown*0.6);
            }
          }
        }
      }
    }


    //TOUCHING OPTION SELECTED
    if (concentricShape == 'C')
    {
      touchingShapes();
    }

    counting = 0;
  }
}

//draws contour of spiral
void spiral()
{
  float r = 0;
  float theta = 0;
  for (int i = 0; i < (sizeOfShape*10); i++)
  {
    float x = r * cos(theta);
    float y = r * sin(theta);
    ellipse(x + mouseX, y + mouseY, 1, 1);
    theta += 0.05;
    r += ((float)((float)shapeRadius/100));
  }
}

//draws spirals
void drawSpiral()
{
  if (drawPeriod())
  {
    float r = 0;
    float theta = 0;
    for (int i = 0; i < (sizeOfShape*10); i++)
    {
      float x = r * cos(theta);
      float y = r * sin(theta);

      if ((x + mouseX - 1 < 0)||(y + mouseY - 1 < 0)
        ||(x + mouseX + 1 > pictureWidth)||(y + mouseY + 1 > pictureHeight))
      {
        break;
      } 

      ellipse(x + mouseX, y + mouseY, 1, 1);
      theta += 0.05;
      r += ((float)((float)shapeRadius/100));
    }

    for (int j = 0; j < (numshape - 1); j++)
    {
      r = 0;
      theta = 0;
      int ranX = (int) random(-randomness, randomness);
      int ranY = (int) random(-randomness, randomness);
      for (int i = 0; i < (sizeOfShape*10); i++)
      {
        float x = r * cos(theta);
        float y = r * sin(theta);

        if ((x + mouseX + ranX - 1 < 0)||(y + mouseY + ranY - 1 < 0)
          ||(x + mouseX + ranX + 1 > pictureWidth)||(y + mouseY + ranY + 1 > pictureHeight))
        {
          break;
        } 

        ellipse(x + mouseX + ranX, y + mouseY + ranY, 1, 1);
        theta += 0.05;
        r += ((float)((float)shapeRadius/100));
      }
    }
  }
}

//draws touching type of shapes
void touchingShapes()
{
  switch (shape)
  {
  case 'B' :
    {
      touchingRectangles();
      break;
    }
  case 'A' :
    {
      touchingCircles();
      break;
    }   
  case 'C' :
    {
      touchingTriangles();
      break;
    }
  }
}

//touching type wiht rectangles
void touchingRectangles()
{
  int startX = mouseX + (int) random(-10, 10); //rect x coordinate
  int startY = mouseY; //rect y coordinate
  int size = (int)sizeOfShape; //size
  int stat = 20;
  
  for (int i = 0; i < numshape; i++) {

    for (int j = 0; j < numshape; j++) {

      int randF = (int)random(-20, 20);

      if ((startX < 0)||(startX + (size + randF) > (pictureWidth))
        ||(startY < 0)||(startY + (size + randF) > (pictureHeight)))
      {
        continue;
      } 

      rect(startX, startY, 
      size + randF, size + randF);

      startX = (int) startX+(int)size + randF;
      startY = (int)(startY + random(-10, 10));
    }
    stat+=70;
    startY += 50 + shapeRadius;
    startX = mouseX + (int) random(-10, 10);
  }
}

//touching type with circles
void touchingCircles()
{
  int radius = (int) sizeOfShape / 2; //circle radius
  int centerX = mouseX; //circle centr x
  int centerX2 = mouseX; //circle center x backup
  int centerY = mouseY; //circle center y

  for (int i = 0; i < numshape; i++) {
    for (int j = 0; j < numshape; j++) {
      if ((centerX < radius)||(centerX > (pictureWidth - radius))
        ||(centerY < radius)||(centerY > (pictureHeight - radius)))
      {
        continue;
      } 
      ellipse(centerX, centerY, 2 * radius, 2 * radius);

      int oldRadius = radius;
      int oldCenterX = centerX;
      centerX = (int) (oldCenterX + oldRadius + random(5, oldRadius+7));
      radius = centerX-(oldCenterX+oldRadius);
    }
    centerY += 50 + shapeRadius;
    centerX = centerX2;
  }
}

//touching type with triangles
void touchingTriangles() {

  float leftX = mouseX; //left x coordinate 
  float backupLeftX = leftX; //left x coordinate backuo
  float leftY = mouseY + random(-randomness / 10, randomness / 10); //left y coordinate
  float rightX = mouseX + random(sizeOfShape, sizeOfShape + 10);//right x coordinate
  float rightY = mouseY + random(-randomness / 10, randomness / 10); //right y coordinate
  float upX = random(leftX, rightX); //upper x coordinate
  float upY = rightY - random(10, shapeRadius * 4.5); // upper y coordinate

  for (int i = 0; i < numshape; i++) {

    for (int j = 0; j < numshape; j++) {

      //if triangle is too close to edge, the edge is set to be the right x coordinate
      if (((pictureWidth) - rightX) < 15)
      {
        rightX = pictureWidth;
      }

      if (mouseX < 15)
      {
        backupLeftX = 0;
      }

      if (upY < 15)
      {
        upY = 0;
      }

      //draws triangle
      triangle( leftX, leftY, 
      rightX, rightY, 
      upX, upY);

      //counts parameters for next triangle
      leftX = rightX;
      leftY = rightY;

      rightX += random(sizeOfShape, sizeOfShape + 20);
      rightY +=  random(-randomness / 10, randomness / 10);

      upX = random(leftX, rightX);
      upY = rightY - random(10, shapeRadius * 4.5);
    }

    leftX = backupLeftX;
    leftY += shapeRadius * 5 + random(-randomness / 10, randomness / 10);

    rightX = backupLeftX + random(sizeOfShape, sizeOfShape + 10);
    rightY += shapeRadius * 5 + random(-randomness / 10, randomness / 10);

    upX = random(leftX, rightX);
    upY = rightY - random(10, shapeRadius * 4.5);

    if (leftY > pictureHeight - 15)
    {
      break;
    }
  }
}
