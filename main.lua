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

local totalTextFeild =display.newText("total", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 75)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    local diameterofpizza
    local subtotalofpizza
    local tax
    local total
 	
 	  diameterofpizza = diameterofpizzaTextField.text
    subtotalofpizza = 0.75 + 1 + diameterofpizza * 0.5
    tax = subtotalofpizza * 0.13
    total = tax + subtotalofpizza
    -- print( subtotal, tax, and total )
    subtotalofpizzaTextField.text = "subtotal is " .. subtotalofpizza
    taxTextField.text = "tax is " .. tax
    totalTextFeild.text = "total is " ..total
    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
