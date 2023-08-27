--[[
    Countdown State
    Author: Colton Ogden
    cogden@cs50.harvard.edu

    Counts down visually on the screen (3,2,1) so that the player knows the
    game is about to begin. Transitions to the PlayState as soon as the
    countdown is complete.
]]

Pausestate = Class{__includes = BaseState}

-- takes 1 second to count down each time

function Pausestate:init()
    pause=true
end

--[[
    Keeps track of how much time has passed and decreases count if the
    timer has exceeded our countdown time. If we have gone down to 0,
    we should transition to our PlayState.
]]
function Pausestate:update(dt)
  if love.keyboard.wasPressed('p')  then
        gStateMachine:change('PlayState')
    end

function Pausestate:render()
    -- render count big in the middle of the screen
    love.graphics.setFont(hugeFont)
    love.graphics.printf('GAME IS PAUSED', 0, 120, VIRTUAL_WIDTH, 'center')
    love.graphics.printf('PRESS P TO CONTINUE', 0, 120, VIRTUAL_WIDTH, 'center')
end