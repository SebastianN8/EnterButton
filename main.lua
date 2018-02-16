-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: February 16
--
--
-- This program takes some text from a texfield and prints it.
-----------------------------------------------------------------------------------------

display.setDefault('background', 0, 0, 1)
local myText = display.newText('Write your name here:', 600, 200, native.SystemFont, 100)

local answerTextField = native.newTextField(display.contentCenterX - 600, display.contentCenterY - 300, 600, 100)
answerTextField.id = 'answer textfield'

local enterButton = display.newImageRect('Assets/Sprites/enterButton.png', 406, 157)
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY - 300
enterButton.id = 'enter button'

local function enterButtonTouch(event)
	print( answerTextField.text )
    local thankYouTextField = display.newText('Thank You', 600, 600, native.SystemFont, 100)
    thankYouTextField.x = 1500
    thankYouTextField.y = 800

	return true
end

enterButton:addEventListener("touch", enterButtonTouch)