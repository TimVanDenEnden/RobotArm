require 'robot_arm'
robot_arm:load_level('exercise 4')
robot_arm.speed= 0.9

for i = 1, 3 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
    for MoveRight = 1, 2 do
      robot_arm:move_right()
    end
      robot_arm:drop()
    for MoveLeft = 1, 2 do
      robot_arm:move_left()
    end
  end 
end
  robot_arm:move_right()
  robot_arm:move_right()
for i = 4, 6 do 
  robot_arm:grab()
  robot_arm:move_left()
  robot_arm:drop()
  robot_arm:move_right()
    
end