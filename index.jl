using Javis

# args (video, object, frame)
function ground(args...)
  background("white")
  sethue("black")
end

function object(p=O, color="black")
  sethue(color)
  circle(p, 25, :fill)
  return p
end


myvideo = Video(500,500)
Background(1:70, ground)
# (frames 1 to 70, function, starting point)
red_ball = Object(1:70, (args...) -> object(O, "red"), Point(100, 0))
blue_ball = Object(1:70, (args...) -> object(O, "blue"), Point(200, 80))

render(
       myvideo;
       pathname="circle.gif"
      )
