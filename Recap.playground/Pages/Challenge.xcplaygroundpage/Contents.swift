/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 480, height: 450)

canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 10
canvas.defaultLineWidth = 10

// Create upper Circles
for x in stride(from: 40, through: 490, by: 80){
    //Create Black Circles
     canvas.borderColor = Color.init(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 60, height: 60)
    
    //Create Orange Circles
   canvas.borderColor = Color.init(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 40, height: 40)
    
    //Create Yeloow Circles
    canvas.borderColor = Color.init(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: 400, width: 20, height: 20)
}

//Create lower Circles

for y in stride(from: 80, through: 490, by: 80){
    
    //Create Yeloow Circles
    canvas.borderColor = Color.init(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 60, height: 60)
    
    //Create Orange Circles
    canvas.borderColor = Color.init(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 40, height:40)
    
    //Create Black Circles
    canvas.borderColor = Color.init(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: y, centreY: 300, width: 20, height: 20)
}


//Split Circles in Half 
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = Color.white
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 300, width: 480, height: 100)

//Connect Circles 

//Draw Yellow Line 
canvas.defaultLineWidth = 10
canvas.lineColor    = Color.init(hue: 53, saturation: 93, brightness: 98, alpha: 100)
canvas.drawLine(fromX: 50, fromY: 300, toX: 50, toY: 400)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
