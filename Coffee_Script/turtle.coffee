turt = new Turtle red
#Game Prep
#Allows you to move
moveWithWASD = (speed = 25) ->
  for x in [0...1]
    keydown 'W', -> (fd speed)
    keydown 'A', -> lt 90
    keydown 'S', -> bk speed
    keydown 'D', -> rt 90
#Allows you to draw with turtle
drawWithTurt = () ->
  keydown 'C', -> pen black
  button 'Colour Change', ->
    num = (random color)
    pen num
#Names main turtle
turtleName = () ->
  name = prompt 'Name your turt!'
  say 'Hello, my name is ' + name
#Names the red turtle
bobName = () ->
  name = prompt "Name the second turt! His name's bob but you can change it."
  turt.say 'And my name is ' + name
#Second turtle actions
bobMovements = (speed) ->
  num = round random 4
  forever 1, ->
    if num = 0
      turt.fd random speed++
    else if num = 1
      turt.rt random 100
    else if num = 2
      turt.lt random 100
    else if num = 3
      turt.bk random speed++
    else
      turt.say 'How did I land 4?'
  if touches(turt)
    turt.fd speed
#Runs game elements
runTurtle = (y) ->
  turtleName()
  moveWithWASD(y)
  drawWithTurt()
  bobName()
  bobMovements(y)
#End Game Prep
runTurtle(50)