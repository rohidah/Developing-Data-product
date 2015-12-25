---
output: html_document
---
Project Slides for Simple Shiny App (SSA)
========================================================
author: Rohidah Maskuri
date: 24th Dec 2015

Simple Shiny App (SSA)
========================================================
The SSA  is a small app developed using shiny platform. The aim of the app is to show the various widgets that can be used and applied to analyse 3 preloaded dataset namely, **cars**, **rock** and **women**. 

There are 2 sections of the SSA

1. **sidebar panel**. This panel is located in the left side of the app and used to control the information displayed in the main panel.  There are 4 types of input buttons used in this panel, i.e **title** using textbox, **dataset** using dropdown menu, **no of observations** using slide and the **color of histogram** using the radio button. 


Simple Shiny App (continue)
========================================================
2. **main panel**. This panel located on the right side of the app. It displays information in 4 tabs as shown below
  +  **Plot** tab displays the histogram of the chosen dataset 
  +  **Summary** tab displays the data summary of the chosen dataset
  +  **Structure** tab displays the data in horizontal manner
  +  **Table** tab displays the information of the chosen dataset. The number of rows displayed is based on the slider information obtained from the sidebar panel.
  +  **Documentation** tab displays the information about the app that users can refer to.

Simple Shiny App Snapshot
========================================================

![alt text](main.jpg)
The SSA app can be accessed at https://rohidah.shinyapps.io/shinyapp



Samples of information generated
========================================================
Below are the summary and header generated for the dataset **women**


```
     height         weight     
 Min.   :58.0   Min.   :115.0  
 1st Qu.:61.5   1st Qu.:124.5  
 Median :65.0   Median :135.0  
 Mean   :65.0   Mean   :136.7  
 3rd Qu.:68.5   3rd Qu.:148.0  
 Max.   :72.0   Max.   :164.0  
```

```
'data.frame':	15 obs. of  2 variables:
 $ height: num  58 59 60 61 62 63 64 65 66 67 ...
 $ weight: num  115 117 120 123 126 129 132 135 139 142 ...
```

                    HAPPY TRYING!
