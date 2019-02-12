import g4p_controls.*;
import javax.swing.JColorChooser;
import java.awt.Color;

GWindow myWindow; //creates menu window

PImage sketch; //image displayed in sketch
boolean sketchIsSet= false; //redraws screen with previous image if necessary

boolean pictureOpen = true; //allows to create menu just once

PImage recover; //UNDO image temp
boolean saveRecover = false; //saves image in previous step Undo image
boolean undoDo = false; //allows to make UNDO action

int count = 0; //animation starter
int counting = 0; //counts frames

JColorChooser chooser = new JColorChooser();
color shapeColor = color(30, 186, 126, 50); //color of selected shape
color strokeColor = color(0, 0, 0, 255); //color of stroke
color backgroundColor = color(255, 255, 255, 255); //background color of new created sketch

boolean stroke = false; //allows or declines usage of stroke
int strokeWidth = 1; //weight of stroke

int kaleidoscopeXCoordinate = 1;
int kaleidoscopeYCoordinate = 1;

//defines and creates menu window and sketch window according to user settings
void setup() 
{
  //sets size of sketch part of window according to settings selected by user
  size(pictureWidth, pictureHeight, JAVA2D);

  //sets frame size of window
  frame.setSize(pictureWidth, pictureHeight);

  //makes frame irresizable
  if (frame != null) {
    frame.setResizable(false);
  }

  //creates menu window just once during usage of application 
  if (pictureOpen)
  {
    createGUI();
    pictureOpen = false;
  }

  //sets custom gui settings
  customGUI();

  //sets background color of sketch window
  background(255);

  //sets sketch and recover
  sketch = get();
  recover = get();

  //sets ww and hh values
  if (img != null)
  {
    ww = img.width;
    hh = img.height;
  } else
  {
    //temp = a1;
    ww = sketch.width;
    hh = sketch.height;
  }
}

//sets custom setting for GUI
public void customGUI() 
{            
  loadSavePanel.setCollapsed(false); 
  shapePanel.setCollapsed(false);
  imagePanel.setCollapsed(false);
  filterPanel.setCollapsed(false);
  panelFilter.setCollapsed(false);
  turnOffFunctions(); 
  loadSavePanel.setCollapsed(true); 
  shapePanel.setCollapsed(true);
  imagePanel.setCollapsed(true);
  filterPanel.setCollapsed(true);
  panelFilter.setCollapsed(true);

  //menu window not resizable                    
  menuWindow.setResizable(false);

  //sets sliders values according to size of sketch window
  coordinatesSlider2d.setLimitsX(1.0, 1.0, pictureWidth - 1);
  coordinatesSlider2d.setLimitsY(1.0, 1.0, pictureHeight - 1);

  slider2dTempPosition.setLimitsX(pictureWidth, 1.0, pictureWidth * 2);
  slider2dTempPosition.setLimitsY(pictureHeight, 1.0, pictureHeight * 2);

  sliderNewSize.setLimits(displayHeight/2, 100, displayHeight - 50);
  
  

  if (pictureWidth > pictureHeight)
  {
    invertRadiusSlider.setLimits(pictureHeight /2 - 50, 10, pictureHeight);
    partSizeSlider.setLimits(50,10,pictureHeight -1 );
  } else
  {
    invertRadiusSlider.setLimits(pictureWidth /2 - 50, 10, pictureWidth);
    partSizeSlider.setLimits(50,10,pictureWidth -1);
  }
}

//draw method, draws into sketch window with framerate frequency
void draw() 
{
  //creates new sketch window if user wish so
  if (newFile)
  {
    newFile = false;
    newFile();
  }

  counting ++;

  //if not moving in sketch window count increases
  if (mouseX==pmouseX && mouseY==pmouseY) 
  { 
    count++;
  } else
  { 
    count=0;
  } 
  
  //starts animation after user is inactive for some time and count is high
  if (count  > 1000)
  {
    animation();
    
  } else if (count == 0)
  {
    kaleidoscopeXCoordinate = coordinatesSlider2d.getValueXI ();
    kaleidoscopeYCoordinate = coordinatesSlider2d.getValueYI ();
  }

  //runs drawShape() method where everything is happening
  drawShape();
  if (drawPeriod())
  {
  //chosen = false;
  counting = 0;
  }
}



