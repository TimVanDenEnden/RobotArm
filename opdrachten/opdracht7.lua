require 'robot_arm'
robot_arm:load_level('exercise 8')
robot_arm.speed= 0.9

robot_arm:move_right()
for i = 1, 7 do 
  robot_arm:grab()
  for MoveRight = 1, 8 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for MoveLeft = 1, 8 do
    robot_arm:move_left()
  end
end