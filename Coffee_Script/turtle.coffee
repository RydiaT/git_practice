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
bobMovements = (speed = 25) ->
  forever 1, ->
    num = random 4
    switch num
      when 0 then turt.fd speed
      when 1 then turt.bk speed
      when 2 then turt.lt random 100
      when 3 then turt.rt random 100
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
runTurtle()