//drawShape() method draws into sketch window according to selected settings
void drawShape()
{       
  if (sketchIsSet)
  {
    image (sketch, 0, 0 );
  }

  //loads own image if user selected one
  if (load)
  {
    setup();
    image(img, 0, 0);
    sketch = get();
    load = false;
  }

  //image = get();
  if (img != null)
    img.set(drawStartX, drawStartY, sketch);

  //draws selected shape after left mouse button pressed
  if (mousePressed && (mouseButton == LEFT)) 
  {
    //saves an image before drawing selected shape to be able to use UNDO button
    if (saveRecover)
    {
      if (img == null)
        recover = get();
      else
        recover = img.get(0, 0, img.width, img.height);

      saveRecover = false;
    }

    //uses selected shapeColor to draw shape
    fill(shapeColor);

    //sets stroke color if stroke is selected
    if (stroke)
    {
      stroke(strokeColor);
    } else
    {
      noStroke();
    }

    //draws selected shape
    switch (shape)
    {
    case 'A':
      drawEllipse();
      break;
    case 'B':
      drawRectangle();
      break;
    case 'C':
      drawTriangle();
      break;   
    case 'D':
      drawSpiral();
      break;
    }
    sketchIsSet=false;
  } 

  //draws selected shape after right mouse button pressed
  else if (mousePressed && (mouseButton == RIGHT)) {

    //saves an image before drawing selected shape to be able to perform UNDO button
    if (saveRecover)
    {
      if (img == null)
        recover = get();
      else
        recover = img.get(0, 0, img.width, img.height);
      saveRecover = false;
    }

    //uses inverted color of shape
    fill(255-red(shapeColor), 255-green(shapeColor), 255-blue(shapeColor), alpha(shapeColor));

    //sets stroke if selected
    if (stroke)
    {
      stroke(255-red(strokeColor), 255-green(strokeColor), 255-blue(strokeColor), alpha(strokeColor));
    } else
    {
      noStroke();
    }

    //draws selected shape
    switch (shape)
    {
    case 'A':
      drawEllipse();
      break;
    case 'B':
      drawRectangle();
      break;
    case 'C':
      drawTriangle();
      break;
    case 'D':
      drawSpiral();
      break;
    }
    sketchIsSet=false;
  } 

  //draws position of mouse in sketch by showing imaginary selected shape
  //uses transformations, filters, temporary images and save them  
  else {
    if (sketchIsSet)
      image (sketch, 0, 0 );
      
    fill(0);
    stroke(255);
    strokeWeight(strokeWidth);

    sketch=null;
    sketch = get();
    sketchIsSet=true;

    //allows user to move in image
    if (pictureWidth != ww || pictureHeight != hh)
    {
      moveInImage();
    }

    //allows user to work with transformations
    if (transformOn)
    transformation();

    //allows user to work with temporary images
    if (drawTemporary1)
    {
      drawTemporary1();
    } else if (drawTemporary2)
    {
      drawTemporary2();
    } else if (drawTemporary3)
    {
      drawTemporary3();
    }

    //allows user to work with shape filter
    if (shapeFilterOn)
    {
      shapeFilter();
    }

    //allows user to save transformations, filter or temporary image
    if (save)
    {
      buttonUndo.setLocalColorScheme(GCScheme.CYAN_SCHEME);
      sketch = get(0, 0, sketch.width, sketch.height);
      image(sketch, 0, 0);

      if (img != null)
      {
        img = img2.get(0, 0, img2.width, img2.height);
        image(img, 0 - drawStartX, 0 - drawStartY);
      }

      save = false;
      transform = 'N';
      drawTemporary1 = false;
      drawTemporary2 = false;
      drawTemporary3 = false;
      shapeFilterOn = false;
    }

    if (img != null)
    {
      img.set(drawStartX, drawStartY, sketch);
    }

    //makes undo if pressed   
    if (undoDo)
    {
      undo();
      undoDo = false;
    }

    if (loadImage)
    {
      loadImage = false;
      selectInput("Select image:", "fileSelected");
    }

    //if image is bigger than display screen, this method diplays 
    //little arrows on the side of image to let him know he can move inside image 
    if (ww > pictureWidth || hh > pictureHeight)
    {
      largeImageArrows();
    }

    //sets color of mouse position in sketch window
    noFill();
    stroke(30, 186, 126);

    //draws selected shape in mouse postion
    switch (shape)
    {
    case 'A':
      ellipse(mouseX, mouseY, sizeOfShape, sizeOfShape);
      break;
    case 'B':
      rect(mouseX - (sizeOfShape/2), mouseY - (sizeOfShape/2), sizeOfShape, sizeOfShape);
      break;
    case 'C':
      triangle(mouseX, mouseY, mouseX + sizeOfShape * 0.75, mouseY + sizeOfShape, mouseX - sizeOfShape * 0.75, mouseY + sizeOfShape);
      break;
    case 'D' :
      spiral();
      break;
    }
  }
}

void largeImageArrows()
{
  fill(200, 200, 200);
  if (ww > pictureWidth && hh > pictureHeight)
  {
    triangle(pictureWidth / 2, 10, (pictureWidth / 2) - 10, 20, (pictureWidth / 2) + 10, 20);
    triangle(pictureWidth / 2, pictureHeight - 40, (pictureWidth / 2) - 10, pictureHeight - 50, (pictureWidth / 2) + 10, pictureHeight - 50);
    triangle(10, pictureHeight / 2, 20, (pictureHeight / 2) - 10, 20, (pictureHeight / 2) + 10);
    triangle(pictureWidth - 20, pictureHeight / 2, pictureWidth - 30, (pictureHeight / 2) - 10, pictureWidth - 30, (pictureHeight / 2) + 10);
  } else if (ww > pictureWidth && hh <= pictureHeight)
  {
    triangle(10, pictureHeight / 2, 20, (pictureHeight / 2) - 10, 20, (pictureHeight / 2) + 10);
    triangle(pictureWidth - 20, pictureHeight / 2, pictureWidth - 30, (pictureHeight / 2) - 10, pictureWidth - 30, (pictureHeight / 2) + 10);
  } else if (ww <= pictureWidth && hh > pictureHeight)
  {
    triangle(pictureWidth / 2, 10, (pictureWidth / 2) - 10, 20, (pictureWidth / 2) + 10, 20);
    triangle(pictureWidth / 2, pictureHeight - 40, (pictureWidth / 2) - 10, pictureHeight - 50, (pictureWidth / 2) + 10, pictureHeight - 50);
  }
}

