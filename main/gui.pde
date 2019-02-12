/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw4(GWinApplet appc, GWinData data) { //_CODE_:menuWindow:774023:
  appc.background(55,47,36);
  appc.fill(128,125,108);
  appc.line(5,576,175,576);
  
  appc.fill(255,254,216);
  appc.text("SHAPE",11,630);
  appc.text("STROKE",68,630);
  appc.text("CANVAS",124,630);
  appc.text("TEMPORARY IMAGES",30,700);
  
  //following part draws and works with color thumbnails at the bottom of menu
  appc.stroke(128,125,108);
  appc.noFill();
  appc.rect(12,582,34,34);
  appc.fill(255,255,255);
  appc.rect(14,584,32,32);
  appc.fill(shapeColor);
  appc.rect(15,585,30,30);
  
  appc.stroke(128,125,108);
  appc.noFill();
  appc.rect(72,582,34,34);  
  appc.fill(255,255,255);
  appc.rect(74,584,32,32);
  appc.fill(strokeColor);
  appc.rect(75,585,30,30);
  
  appc.stroke(128,125,108);
  appc.noFill();
  appc.rect(132,582,34,34);  
  appc.fill(255,255,255);
  appc.rect(134,584,32,32);
  appc.fill(backgroundColor);
  appc.rect(135,585,30,30);
  
  if (appc.mouseX > 15 && appc.mouseX < 55 && appc.mouseY > 585 
  && appc.mouseY < 625)
  {   

    if (appc.mousePressed)
    {  
      chooseColor1();
      appc.mouseX = 0;
      appc.mouseY = 0;   
      appc.mousePressed = false;   
    }
    else
    {

        appc.stroke(15,222,142);
        appc.noFill();
        appc.rect(13,583,34,34);
        appc.stroke(128,125,108);
        appc.noFill();
        appc.rect(12,582,34,34);
        appc.fill(shapeColor);
        appc.rect(15,585,30,30);
    }
  }

  if (appc.mouseX > 75 && appc.mouseX < 115 && appc.mouseY > 585 
  && appc.mouseY < 625)
  {   
    if (appc.mousePressed)
    {  
      chooseColor2();
      appc.mouseX = 0;
      appc.mouseY = 0;   
      appc.mousePressed = false;  
    }
    else
    {
        appc.stroke(15,222,142);
        appc.noFill();
        appc.rect(73,583,34,34);
        appc.stroke(128,125,108);
        appc.noFill();
        appc.rect(72,582,34,34);
        appc.fill(strokeColor);
        appc.rect(75,585,30,30);
    }
  }
  
  if (appc.mouseX > 125 && appc.mouseX < 165 && appc.mouseY > 585 
  && appc.mouseY < 625)
  {   
    if (appc.mousePressed)
    {  
      chooseColor();
      appc.mouseX = 0;
      appc.mouseY = 0;   
      appc.mousePressed = false;  
    }
    else
    {
        appc.stroke(15,222,142);
        appc.noFill();
        appc.rect(133,583,34,34);
        appc.stroke(128,125,108);
        appc.noFill();
        appc.rect(132,582,34,34);
        appc.fill(backgroundColor);
        appc.rect(135,585,30,30);
    }
  }
  
  appc.fill(shapeColor);
  appc.rect(15,585,30,30);
  
  appc.fill(strokeColor);
  appc.rect(75,585,30,30);
  
  appc.fill(backgroundColor);
  appc.rect(135,585,30,30);

  appc.noFill(); 
  appc.stroke(255,255,255);
  appc.rect(14,649,32,32); 
  appc.stroke(128,125,108);
  appc.rect(12,648,34,34);

  appc.stroke(255,255,255);
  appc.rect(74,649,32,32); 
  appc.stroke(128,125,108);
  appc.rect(72,648,34,34);
  
  appc.stroke(255,255,255);
  appc.rect(134,649,32,32); 
  appc.stroke(128,125,108);
  appc.rect(132,648,34,34);

  //following part works wwith temporary images if one of them was used
  if (appc.mouseX > 15 && appc.mouseX < 55 && appc.mouseY > 645 
  && appc.mouseY < 675)
  {   
    if (appc.mousePressed)
    {  
      if (temporary1 != null)
      {
        filterPanel.setCollapsed(false);
        panelFilter.setCollapsed(true);
        imagePanel.setCollapsed(true);
        shapePanel.setCollapsed(true);
        loadSavePanel.setCollapsed(true);
        
        drawTemporary1 = true;
        drawTemporary2 = false;
        drawTemporary3 = false;
        appc.mousePressed = false;
      }
    }
    else
    {
        appc.stroke(15,222,142);
        appc.noFill();
        appc.rect(13,648,34,34);
        appc.stroke(128,125,108);
        appc.noFill();
        appc.rect(12,647,34,34);
    }
  }

  if (appc.mouseX > 75 && appc.mouseX < 125 && appc.mouseY > 645 
  && appc.mouseY < 675)
  {   
    if (appc.mousePressed)
    {  
      if (temporary2 != null)
      {
        filterPanel.setCollapsed(false);
        panelFilter.setCollapsed(true);
        imagePanel.setCollapsed(true);
        shapePanel.setCollapsed(true);
        loadSavePanel.setCollapsed(true);
        
        drawTemporary1 = false;
        drawTemporary2 = true;
        drawTemporary3 = false;
        appc.mousePressed = false;
      }
    }
    else
    {
        appc.stroke(15,222,142);
        appc.noFill();
        appc.rect(73,648,34,34);
        appc.stroke(128,125,108);
        appc.noFill();
        appc.rect(72,647,34,34);
    }
  }
  
  if (appc.mouseX > 135 && appc.mouseX < 185 && appc.mouseY > 645 
  && appc.mouseY < 675)
  {   
      if (appc.mousePressed)
      {  
        if (temporary3 != null)
        {
          filterPanel.setCollapsed(false);
          panelFilter.setCollapsed(true);
          imagePanel.setCollapsed(true);
          shapePanel.setCollapsed(true);
          loadSavePanel.setCollapsed(true);
        
          drawTemporary1 = false;
          drawTemporary2 = false;
          drawTemporary3 = true;
          appc.mousePressed = false;
        }
      }
      else
      {
          appc.stroke(15,222,142);
          appc.noFill();
          appc.rect(133,648,34,34);
          appc.stroke(128,125,108);
          appc.noFill();
          appc.rect(132,647,34,34);
      }
    
  }
  
  //following part draws thumbnails of saved temporary images
  appc.fill(55,47,36);
  
  if(temporary1Thumbnail!= null)
  {
    appc.image(temporary1Thumbnail,15,650);
  }
  else
  {
    appc.rect(15,650,30,30);
  }

  if(temporary2Thumbnail!= null)
  {
    appc.image(temporary2Thumbnail,75,650);
  }
  else
  {
    appc.rect(75,650,30,30);
  }
  
  if(temporary3Thumbnail!= null)
  {
    appc.image(temporary3Thumbnail,135,650);
  }
  else
  {
    appc.rect(135,650,30,30); 
  }
  
  appc.noStroke();
  appc.fill(89,81,68);
  
  //following part draws menu tabs when one of the tabs is opened
  appc.rect(0,4,182,17);
  appc.rect(0,30,182,17);
  appc.rect(0,56,182,17);
  appc.rect(0,82,182,17);
  appc.rect(0,108,182,17);
  
  if (!shapePanel.isCollapsed() || !imagePanel.isCollapsed() || !filterPanel.isCollapsed() || !panelFilter.isCollapsed())
  {
      if (!shapePanel.isCollapsed() && appc.mousePressed)
      {
        if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 550 && appc.mouseY < 567)
        {
            loadSavePanel.setCollapsed(false);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
  
         
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 524 && appc.mouseY < 541)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(false);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
         
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 498 && appc.mouseY < 515)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(false);
            turnOffFunctions();
         
        }   
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 472 && appc.mouseY < 489)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(false);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
         
        }      
      }

      else if (!imagePanel.isCollapsed() && appc.mousePressed)
      {
        if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 550 && appc.mouseY < 567)
        {
            loadSavePanel.setCollapsed(false);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
         
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 524 && appc.mouseY < 541)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(false);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
         
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 498 && appc.mouseY < 515)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(false);
            turnOffFunctions();
         
        }         
      }  
      else if (!panelFilter.isCollapsed() && appc.mousePressed)
      {
        if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 550 && appc.mouseY < 567)
        {
            loadSavePanel.setCollapsed(false);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
         
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 524 && appc.mouseY < 541)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(false);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
        }        
      }   
      else if (!filterPanel.isCollapsed() && appc.mousePressed)
      {
        if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 550 && appc.mouseY < 567)
        {
            loadSavePanel.setCollapsed(false);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(true);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
        }
        else if (appc.mouseX > 0 && appc.mouseX < 182 && appc.mouseY > 524 && appc.mouseY < 541)
        {
            loadSavePanel.setCollapsed(true);  
            shapePanel.setCollapsed(true);
            imagePanel.setCollapsed(true);
            filterPanel.setCollapsed(false);
            panelFilter.setCollapsed(true);
            turnOffFunctions();
        }        
      }       
      
  }
  
  if (!shapePanel.isCollapsed())
  {
    appc.rect(0,550,182,17);
    appc.rect(0,524,182,17);
    appc.rect(0,498,182,17);
    appc.rect(0,472,182,17);
    
    appc.fill(255,254,216);
    appc.text("  NEW&LOAD&SAVE",0,563);
    appc.text("  TEMPORARY IMAGES",0,537); 
    appc.text("  IMAGE",0,512);   
    appc.text("  TRANSFORMATIONS",0,485);  
    
  }
  
  if (!imagePanel.isCollapsed())
  {
    appc.rect(0,550,182,17);
    appc.rect(0,524,182,17);
    appc.rect(0,498,182,17);
    
    appc.fill(255,254,216);
    appc.text("  NEW&LOAD&SAVE",0,563);
    appc.text("  TEMPORARY IMAGES",0,537); 
    appc.text("  IMAGE",0,512);   
  }
  
  if(!panelFilter.isCollapsed())
  {
    appc.rect(0,550,182,17);
    appc.rect(0,524,182,17);
    
    appc.fill(255,254,216);
    appc.text("  NEW&LOAD&SAVE",0,563);
    appc.text("  TEMPORARY IMAGES",0,537);
  }  
  
  if (!filterPanel.isCollapsed())
  {
    appc.rect(0,550,182,17);
    
    appc.fill(255,254,216);
    appc.text(" NEW&LOAD&SAVE",0,563);
  }
  
  //parameters explanation
    if (!shapePanel.isCollapsed())
    {
      if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 280 && appc.mouseY < 305)
       {
          label4.setText("amount of shapes");
       } 
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 250 && appc.mouseY < 275)
      {
        if (shape == 'D')
        {
           label1.setText("length of spiral");
        }
        else
        {
          label1.setText("size of shape");
        }
      }
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 310 && appc.mouseY < 335)
      {
        label3.setText("size of random area");
      }
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 340 && appc.mouseY < 365)
      {
        if (shape == 'D')
        {
          label2.setText("radius of spiral");
        }
        else
        {
          if (concentricShape =='B')
          label2.setText("radius difference");
          else if (concentricShape =='C')
          label2.setText("row distance");
        }
      }
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 425 && appc.mouseY < 450)
      {
        label11.setText("stroke width");
      }
      else
       {
         label4.setText("AMOUNT");
         label4.setTextBold();
         if (shape == 'D')
         {
           label1.setText("LENGTH");  
           label2.setText("RADIUS");
         }
         else
         {
           label1.setText("SIZE");
           if (concentricShape =='B')
             label2.setText("RADIUS");
           else if (concentricShape =='C')
             label2.setText("DISTANCE");
         }
         label1.setTextBold();
         label3.setText("RANDOM");
         label3.setTextBold();
         label2.setTextBold();
         label11.setText("WIDTH");
         label11.setTextBold();
       }       
    } 
    else if (!imagePanel.isCollapsed())
    {
      if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 130 && appc.mouseY < 155)
       {
          if (transform == 'D' || transform == 'E' || transform == 'F')
          label13.setText("kaleidoscope size");
       } 
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 160 && appc.mouseY < 185)
      {
        if (transform == 'X')
        {
           label26.setText("translation of pixels");
        }
      }
      else if(appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 190 && appc.mouseY < 215)
      {
        if (transform == 'X')
          label25.setText("radius of circle");
      }      
      else
       {
         label13.setText("KALEID SIZE");
         label13.setTextBold();
         label26.setText("TRANSLATE");
         label26.setTextBold();
         label25.setText("RADIUS");
         label25.setTextBold();
       }       
    } 
    else if (!loadSavePanel.isCollapsed())
    {
      if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 160 && appc.mouseY < 185)
       {
          label14.setText("new image size");
       } 
      else
       {
         label14.setText("SIZE");
         label14.setTextBold();
       }       
    } 
    else if (!filterPanel.isCollapsed())
    {
      if (appc.mouseX > 0 && appc.mouseX < 90 && appc.mouseY > 190 && appc.mouseY < 215)
       {
          label18.setText("temporary image position");
       } 
      else if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 190 && appc.mouseY < 215)
       {
         if (tempBlendType == 'N')
          label19.setText("temporary image rotation");
       } 
      else if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 220 && appc.mouseY < 245)
       {
          label20.setText("temporary image scale");
       } 
      else if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 250 && appc.mouseY < 275)
       {
          label21.setText("temporary image opacity");
       } 
      else
       {
         label18.setText("POSITION");
         label18.setTextBold();
         label19.setText("ROTATION");
         label19.setTextBold();
         label20.setText("SCALE");
         label20.setTextBold();
         label21.setText("OPACITY");
         label21.setTextBold();
       }       
    } 
    else if (!panelFilter.isCollapsed())
    {
      if (appc.mouseX > 93 && appc.mouseX < 175 && appc.mouseY > 220 && appc.mouseY < 245)
       {
          label24.setText("size of filter shape");
       } 
      else
       {
         label24.setText("INTENSITY");
         label24.setTextBold();
       }       
    } 
} //_CODE_:menuWindow:774023:

