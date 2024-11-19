import turtle
t= turtle.Turtle()
t.width(10)

def draw_square():
    for i in range(4):
        t.forward(100)
        t.right(90)
def move(x,y):
    t.up()
    t.goto(x,y)
    t.down
def draw_circle(radius,angle):
    t.circle(radius,angle)
def draw_olympic_circle(color, x, y):
    t.color(color)
    move(x,y)
    t.width(10)
    draw_circle(50,360)

draw_olympic_circle("green",100,100)
draw_olympic_circle("red",150,170)
draw_olympic_circle("black",50,170)
draw_olympic_circle("yellow",-10,100)
draw_olympic_circle("blue",-50,170)