void moveInImage()
{
  switch (keyCode)
  {
  case DOWN:
    {
      PImage temp = get(0, 0, pictureWidth, pictureHeight);     
      img.set(drawStartX, drawStartY, temp);

      if ((drawStartY >= pictureHeight - 50)&&(drawStartY < pictureHeight))
      {
        pushMatrix();
        translate(0, -pictureHeight);
        drawStartY = pictureHeight;
        image(img, 0, 0);
        popMatrix();
      }

      if ((drawStartY + 50 < pictureHeight)&&(pictureHeight + drawStartY  + 50 < img.height))
      {
        pushMatrix();
        drawStartY += 50;
        translate(-drawStartX, -drawStartY);      
        image(img, 0, 0);
        popMatrix();
      }

      sketch = get();
      break;
    }

  case UP:
    {
      PImage temp = get(0, 0, pictureWidth, pictureHeight);     
      img.set(drawStartX, drawStartY, temp);

      if (drawStartY > 50)
      {
        pushMatrix();
        drawStartY -= 50;
        translate(-drawStartX, -drawStartY);
        image(img, 0, 0);
        popMatrix();
      }
      sketch = get();
      break;
    }

  case RIGHT:
    {
      PImage temp = get(0, 0, pictureWidth, pictureHeight);     
      img.set(drawStartX, drawStartY, temp);

      if ((drawStartX + 50 < pictureWidth)&&(pictureWidth + drawStartX  + 50 < img.width))
      {
        pushMatrix();
        drawStartX += 50;
        translate(-drawStartX, -drawStartY);    
        image(img, 0, 0);
        popMatrix();
      }
      sketch = get();
      break;
    }

  case LEFT:
    {
      PImage temp = get(0, 0, pictureWidth, pictureHeight);     
      img.set(drawStartX, drawStartY, temp);

      if (drawStartX > 0)
      {
        pushMatrix();
        drawStartX -= 50;
        translate(-drawStartX, -drawStartY); 
        image(img, 0, 0);
        popMatrix();
      }
      sketch = get();
      break;
    }
  }
  keyCode = ENTER;
}

//undo function if UNDO button pressed or z key pressed
void undo()
{
  if (img == null)
    sketch = recover.get(0, 0, recover.width, recover.height);
  else
    sketch = recover.get(drawStartX, drawStartY, sketch.width, sketch.height);
  image(sketch, 0, 0);
}

//makes undo if z key pressed
void keyPressed() 
{
  if (key == 'z')
  {
    undo();
  }
}

//animation method starts to change image in sketch window if user is inactive 
void animation()
{
  if (imagePanel.isCollapsed() == false)
  {
    if (count % 80 == 0)
    {
      
      if (transform == 'A' || transform == 'B' || transform == 'C' || transform == 'D' || transform == 'E' || transform == 'F')
      {
        kaleidoscopeXCoordinate = (int)random(1,pictureWidth - 1);
        kaleidoscopeYCoordinate = (int)random(1,pictureHeight - 1);
      }     
      counting = 0;
    }
  }
}

//resets settings
void turnOffFunctions()
{
  drawTemporary1 = false;
  drawTemporary2 = false;
  drawTemporary3 = false;
  shapeFilterOn = false;  
  transformOn = false;

  buttonNone.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);

  buttonFilterCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.BLUE_SCHEME);
}

//when drawing, allows usage of undo button after releasing mouse press
void mouseReleased()
{
  buttonUndo.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  saveRecover = true;
}

//sets background color of new image
void chooseColor()
{
      Color javaColor;
      javaColor  = JColorChooser.showDialog(this,"Java Color Chooser",Color.BLACK);
      if (javaColor != null)
      backgroundColor = color(javaColor.getRed(),javaColor.getGreen(),
      javaColor.getBlue(),javaColor.getAlpha());  
}

//changes shaoe color 
void chooseColor1()
{
      Color javaColor;
      javaColor  = JColorChooser.showDialog(this,"Java Color Chooser",Color.BLACK);
      if (javaColor != null)
      shapeColor = color(javaColor.getRed(),javaColor.getGreen(),javaColor.getBlue(),javaColor.getAlpha());  
}

//changes stroke color
void chooseColor2()
{
      Color javaColor;
      javaColor  = JColorChooser.showDialog(this,"Java Color Chooser",Color.BLACK);
      if (javaColor != null)
      strokeColor = color(javaColor.getRed(),javaColor.getGreen(),javaColor.getBlue(),javaColor.getAlpha());  
}