public void shapePanel_Click(GPanel source, GEvent event) { //_CODE_:shapePanel:963605:

      imagePanel.setCollapsed(true);
      filterPanel.setCollapsed(true);
      loadSavePanel.setCollapsed(true);
      panelFilter.setCollapsed(true);
      turnOffFunctions();
  
} //_CODE_:shapePanel:963605:

public void buttonCircle_click(GButton source, GEvent event) { //_CODE_:buttonCircle:219865:
  shape = 'A';
  buttonCircle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonRectangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonSpiral.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (concentricShape == 'A')
  radiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  else
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonCircle:219865:

public void buttonRectangle_click(GButton source, GEvent event) { //_CODE_:buttonRectangle:707124:
  shape = 'B';
  buttonCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRectangle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonSpiral.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (concentricShape == 'A')
  radiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  else
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonRectangle:707124:

public void buttonTriangle_click(GButton source, GEvent event) { //_CODE_:buttonTriangle:840543:
  shape = 'C';
  buttonCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRectangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonTriangle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonSpiral.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (concentricShape == 'A')
  radiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  else
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonTriangle:840543:

public void buttonSpiral_click(GButton source, GEvent event) { //_CODE_:buttonSpiral:377433:
  shape = 'D';
  buttonCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRectangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonSpiral.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonSpiral:377433:

public void countShapesSlider_change(GSlider source, GEvent event) { //_CODE_:countShapesSlider:553408:
  numshape = countShapesSlider.getValueI ();
} //_CODE_:countShapesSlider:553408:

public void shapeSizeSlider_change(GSlider source, GEvent event) { //_CODE_:shapeSizeSlider:622264:
  sizeOfShape = shapeSizeSlider.getValueI();
} //_CODE_:shapeSizeSlider:622264:

public void randomnessSlider_change(GSlider source, GEvent event) { //_CODE_:randomnessSlider:881779:
  randomness = randomnessSlider.getValueI();
} //_CODE_:randomnessSlider:881779:

public void radiusSlider_change(GSlider source, GEvent event) { //_CODE_:radiusSlider:367919:
  shapeRadius = radiusSlider.getValueI();
} //_CODE_:radiusSlider:367919:

public void strokeWidthSlider_change(GSlider source, GEvent event) { //_CODE_:strokeWidthSlider:304715:
  strokeWidth = strokeWidthSlider.getValueI();
} //_CODE_:strokeWidthSlider:304715:

public void buttonSimple_click(GButton source, GEvent event) { //_CODE_:buttonSimple:246062:
  concentricShape = 'A';
  buttonTouching.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonConcentric.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonSimple.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  if (shape == 'D')
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  else
  radiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonSimple:246062:

public void buttonConcentric_click(GButton source, GEvent event) { //_CODE_:buttonConcentric:723956:
  concentricShape = 'B';
  buttonTouching.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonConcentric.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonSimple.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonConcentric:723956:

public void buttonTouching_click(GButton source, GEvent event) { //_CODE_:buttonTouching:879822:
  concentricShape = 'C';
  buttonTouching.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonConcentric.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonSimple.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  radiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonTouching:879822:

public void buttonStroke_click(GButton source, GEvent event) { //_CODE_:buttonStroke:804704:
  stroke = true;
  buttonStroke.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonNoStroke.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonStroke:804704:

public void buttonNoStroke_click(GButton source, GEvent event) { //_CODE_:buttonNoStroke:750481:
  stroke = false;
  buttonStroke.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonNoStroke.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonNoStroke:750481:

public void imagePanel_Click(GPanel source, GEvent event) { //_CODE_:imagePanel:565318:
  shapePanel.setCollapsed(true);
  //imagePanel.setCollapsed(false);
  filterPanel.setCollapsed(true);
  loadSavePanel.setCollapsed(true);
  panelFilter.setCollapsed(true);
  turnOffFunctions();
} //_CODE_:imagePanel:565318:

public void resetButton_click(GButton source, GEvent event) { //_CODE_:resetButton:671860:
    
  if (img == null)
      recover = sketch.get(0,0,sketch.width,sketch.height);
  else
      recover = img.get(0,0,img.width, img.height);
      saveRecover = true;
//  buttonUndo.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  
  save = true;

  //invert = false;
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
} //_CODE_:resetButton:671860:

public void coordinatesSlider2d_change(GSlider2D source, GEvent event) { //_CODE_:coordinatesSlider2d:213951:
  kaleidoscopeXCoordinate = coordinatesSlider2d.getValueXI ();
  kaleidoscopeYCoordinate = coordinatesSlider2d.getValueYI ();
} //_CODE_:coordinatesSlider2d:213951:

public void partSizeSlider_change(GSlider source, GEvent event) { //_CODE_:partSizeSlider:682347:
  partSize = partSizeSlider.getValueI();
} //_CODE_:partSizeSlider:682347:

public void invertRadiusSlider_change(GSlider source, GEvent event) { //_CODE_:invertRadiusSlider:682875:
  invertRadius = invertRadiusSlider.getValueI();
} //_CODE_:invertRadiusSlider:682875:

public void sliderInvert_change(GSlider source, GEvent event) { //_CODE_:sliderInvert:586701:
  invertTranslate = sliderInvert.getValueI();
} //_CODE_:sliderInvert:586701:

public void buttonNone_click(GButton source, GEvent event) { //_CODE_:buttonNone:850689:
  transformOn = false;
  transform = 'N';
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
  
} //_CODE_:buttonNone:850689:

public void buttonRows_click(GButton source, GEvent event) { //_CODE_:buttonRows:373015:
  transform = 'R';
  transformOn = true;
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (mirror)
  {
    buttonReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  }
  else
  {
    buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  }
} //_CODE_:buttonRows:373015:

public void buttonColumns_click(GButton source, GEvent event) { //_CODE_:buttonColumns:214295:
  transform = 'C';
  transformOn = true;
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (mirror)
  {
    buttonReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  }
  else
  {
    buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  }
} //_CODE_:buttonColumns:214295:

public void buttonRect_click(GButton source, GEvent event) { //_CODE_:buttonRect:596064:
  transform = 'Z';
  transformOn = true;
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);

} //_CODE_:buttonRect:596064:

public void buttonKaleidR_click(GButton source, GEvent event) { //_CODE_:buttonKaleidR:333634:
  transform = 'D';
  transformOn = true;
  kaleid = 'D';
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonKaleidR:333634:

public void buttonKaleid2_click(GButton source, GEvent event) { //_CODE_:buttonKaleid2:912898:
  transform = 'D';
  transformOn = true;
  kaleid = 'E';
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (mirror)
  {
    buttonReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  }
  else
  {
    buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  }
} //_CODE_:buttonKaleid2:912898:

public void buttonKaleid4_click(GButton source, GEvent event) { //_CODE_:buttonKaleid4:926428:
  transform = 'D';
  transformOn = true;
  kaleid = 'F';
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (mirror)
  {
    buttonReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  }
  else
  {
    buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
    buttonNoReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  }
} //_CODE_:buttonKaleid4:926428:

public void buttonInvert_click(GButton source, GEvent event) { //_CODE_:buttonInvert:562593:
  transform = 'X';
  transformOn = true;
  buttonNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRows.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonColumns.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleidR.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonKaleid2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonInvert.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonKaleid4.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  coordinatesSlider2d.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  partSizeSlider.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  invertRadiusSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderInvert.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonInvert:562593:

public void buttonReflect_click(GButton source, GEvent event) { //_CODE_:buttonReflect:759826:
  mirror = true;
  if (transform == 'R' || transform == 'C' || kaleid == 'F' || kaleid == 'E')
  buttonReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonNoReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonReflect:759826:

public void buttonNoReflect_click(GButton source, GEvent event) { //_CODE_:buttonNoReflect:804119:
  mirror = false;
  buttonReflect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  if (transform == 'R' || transform == 'C' || kaleid == 'F' || kaleid == 'E')
  buttonNoReflect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonNoReflect:804119:

public void loadSavePanel_Click(GPanel source, GEvent event) { //_CODE_:loadSavePanel:657972:
  shapePanel.setCollapsed(true);
  imagePanel.setCollapsed(true);
  filterPanel.setCollapsed(true);
  panelFilter.setCollapsed(true);
  turnOffFunctions();
  //loadSavePanel.setCollapsed(false);
} //_CODE_:loadSavePanel:657972:

public void loadButton_click(GButton source, GEvent event) { //_CODE_:loadButton:231524:
  loadImage = true;
  //selectInput("Select image:", "fileSelected");
} //_CODE_:loadButton:231524:

public void newButton_click(GButton source, GEvent event) { //_CODE_:newButton:978582:
  newFile = true;
} //_CODE_:newButton:978582:

public void saveButton_click(GButton source, GEvent event) { //_CODE_:saveButton:315576:
  selectOutput("Select a file to write to:", "fileSaving");
} //_CODE_:saveButton:315576:

public void buttonTemporary1_click(GButton source, GEvent event) { //_CODE_:buttonTemporary1:962382:
  temporarySave1();
  buttonTemporary1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDeleteTemp.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonTemporary1:962382:

public void sliderNewSize_change(GSlider source, GEvent event) { //_CODE_:sliderNewSize:365543:
  newSize = sliderNewSize.getValueI();
  label14.setText("SIZE " + newSize);
  label14.setTextBold();
} //_CODE_:sliderNewSize:365543:

public void buttonTemporary2_click(GButton source, GEvent event) { //_CODE_:buttonTemporary2:641049:
  temporarySave2();
  buttonTemporary2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDeleteTemp.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonTemporary2:641049:

public void buttonTemporary3_click(GButton source, GEvent event) { //_CODE_:buttonTemporary3:293401:
  temporarySave3();
  buttonTemporary3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDeleteTemp.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonTemporary3:293401:

public void buttonDeleteTemp_click(GButton source, GEvent event) { //_CODE_:buttonDeleteTemp:589828:
  deleteAllTemporary();
  buttonTemporary1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonTemporary2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonTemporary3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonDeleteTemp:589828:

public void filterPanel_Click(GPanel source, GEvent event) { //_CODE_:filterPanel:730174:
  shapePanel.setCollapsed(true);
  imagePanel.setCollapsed(true);
  //filterPanel.setCollapsed(false);
  loadSavePanel.setCollapsed(true);
  panelFilter.setCollapsed(true);
  turnOffFunctions();
} //_CODE_:filterPanel:730174:

public void buttonSaveTemp_click(GButton source, GEvent event) { //_CODE_:buttonSaveTemp:702727:
  if (img == null)
      recover = sketch.get(0,0,sketch.width,sketch.height);
  else
      recover = img.get(0,0,img.width, img.height);
  saveRecover = true;
//  buttonUndo.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  
  save = true;
} //_CODE_:buttonSaveTemp:702727:

public void slider2dTempPosition_change(GSlider2D source, GEvent event) { //_CODE_:slider2dTempPosition:962998:
  tempPositionX = slider2dTempPosition.getValueXI ();
  tempPositionY = slider2dTempPosition.getValueYI ();
} //_CODE_:slider2dTempPosition:962998:

public void knob1_turn1(GKnob source, GEvent event) { //_CODE_:knob1:941473:
  tempDegree = knob1.getValueI();
} //_CODE_:knob1:941473:

public void sliderScale_change(GSlider source, GEvent event) { //_CODE_:sliderScale:945443:
  scale = sliderScale.getValueF();
} //_CODE_:sliderScale:945443:

public void sliderTint_change(GSlider source, GEvent event) { //_CODE_:sliderTint:735414:
  tempOpacity = sliderTint.getValueI();
} //_CODE_:sliderTint:735414:

public void buttonBlendNone_click(GButton source, GEvent event) { //_CODE_:buttonBlendNone:243067:
  tempBlendType = 'N';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  knob1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonBlendNone:243067:

public void buttonBlendOverlay_click(GButton source, GEvent event) { //_CODE_:buttonBlendOverlay:467704:
  tempBlendType = 'A';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendOverlay:467704:

public void buttonBlendAdd_click(GButton source, GEvent event) { //_CODE_:buttonBlendAdd:544546:
  tempBlendType = 'B';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendAdd:544546:

public void buttonBlendSubtract_click(GButton source, GEvent event) { //_CODE_:buttonBlendSubtract:752321:
  tempBlendType = 'C';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendSubtract:752321:

public void buttonBlendBurn_click(GButton source, GEvent event) { //_CODE_:buttonBlendBurn:602563:
  tempBlendType = 'D';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendBurn:602563:

public void buttonBlendDodge_click(GButton source, GEvent event) { //_CODE_:buttonBlendDodge:925353:
  tempBlendType = 'E';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendDodge:925353:

public void buttonBlendSoft_click(GButton source, GEvent event) { //_CODE_:buttonBlendSoft:988745:
  tempBlendType = 'F';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendSoft:988745:

public void button8buttonBlendHard(GButton source, GEvent event) { //_CODE_:buttonBlendHard:567619:
  tempBlendType = 'G';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendHard:567619:

public void buttonBlendMultiply_click(GButton source, GEvent event) { //_CODE_:buttonBlendMultiply:777192:
  tempBlendType = 'H';
  buttonBlendScreen.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendMultiply:777192:

public void buttonBlendScreen_click(GButton source, GEvent event) { //_CODE_:buttonBlendScreen:222260:
  tempBlendType = 'I';
  buttonBlendScreen.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendMultiply.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendHard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSoft.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendDodge.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendBurn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendSubtract.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendAdd.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendOverlay.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonBlendNone.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  knob1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonBlendScreen:222260:

public void buttonFadeOut_click(GButton source, GEvent event) { //_CODE_:buttonFadeOut:610818:
  tempFadeOut = true;
  buttonNoFadeOut.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFadeOut.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonFadeOut:610818:

public void buttonNoFadeOut_click(GButton source, GEvent event) { //_CODE_:buttonNoFadeOut:621440:
  tempFadeOut = false;
  buttonNoFadeOut.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonFadeOut.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonNoFadeOut:621440:

public void buttonDelTemp_click(GButton source, GEvent event) { //_CODE_:buttonDelTemp:791913:
  deleteTempDrawing();
} //_CODE_:buttonDelTemp:791913:

public void panelFilter_Click(GPanel source, GEvent event) { //_CODE_:panelFilter:580493:
  shapePanel.setCollapsed(true);
  imagePanel.setCollapsed(true);
  filterPanel.setCollapsed(true);
  loadSavePanel.setCollapsed(true);
  //panelFilter.setCollapsed(true);
  turnOffFunctions();
} //_CODE_:panelFilter:580493:

public void buttonShapeFilter_click(GButton source, GEvent event) { //_CODE_:buttonShapeFilter:737773:
  if (img == null)
      recover = sketch.get(0,0,sketch.width,sketch.height);
  else
      recover = img.get(0,0,img.width, img.height);
  
  saveRecover = true;
  //buttonUndo.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  
  save = true;
  buttonFilterCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonShapeFilter:737773:

public void buttonFilterCircle_click(GButton source, GEvent event) { //_CODE_:buttonFilterCircle:368560:
  shapeFilter = 'A';
  shapeFilterOn = true;
  buttonFilterCircle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonFilterCircle:368560:

public void buttonFilterRect_click(GButton source, GEvent event) { //_CODE_:buttonFilterRect:289546:
  shapeFilter = 'B';
  shapeFilterOn = true;
  buttonFilterCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonFilterRect:289546:

public void buttonFilterTriangle_click(GButton source, GEvent event) { //_CODE_:buttonFilterTriangle:476869:
  shapeFilter = 'C';
  shapeFilterOn = true;  
  buttonFilterCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.CYAN_SCHEME);
} //_CODE_:buttonFilterTriangle:476869:

public void sliderFilterIntensity_change(GSlider source, GEvent event) { //_CODE_:sliderFilterIntensity:571385:
  shapeFilterRand = sliderFilterIntensity.getValueI();
} //_CODE_:sliderFilterIntensity:571385:

public void buttonDelFilter_click(GButton source, GEvent event) { //_CODE_:buttonDelFilter:941275:
  shapeFilterOn = false;
  buttonFilterCircle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterRect.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonFilterTriangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonShapeFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  buttonDelFilter.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  sliderFilterIntensity.setLocalColorScheme(GCScheme.BLUE_SCHEME);
} //_CODE_:buttonDelFilter:941275:

public void buttonUndo_click(GButton source, GEvent event) { //_CODE_:buttonUndo:555646:
  undoDo = true;
  //undo();
  buttonUndo.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  
} //_CODE_:buttonUndo:555646:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  menuWindow = new GWindow(this, "EVOiA", 0, 0, 172, 730, false, JAVA2D);
  menuWindow.setActionOnClose(G4P.EXIT_APP);
  menuWindow.addDrawHandler(this, "win_draw4");
  shapePanel = new GPanel(menuWindow.papplet, 0, 4, 182, 455, "  DRAW SHAPES");
  shapePanel.setCollapsed(true);
  shapePanel.setDraggable(false);
  shapePanel.setText("  DRAW SHAPES");
  shapePanel.setTextBold();
  shapePanel.setOpaque(true);
  shapePanel.addEventHandler(this, "shapePanel_Click");
  buttonCircle = new GButton(menuWindow.papplet, 5, 36, 82, 50);
  buttonCircle.setText("CIRCLE");
  buttonCircle.setTextBold();
  buttonCircle.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonCircle.addEventHandler(this, "buttonCircle_click");
  buttonRectangle = new GButton(menuWindow.papplet, 93, 36, 82, 50);
  buttonRectangle.setText("RECTANGLE");
  buttonRectangle.setTextBold();
  buttonRectangle.addEventHandler(this, "buttonRectangle_click");
  buttonTriangle = new GButton(menuWindow.papplet, 5, 91, 82, 50);
  buttonTriangle.setText("TRIANGLE");
  buttonTriangle.setTextBold();
  buttonTriangle.addEventHandler(this, "buttonTriangle_click");
  buttonSpiral = new GButton(menuWindow.papplet, 93, 91, 82, 50);
  buttonSpiral.setText("SPIRAL");
  buttonSpiral.setTextBold();
  buttonSpiral.addEventHandler(this, "buttonSpiral_click");
  countShapesSlider = new GSlider(menuWindow.papplet, 5, 280, 82, 25, 10.0);
  countShapesSlider.setLimits(5, 1, 20);
  countShapesSlider.setNbrTicks(10);
  countShapesSlider.setShowTicks(true);
  countShapesSlider.setNumberFormat(G4P.INTEGER, 0);
  countShapesSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  countShapesSlider.setOpaque(false);
  countShapesSlider.addEventHandler(this, "countShapesSlider_change");
  label4 = new GLabel(menuWindow.papplet, 93, 280, 82, 25);
  label4.setText("AMOUNT");
  label4.setTextBold();
  label4.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label4.setOpaque(false);
  shapeSizeSlider = new GSlider(menuWindow.papplet, 5, 250, 82, 25, 10.0);
  shapeSizeSlider.setLimits(40, 1, 400);
  shapeSizeSlider.setNbrTicks(10);
  shapeSizeSlider.setShowTicks(true);
  shapeSizeSlider.setNumberFormat(G4P.INTEGER, 0);
  shapeSizeSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  shapeSizeSlider.setOpaque(false);
  shapeSizeSlider.addEventHandler(this, "shapeSizeSlider_change");
  label1 = new GLabel(menuWindow.papplet, 93, 250, 82, 25);
  label1.setText("SIZE");
  label1.setTextBold();
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(false);
  randomnessSlider = new GSlider(menuWindow.papplet, 5, 310, 82, 25, 10.0);
  randomnessSlider.setLimits(50, 0, 200);
  randomnessSlider.setNbrTicks(10);
  randomnessSlider.setShowTicks(true);
  randomnessSlider.setNumberFormat(G4P.INTEGER, 0);
  randomnessSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  randomnessSlider.setOpaque(false);
  randomnessSlider.addEventHandler(this, "randomnessSlider_change");
  label3 = new GLabel(menuWindow.papplet, 93, 310, 82, 25);
  label3.setText("RANDOM");
  label3.setTextBold();
  label3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label3.setOpaque(false);
  radiusSlider = new GSlider(menuWindow.papplet, 5, 340, 82, 25, 10.0);
  radiusSlider.setLimits(5, 0, 100);
  radiusSlider.setNbrTicks(10);
  radiusSlider.setShowTicks(true);
  radiusSlider.setNumberFormat(G4P.INTEGER, 0);
  radiusSlider.setOpaque(false);
  radiusSlider.addEventHandler(this, "radiusSlider_change");
  label2 = new GLabel(menuWindow.papplet, 93, 340, 82, 25);
  label2.setText("RADIUS");
  label2.setTextBold();
  label2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label2.setOpaque(false);
  label7 = new GLabel(menuWindow.papplet, 48, 18, 80, 20);
  label7.setText("Select shape");
  label7.setTextBold();
  label7.setTextItalic();
  label7.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label7.setOpaque(false);
  label8 = new GLabel(menuWindow.papplet, 0, 143, 182, 20);
  label8.setText("Select drawing type");
  label8.setTextBold();
  label8.setTextItalic();
  label8.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label8.setOpaque(false);
  label9 = new GLabel(menuWindow.papplet, 0, 225, 172, 20);
  label9.setText("Change properties");
  label9.setTextBold();
  label9.setTextItalic();
  label9.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label9.setOpaque(false);
  label10 = new GLabel(menuWindow.papplet, 0, 370, 172, 20);
  label10.setText("Stroke properties");
  label10.setTextBold();
  label10.setTextItalic();
  label10.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label10.setOpaque(false);
  strokeWidthSlider = new GSlider(menuWindow.papplet, 5, 425, 82, 25, 10.0);
  strokeWidthSlider.setLimits(1, 1, 20);
  strokeWidthSlider.setNbrTicks(10);
  strokeWidthSlider.setStickToTicks(true);
  strokeWidthSlider.setShowTicks(true);
  strokeWidthSlider.setNumberFormat(G4P.INTEGER, 0);
  strokeWidthSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  strokeWidthSlider.setOpaque(false);
  strokeWidthSlider.addEventHandler(this, "strokeWidthSlider_change");
  label11 = new GLabel(menuWindow.papplet, 92, 425, 82, 25);
  label11.setText("WIDTH");
  label11.setTextBold();
  label11.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label11.setOpaque(false);
  buttonSimple = new GButton(menuWindow.papplet, 5, 165, 82, 25);
  buttonSimple.setText("SIMPLE");
  buttonSimple.setTextBold();
  buttonSimple.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonSimple.addEventHandler(this, "buttonSimple_click");
  buttonConcentric = new GButton(menuWindow.papplet, 93, 165, 82, 25);
  buttonConcentric.setText("CONCENTRIC");
  buttonConcentric.setTextBold();
  buttonConcentric.addEventHandler(this, "buttonConcentric_click");
  buttonTouching = new GButton(menuWindow.papplet, 48, 195, 82, 25);
  buttonTouching.setText("TOUCHING");
  buttonTouching.setTextBold();
  buttonTouching.addEventHandler(this, "buttonTouching_click");
  buttonStroke = new GButton(menuWindow.papplet, 5, 395, 82, 25);
  buttonStroke.setText("STROKE");
  buttonStroke.setTextBold();
  buttonStroke.addEventHandler(this, "buttonStroke_click");
  buttonNoStroke = new GButton(menuWindow.papplet, 93, 395, 82, 25);
  buttonNoStroke.setText("NO STROKE");
  buttonNoStroke.setTextBold();
  buttonNoStroke.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonNoStroke.addEventHandler(this, "buttonNoStroke_click");
  shapePanel.addControl(buttonCircle);
  shapePanel.addControl(buttonRectangle);
  shapePanel.addControl(buttonTriangle);
  shapePanel.addControl(buttonSpiral);
  shapePanel.addControl(countShapesSlider);
  shapePanel.addControl(label4);
  shapePanel.addControl(shapeSizeSlider);
  shapePanel.addControl(label1);
  shapePanel.addControl(randomnessSlider);
  shapePanel.addControl(label3);
  shapePanel.addControl(radiusSlider);
  shapePanel.addControl(label2);
  shapePanel.addControl(label7);
  shapePanel.addControl(label8);
  shapePanel.addControl(label9);
  shapePanel.addControl(label10);
  shapePanel.addControl(strokeWidthSlider);
  shapePanel.addControl(label11);
  shapePanel.addControl(buttonSimple);
  shapePanel.addControl(buttonConcentric);
  shapePanel.addControl(buttonTouching);
  shapePanel.addControl(buttonStroke);
  shapePanel.addControl(buttonNoStroke);
  imagePanel = new GPanel(menuWindow.papplet, 0, 30, 182, 470, "  TRANSFORMATIONS                   ");
  imagePanel.setCollapsed(true);
  imagePanel.setDraggable(false);
  imagePanel.setText("  TRANSFORMATIONS                   ");
  imagePanel.setTextBold();
  imagePanel.setOpaque(true);
  imagePanel.addEventHandler(this, "imagePanel_Click");
  resetButton = new GButton(menuWindow.papplet, 5, 430, 170, 32);
  resetButton.setText("SAVE TRANSFORMATION");
  resetButton.setTextBold();
  resetButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  resetButton.addEventHandler(this, "resetButton_click");
  label5 = new GLabel(menuWindow.papplet, 24, 20, 130, 21);
  label5.setText("Change properties");
  label5.setTextBold();
  label5.setTextItalic();
  label5.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label5.setOpaque(false);
  coordinatesSlider2d = new GSlider2D(menuWindow.papplet, 93, 43, 82, 50);
  coordinatesSlider2d.setLimitsX(1.0, 1.0, 600.0);
  coordinatesSlider2d.setLimitsY(1.0, 1.0, 600.0);
  coordinatesSlider2d.setNumberFormat(G4P.INTEGER, 0);
  coordinatesSlider2d.setOpaque(true);
  coordinatesSlider2d.addEventHandler(this, "coordinatesSlider2d_change");
  partSizeSlider = new GSlider(menuWindow.papplet, 5, 100, 82, 25, 10.0);
  partSizeSlider.setLimits(50, 1, 300);
  partSizeSlider.setNbrTicks(10);
  partSizeSlider.setShowTicks(true);
  partSizeSlider.setNumberFormat(G4P.INTEGER, 0);
  partSizeSlider.setOpaque(false);
  partSizeSlider.addEventHandler(this, "partSizeSlider_change");
  invertRadiusSlider = new GSlider(menuWindow.papplet, 5, 160, 82, 25, 10.0);
  invertRadiusSlider.setLimits(250, 50, 350);
  invertRadiusSlider.setNbrTicks(10);
  invertRadiusSlider.setShowTicks(true);
  invertRadiusSlider.setNumberFormat(G4P.INTEGER, 0);
  invertRadiusSlider.setOpaque(false);
  invertRadiusSlider.addEventHandler(this, "invertRadiusSlider_change");
  sliderInvert = new GSlider(menuWindow.papplet, 5, 130, 82, 25, 10.0);
  sliderInvert.setLimits(2, 1, 10);
  sliderInvert.setNbrTicks(10);
  sliderInvert.setShowTicks(true);
  sliderInvert.setNumberFormat(G4P.INTEGER, 0);
  sliderInvert.setOpaque(false);
  sliderInvert.addEventHandler(this, "sliderInvert_change");
  label12 = new GLabel(menuWindow.papplet, 1, 190, 180, 20);
  label12.setText("Choose transformation");
  label12.setTextBold();
  label12.setTextItalic();
  label12.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label12.setOpaque(false);
  label13 = new GLabel(menuWindow.papplet, 93, 100, 82, 25);
  label13.setText("KALEID SIZE");
  label13.setTextBold();
  label13.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label13.setOpaque(false);
  buttonNone = new GButton(menuWindow.papplet, 5, 210, 82, 50);
  buttonNone.setText("NONE");
  buttonNone.setTextBold();
  buttonNone.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonNone.addEventHandler(this, "buttonNone_click");
  buttonRows = new GButton(menuWindow.papplet, 93, 265, 82, 50);
  buttonRows.setText("ROWS");
  buttonRows.setTextBold();
  buttonRows.addEventHandler(this, "buttonRows_click");
  buttonColumns = new GButton(menuWindow.papplet, 5, 265, 82, 50);
  buttonColumns.setText("COLUMNS");
  buttonColumns.setTextBold();
  buttonColumns.addEventHandler(this, "buttonColumns_click");
  buttonRect = new GButton(menuWindow.papplet, 5, 320, 82, 50);
  buttonRect.setText("RECTANGLE");
  buttonRect.setTextBold();
  buttonRect.addEventHandler(this, "buttonRect_click");
  buttonKaleidR = new GButton(menuWindow.papplet, 93, 320, 82, 50);
  buttonKaleidR.setText("KALEID RECTANGLE");
  buttonKaleidR.setTextBold();
  buttonKaleidR.addEventHandler(this, "buttonKaleidR_click");
  buttonKaleid2 = new GButton(menuWindow.papplet, 5, 375, 82, 50);
  buttonKaleid2.setText("KALEID TRIANGLE2");
  buttonKaleid2.setTextBold();
  buttonKaleid2.addEventHandler(this, "buttonKaleid2_click");
  buttonKaleid4 = new GButton(menuWindow.papplet, 93, 375, 82, 50);
  buttonKaleid4.setText("KALEID TRIANGLE4");
  buttonKaleid4.setTextBold();
  buttonKaleid4.addEventHandler(this, "buttonKaleid4_click");
  buttonInvert = new GButton(menuWindow.papplet, 93, 210, 82, 50);
  buttonInvert.setText("INVERSE CIRCLE");
  buttonInvert.setTextBold();
  buttonInvert.addEventHandler(this, "buttonInvert_click");
  buttonReflect = new GButton(menuWindow.papplet, 5, 43, 82, 23);
  buttonReflect.setText("REFLECT");
  buttonReflect.setTextBold();
  buttonReflect.addEventHandler(this, "buttonReflect_click");
  buttonNoReflect = new GButton(menuWindow.papplet, 5, 72, 82, 23);
  buttonNoReflect.setText("NO REFLECT");
  buttonNoReflect.setTextBold();
  buttonNoReflect.addEventHandler(this, "buttonNoReflect_click");
  label25 = new GLabel(menuWindow.papplet, 93, 160, 82, 25);
  label25.setText("RADIUS");
  label25.setTextBold();
  label25.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label25.setOpaque(false);
  label26 = new GLabel(menuWindow.papplet, 93, 130, 82, 25);
  label26.setText("TRANSLATE");
  label26.setTextBold();
  label26.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label26.setOpaque(false);
  imagePanel.addControl(resetButton);
  imagePanel.addControl(label5);
  imagePanel.addControl(coordinatesSlider2d);
  imagePanel.addControl(partSizeSlider);
  imagePanel.addControl(invertRadiusSlider);
  imagePanel.addControl(sliderInvert);
  imagePanel.addControl(label12);
  imagePanel.addControl(label13);
  imagePanel.addControl(buttonNone);
  imagePanel.addControl(buttonRows);
  imagePanel.addControl(buttonColumns);
  imagePanel.addControl(buttonRect);
  imagePanel.addControl(buttonKaleidR);
  imagePanel.addControl(buttonKaleid2);
  imagePanel.addControl(buttonKaleid4);
  imagePanel.addControl(buttonInvert);
  imagePanel.addControl(buttonReflect);
  imagePanel.addControl(buttonNoReflect);
  imagePanel.addControl(label25);
  imagePanel.addControl(label26);
  loadSavePanel = new GPanel(menuWindow.papplet, 0, 108, 182, 400, "  NEW&LOAD&SAVE");
  loadSavePanel.setCollapsed(true);
  loadSavePanel.setDraggable(false);
  loadSavePanel.setText("  NEW&LOAD&SAVE");
  loadSavePanel.setTextBold();
  loadSavePanel.setOpaque(true);
  loadSavePanel.addEventHandler(this, "loadSavePanel_Click");
  loadButton = new GButton(menuWindow.papplet, 5, 155, 170, 32);
  loadButton.setText("LOAD IMAGE");
  loadButton.setTextBold();
  loadButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  loadButton.addEventHandler(this, "loadButton_click");
  newButton = new GButton(menuWindow.papplet, 5, 85, 170, 32);
  newButton.setText("NEW IMAGE");
  newButton.setTextBold();
  newButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  newButton.addEventHandler(this, "newButton_click");
  saveButton = new GButton(menuWindow.papplet, 5, 225, 170, 32);
  saveButton.setText("SAVE IMAGE");
  saveButton.setTextBold();
  saveButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  saveButton.addEventHandler(this, "saveButton_click");
  buttonTemporary1 = new GButton(menuWindow.papplet, 5, 290, 82, 50);
  buttonTemporary1.setText("TEMPORARY 1");
  buttonTemporary1.setTextBold();
  buttonTemporary1.addEventHandler(this, "buttonTemporary1_click");
  label6 = new GLabel(menuWindow.papplet, 0, 30, 170, 20);
  label6.setText("Create new image");
  label6.setTextBold();
  label6.setTextItalic();
  label6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label6.setOpaque(false);
  sliderNewSize = new GSlider(menuWindow.papplet, 5, 54, 82, 25, 10.0);
  sliderNewSize.setLimits(600, 100, 1500);
  sliderNewSize.setNbrTicks(10);
  sliderNewSize.setShowTicks(true);
  sliderNewSize.setNumberFormat(G4P.INTEGER, 0);
  sliderNewSize.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderNewSize.setOpaque(false);
  sliderNewSize.addEventHandler(this, "sliderNewSize_change");
  label14 = new GLabel(menuWindow.papplet, 93, 55, 82, 25);
  label14.setText("SIZE");
  label14.setTextBold();
  label14.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label14.setOpaque(false);
  labelll = new GLabel(menuWindow.papplet, 0, 130, 170, 20);
  labelll.setText("Load your image");
  labelll.setTextBold();
  labelll.setTextItalic();
  labelll.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  labelll.setOpaque(false);
  label15 = new GLabel(menuWindow.papplet, 0, 200, 170, 20);
  label15.setText("Save your image");
  label15.setTextBold();
  label15.setTextItalic();
  label15.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label15.setOpaque(false);
  label16 = new GLabel(menuWindow.papplet, 0, 265, 170, 20);
  label16.setText("Temporary images");
  label16.setTextBold();
  label16.setTextItalic();
  label16.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label16.setOpaque(false);
  buttonTemporary2 = new GButton(menuWindow.papplet, 93, 290, 82, 50);
  buttonTemporary2.setText("TEMPORARY 2");
  buttonTemporary2.setTextBold();
  buttonTemporary2.addEventHandler(this, "buttonTemporary2_click");
  buttonTemporary3 = new GButton(menuWindow.papplet, 5, 345, 82, 50);
  buttonTemporary3.setText("TEMPORARY 3");
  buttonTemporary3.setTextBold();
  buttonTemporary3.addEventHandler(this, "buttonTemporary3_click");
  buttonDeleteTemp = new GButton(menuWindow.papplet, 93, 345, 82, 50);
  buttonDeleteTemp.setText("DELETE ALL");
  buttonDeleteTemp.setTextBold();
  buttonDeleteTemp.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonDeleteTemp.addEventHandler(this, "buttonDeleteTemp_click");
  loadSavePanel.addControl(loadButton);
  loadSavePanel.addControl(newButton);
  loadSavePanel.addControl(saveButton);
  loadSavePanel.addControl(buttonTemporary1);
  loadSavePanel.addControl(label6);
  loadSavePanel.addControl(sliderNewSize);
  loadSavePanel.addControl(label14);
  loadSavePanel.addControl(labelll);
  loadSavePanel.addControl(label15);
  loadSavePanel.addControl(label16);
  loadSavePanel.addControl(buttonTemporary2);
  loadSavePanel.addControl(buttonTemporary3);
  loadSavePanel.addControl(buttonDeleteTemp);
  filterPanel = new GPanel(menuWindow.papplet, 0, 82, 182, 470, "  TEMPORARY IMAGES");
  filterPanel.setCollapsed(true);
  filterPanel.setDraggable(false);
  filterPanel.setText("  TEMPORARY IMAGES");
  filterPanel.setTextBold();
  filterPanel.setOpaque(true);
  filterPanel.addEventHandler(this, "filterPanel_Click");
  buttonSaveTemp = new GButton(menuWindow.papplet, 5, 390, 170, 32);
  buttonSaveTemp.setText("SAVE TEMP");
  buttonSaveTemp.setTextBold();
  buttonSaveTemp.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonSaveTemp.addEventHandler(this, "buttonSaveTemp_click");
  slider2dTempPosition = new GSlider2D(menuWindow.papplet, 5, 50, 82, 50);
  slider2dTempPosition.setLimitsX(200.0, 0.0, 1200.0);
  slider2dTempPosition.setLimitsY(200.0, 0.0, 1200.0);
  slider2dTempPosition.setNumberFormat(G4P.INTEGER, 0);
  slider2dTempPosition.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  slider2dTempPosition.setOpaque(true);
  slider2dTempPosition.addEventHandler(this, "slider2dTempPosition_change");
  label17 = new GLabel(menuWindow.papplet, 5, 25, 170, 20);
  label17.setText("Temp properties");
  label17.setTextBold();
  label17.setTextItalic();
  label17.setOpaque(false);
  label18 = new GLabel(menuWindow.papplet, 5, 100, 82, 25);
  label18.setText("POSITION");
  label18.setTextBold();
  label18.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label18.setOpaque(false);
  knob1 = new GKnob(menuWindow.papplet, 93, 50, 82, 50, 0.8);
  knob1.setTurnRange(0, 360);
  knob1.setTurnMode(GKnob.CTRL_ANGULAR);
  knob1.setShowArcOnly(false);
  knob1.setOverArcOnly(false);
  knob1.setIncludeOverBezel(false);
  knob1.setShowTrack(true);
  knob1.setLimits(0.0, 0.0, 360.0);
  knob1.setShowTicks(true);
  knob1.setOpaque(false);
  knob1.addEventHandler(this, "knob1_turn1");
  label19 = new GLabel(menuWindow.papplet, 93, 100, 82, 25);
  label19.setText("ROTATION");
  label19.setTextBold();
  label19.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label19.setOpaque(false);
  sliderScale = new GSlider(menuWindow.papplet, 5, 130, 82, 25, 10.0);
  sliderScale.setLimits(1.0, 0.0, 2.0);
  sliderScale.setNbrTicks(10);
  sliderScale.setShowTicks(true);
  sliderScale.setNumberFormat(G4P.DECIMAL, 0);
  sliderScale.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderScale.setOpaque(false);
  sliderScale.addEventHandler(this, "sliderScale_change");
  label20 = new GLabel(menuWindow.papplet, 93, 130, 82, 25);
  label20.setText("SCALE");
  label20.setTextBold();
  label20.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label20.setOpaque(false);
  sliderTint = new GSlider(menuWindow.papplet, 5, 160, 82, 25, 10.0);
  sliderTint.setLimits(126, 0, 255);
  sliderTint.setNbrTicks(10);
  sliderTint.setShowTicks(true);
  sliderTint.setNumberFormat(G4P.INTEGER, 0);
  sliderTint.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sliderTint.setOpaque(false);
  sliderTint.addEventHandler(this, "sliderTint_change");
  label21 = new GLabel(menuWindow.papplet, 94, 160, 82, 25);
  label21.setText("OPACITY");
  label21.setTextBold();
  label21.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label21.setOpaque(false);
  buttonBlendNone = new GButton(menuWindow.papplet, 5, 240, 82, 25);
  buttonBlendNone.setText("NONE");
  buttonBlendNone.setTextBold();
  buttonBlendNone.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonBlendNone.addEventHandler(this, "buttonBlendNone_click");
  buttonBlendOverlay = new GButton(menuWindow.papplet, 93, 240, 82, 25);
  buttonBlendOverlay.setText("OVERLAY");
  buttonBlendOverlay.setTextBold();
  buttonBlendOverlay.addEventHandler(this, "buttonBlendOverlay_click");
  buttonBlendAdd = new GButton(menuWindow.papplet, 5, 360, 82, 25);
  buttonBlendAdd.setText("ADD");
  buttonBlendAdd.setTextBold();
  buttonBlendAdd.addEventHandler(this, "buttonBlendAdd_click");
  buttonBlendSubtract = new GButton(menuWindow.papplet, 93, 360, 82, 25);
  buttonBlendSubtract.setText("SUBTRACT");
  buttonBlendSubtract.setTextBold();
  buttonBlendSubtract.addEventHandler(this, "buttonBlendSubtract_click");
  buttonBlendBurn = new GButton(menuWindow.papplet, 5, 270, 82, 25);
  buttonBlendBurn.setText("BURN");
  buttonBlendBurn.setTextBold();
  buttonBlendBurn.addEventHandler(this, "buttonBlendBurn_click");
  buttonBlendDodge = new GButton(menuWindow.papplet, 93, 270, 82, 25);
  buttonBlendDodge.setText("DODGE");
  buttonBlendDodge.setTextBold();
  buttonBlendDodge.addEventHandler(this, "buttonBlendDodge_click");
  buttonBlendSoft = new GButton(menuWindow.papplet, 5, 300, 82, 25);
  buttonBlendSoft.setText("SOFT LIGHT");
  buttonBlendSoft.setTextBold();
  buttonBlendSoft.addEventHandler(this, "buttonBlendSoft_click");
  buttonBlendHard = new GButton(menuWindow.papplet, 93, 300, 82, 25);
  buttonBlendHard.setText("HARD LIGHT");
  buttonBlendHard.setTextBold();
  buttonBlendHard.addEventHandler(this, "button8buttonBlendHard");
  buttonBlendMultiply = new GButton(menuWindow.papplet, 5, 330, 82, 25);
  buttonBlendMultiply.setText("MULTIPLY");
  buttonBlendMultiply.setTextBold();
  buttonBlendMultiply.addEventHandler(this, "buttonBlendMultiply_click");
  buttonBlendScreen = new GButton(menuWindow.papplet, 93, 330, 82, 25);
  buttonBlendScreen.setText("SCREEN");
  buttonBlendScreen.setTextBold();
  buttonBlendScreen.addEventHandler(this, "buttonBlendScreen_click");
  label22 = new GLabel(menuWindow.papplet, 0, 218, 170, 20);
  label22.setText("Choose blend mode");
  label22.setTextBold();
  label22.setOpaque(false);
  buttonFadeOut = new GButton(menuWindow.papplet, 5, 190, 82, 25);
  buttonFadeOut.setText("FADE OUT");
  buttonFadeOut.setTextBold();
  buttonFadeOut.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  buttonFadeOut.addEventHandler(this, "buttonFadeOut_click");
  buttonNoFadeOut = new GButton(menuWindow.papplet, 93, 190, 82, 25);
  buttonNoFadeOut.setText("NO FADE OUT");
  buttonNoFadeOut.setTextBold();
  buttonNoFadeOut.addEventHandler(this, "buttonNoFadeOut_click");
  buttonDelTemp = new GButton(menuWindow.papplet, 5, 430, 170, 32);
  buttonDelTemp.setText("DELETE TEMP");
  buttonDelTemp.setTextBold();
  buttonDelTemp.addEventHandler(this, "buttonDelTemp_click");
  filterPanel.addControl(buttonSaveTemp);
  filterPanel.addControl(slider2dTempPosition);
  filterPanel.addControl(label17);
  filterPanel.addControl(label18);
  filterPanel.addControl(knob1);
  filterPanel.addControl(label19);
  filterPanel.addControl(sliderScale);
  filterPanel.addControl(label20);
  filterPanel.addControl(sliderTint);
  filterPanel.addControl(label21);
  filterPanel.addControl(buttonBlendNone);
  filterPanel.addControl(buttonBlendOverlay);
  filterPanel.addControl(buttonBlendAdd);
  filterPanel.addControl(buttonBlendSubtract);
  filterPanel.addControl(buttonBlendBurn);
  filterPanel.addControl(buttonBlendDodge);
  filterPanel.addControl(buttonBlendSoft);
  filterPanel.addControl(buttonBlendHard);
  filterPanel.addControl(buttonBlendMultiply);
  filterPanel.addControl(buttonBlendScreen);
  filterPanel.addControl(label22);
  filterPanel.addControl(buttonFadeOut);
  filterPanel.addControl(buttonNoFadeOut);
  filterPanel.addControl(buttonDelTemp);
  panelFilter = new GPanel(menuWindow.papplet, 0, 56, 182, 300, "  IMAGE");
  panelFilter.setCollapsed(true);
  panelFilter.setDraggable(false);
  panelFilter.setText("  IMAGE");
  panelFilter.setTextBold();
  panelFilter.setOpaque(true);
  panelFilter.addEventHandler(this, "panelFilter_Click");
  buttonShapeFilter = new GButton(menuWindow.papplet, 5, 190, 160, 32);
  buttonShapeFilter.setText("SAVE SHAPE FILTER");
  buttonShapeFilter.setTextBold();
  buttonShapeFilter.addEventHandler(this, "buttonShapeFilter_click");
  buttonFilterCircle = new GButton(menuWindow.papplet, 5, 50, 82, 50);
  buttonFilterCircle.setText("CIRCLE");
  buttonFilterCircle.setTextBold();
  buttonFilterCircle.addEventHandler(this, "buttonFilterCircle_click");
  label23 = new GLabel(menuWindow.papplet, 0, 25, 170, 20);
  label23.setText("Shape filter");
  label23.setTextBold();
  label23.setTextItalic();
  label23.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label23.setOpaque(false);
  buttonFilterRect = new GButton(menuWindow.papplet, 93, 50, 82, 50);
  buttonFilterRect.setText("RECTANGLE");
  buttonFilterRect.setTextBold();
  buttonFilterRect.addEventHandler(this, "buttonFilterRect_click");
  buttonFilterTriangle = new GButton(menuWindow.papplet, 50, 105, 82, 50);
  buttonFilterTriangle.setText("TRIANGLE");
  buttonFilterTriangle.setTextBold();
  buttonFilterTriangle.addEventHandler(this, "buttonFilterTriangle_click");
  sliderFilterIntensity = new GSlider(menuWindow.papplet, 5, 160, 82, 25, 10.0);
  sliderFilterIntensity.setLimits(1, 1, 200);
  sliderFilterIntensity.setNbrTicks(10);
  sliderFilterIntensity.setShowTicks(true);
  sliderFilterIntensity.setNumberFormat(G4P.INTEGER, 0);
  sliderFilterIntensity.setOpaque(false);
  sliderFilterIntensity.addEventHandler(this, "sliderFilterIntensity_change");
  label24 = new GLabel(menuWindow.papplet, 93, 160, 82, 25);
  label24.setText("INTENSITY");
  label24.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label24.setOpaque(false);
  buttonDelFilter = new GButton(menuWindow.papplet, 5, 230, 160, 32);
  buttonDelFilter.setText("DELETE SHAPE FILTER");
  buttonDelFilter.setTextBold();
  buttonDelFilter.addEventHandler(this, "buttonDelFilter_click");
  panelFilter.addControl(buttonShapeFilter);
  panelFilter.addControl(buttonFilterCircle);
  panelFilter.addControl(label23);
  panelFilter.addControl(buttonFilterRect);
  panelFilter.addControl(buttonFilterTriangle);
  panelFilter.addControl(sliderFilterIntensity);
  panelFilter.addControl(label24);
  panelFilter.addControl(buttonDelFilter);
  buttonUndo = new GButton(menuWindow.papplet, 5, 705, 170, 25);
  buttonUndo.setText("UNDO");
  buttonUndo.setTextBold();
  buttonUndo.addEventHandler(this, "buttonUndo_click");
}

// Variable declarations 
// autogenerated do not edit
GWindow menuWindow;
GPanel shapePanel; 
GButton buttonCircle; 
GButton buttonRectangle; 
GButton buttonTriangle; 
GButton buttonSpiral; 
GSlider countShapesSlider; 
GLabel label4; 
GSlider shapeSizeSlider; 
GLabel label1; 
GSlider randomnessSlider; 
GLabel label3; 
GSlider radiusSlider; 
GLabel label2; 
GLabel label7; 
GLabel label8; 
GLabel label9; 
GLabel label10; 
GSlider strokeWidthSlider; 
GLabel label11; 
GButton buttonSimple; 
GButton buttonConcentric; 
GButton buttonTouching; 
GButton buttonStroke; 
GButton buttonNoStroke; 
GPanel imagePanel; 
GButton resetButton; 
GLabel label5; 
GSlider2D coordinatesSlider2d; 
GSlider partSizeSlider; 
GSlider invertRadiusSlider; 
GSlider sliderInvert; 
GLabel label12; 
GLabel label13; 
GButton buttonNone; 
GButton buttonRows; 
GButton buttonColumns; 
GButton buttonRect; 
GButton buttonKaleidR; 
GButton buttonKaleid2; 
GButton buttonKaleid4; 
GButton buttonInvert; 
GButton buttonReflect; 
GButton buttonNoReflect; 
GLabel label25; 
GLabel label26; 
GPanel loadSavePanel; 
GButton loadButton; 
GButton newButton; 
GButton saveButton; 
GButton buttonTemporary1; 
GLabel label6; 
GSlider sliderNewSize; 
GLabel label14; 
GLabel labelll; 
GLabel label15; 
GLabel label16; 
GButton buttonTemporary2; 
GButton buttonTemporary3; 
GButton buttonDeleteTemp; 
GPanel filterPanel; 
GButton buttonSaveTemp; 
GSlider2D slider2dTempPosition; 
GLabel label17; 
GLabel label18; 
GKnob knob1; 
GLabel label19; 
GSlider sliderScale; 
GLabel label20; 
GSlider sliderTint; 
GLabel label21; 
GButton buttonBlendNone; 
GButton buttonBlendOverlay; 
GButton buttonBlendAdd; 
GButton buttonBlendSubtract; 
GButton buttonBlendBurn; 
GButton buttonBlendDodge; 
GButton buttonBlendSoft; 
GButton buttonBlendHard; 
GButton buttonBlendMultiply; 
GButton buttonBlendScreen; 
GLabel label22; 
GButton buttonFadeOut; 
GButton buttonNoFadeOut; 
GButton buttonDelTemp; 
GPanel panelFilter; 
GButton buttonShapeFilter; 
GButton buttonFilterCircle; 
GLabel label23; 
GButton buttonFilterRect; 
GButton buttonFilterTriangle; 
GSlider sliderFilterIntensity; 
GLabel label24; 
GButton buttonDelFilter; 
GButton buttonUndo; 

