require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed= 0.9

for Start = 1, 9 do
  robot_arm:move_right()
end
for Row = 1, 9 do
  robot_arm:grab()
  if robot_arm:scan() == 'white' then
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
  else
    robot_arm:drop()
  end
    robot_arm:move_left()
  end
  