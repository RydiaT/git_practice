Bob = new Turtle red
#Game Prep
#Allows you to move
moveWithWASD = (speed = 25) ->
  for x in [0...1]
    keydown 'W', -> fd speed
    keydown 'A', -> lt 90
    keydown 'S', -> bk speed
    keydown 'D', -> rt 90
#Allows you to draw with turtle
drawWithTurt = () ->
  keydown 'C', -> pen black
  button 'Colour Chane', ->
    num = (random color)
    pen num
#Names main turtle
turtleName = () ->
  name = prompt 'Name your turt!'
  say 'Hello, my name is ' + name
#Names the red turtle
bobName = () ->
  name = prompt "Name the second turt! His name's bob but you can change it."
  Bob.say "And my name is ${name}"
#Runs game elements
runTurtle = (y) ->
  turtleName()
  moveWithWASD(y)
  drawWithTurt()
  bobName()
#End Game Prep
runTurtle(50)