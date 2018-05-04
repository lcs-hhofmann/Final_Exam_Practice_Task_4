//: # Exam Prep 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

// Begin your solution here...


// background

    canvas.fillColor = pink
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)


//change fill
    canvas.drawShapesWithFill = false


// border width
    canvas.defaultBorderWidth = 16


//change the origin
canvas.translate(byX: 200, byY: 200)


//loop for the squares
    for _ in 1...4 {
    
    for size in stride(from: 35, to: 400, by: 55) {
   
    //colour if statements
        if size % 2 == 1 {
            canvas.borderColor = black
        } else if size % 2 == 0 {
            canvas.borderColor = beige
        }

    canvas.drawRectangle(centreX: -200, centreY: 200, width: size, height: size) }

canvas.rotate(by: 90)
    
}



//change the fill and border truths
    canvas.drawShapesWithFill = true
    canvas.drawShapesWithBorders = false


//move the origin back to the bottom left corner
    canvas.translate(byX: -200, byY: -200)


//rectangle covering the top half of the squares
    canvas.fillColor = pink
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 400, width: 400, height: 200)


//draw the heading
    canvas.textColor = beige
    canvas.drawText(message: "the runaways", size: 55, x: 10, y: 410, kerning: -0.5)


//date subheading
    canvas.textColor = black
    canvas.drawText(message: """
    friday
    august 19 1997
    tickets $4.50
    """, size: 11, x: 10, y: 520, kerning: -0.25)


//guest  subheading
    canvas.drawText(message: """
    with
    special guests
    wolfgang
    """, size: 11, x: 115, y: 520, kerning: -0.25)


//location subheading
    canvas.drawText(message: """
    at ben h. lewis hall
    3443 orange st.
    riverside, california
    """, size: 11, x: 290, y: 520, kerning: -0.25)



/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
