-----------------------------------------------------------------------------------------
--
-- main.lua
-- created on : Feb 27
-- created by : Adam
-- cost of pizza
-----------------------------------------------------------------------------------------

local diameterofpizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 200, 450, 75 )
diameterofpizzaTextField.id = "diameter textField"

local subtotalofpizzaTextField = display.newText( "subtotal", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 75 )
subtotalofpizzaTextField.id = "subtotal textField"

local taxTextField = display.newText("tax", display.contentCenterX, display.contentCenterY + 300, native.systemFont, 75)
taxTextField.id = "tax textField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterofpizza
    local subtotalofpizza
    local tax
 	
 	diameterofpizza = diameterofpizzaTextField.text
    subtotalofpizza = 0.75 + 1 + diameterofpizza * 0.5
    tax = subtotalofpizza * 0.13
    -- print( areaOfSquare )
    subtotalofpizzaTextField.text = "subtotal is " .. subtotalofpizza
    taxTextField.text = "tax is " .. tax

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )