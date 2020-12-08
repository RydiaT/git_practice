###
turt = new Turtle red
#Game Prep
#Allows you to move
moveWithWASD = (dis = 25) ->
  for x in [0...1]
    keydown 'W', -> fd dis
    keydown 'A', -> lt 90
    keydown 'S', -> bk dis
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
  name = prompt "Name the second turt! His name's Bob but you can change it."
  turt.say 'And my name is ' + name
#Second turtle actions
bobMovements = (dis = 25) ->
  forever 1, ->
    num = random 4
    switch num
      when 0 then turt.fd dis
      when 1 then turt.bk dis
      when 2 then turt.lt random 100
      when 3 then turt.rt random 100
    if touches(turt)
      turt.fd dis
#Runs game elements
runTurtle = (y) ->
  turtleName()
  moveWithWASD(y)
  drawWithTurt()
  bobName()
  bobMovements(y)
#End Game Prep
runTurtle(50)
###
#Start Calculations
#Saves user input
getStats = () ->
  x = prompt 'What is the degree that you want to convert?'
  y = prompt 'What do you want to convert from? Make sure to capitalise it!'
  z = prompt 'What do you want to convert to? Make sure to capitalise it!'
  return x y z
#Preforms calculations
preformCalcs = () ->
    switch
      when y = 'Fahrenheit' and z = 'Celsius'
        answer = (x - 32) / 1.8
      when y = 'Fahrenheit' and z = 'Kelvin'
        answer = (x + 459.67) * 5/9
      when y = 'Celsius' and z = 'Fahrenheit'
        answer = x * 1.8 + 32
      when y = 'Celsius' and z = 'Kelvin'
        answer = x + 273.15
      when y = 'Kelvin' and z = 'Fahrenheit'
        answer = x * 1.8 - 459.67
      when y = 'Kelvin' and z - 'Celsius'
        answer = x - 273.15
    return answer
#Shows work
showWork = () ->
  switch
    when y = 'Fahrenheit' and z = 'Celsius'
      write x + '° Fahrenheit to Celsius is: (' + x + ' - 32) / 1.8'
    when y = 'Fahrenheit' and z = 'Kelvin'
      write x + '° Fahrenheit to Kelvin is: (' + x + ' + 459.67) * 5/9'
    when y = 'Celsius' and z = 'Fahrenheit'
      write x + '° Celsius to Fahrenheit is: ' + x + ' * 1.8 + 32'
    when y = 'Celsius' and z = 'Kelvin'
      write x + '° Celsius to Kelvin is: ' + x + ' + 273.15'
    when y = 'Kelvin' and z = 'Fahrenheit'
      write x + '° Kelvin to Fahrenheit is: ' + x + ' * 1.8 - 459.67'
    when y = 'Kelvin' and z - 'Celsius'
      write x + '° Kelvin to Celsius is: (' + x + ' - 273.15'
#End Calculations
#Runs everything
finishedProduct = () ->
  getStats()
  preformCalcs()
  showWork()
finishedProduct()


