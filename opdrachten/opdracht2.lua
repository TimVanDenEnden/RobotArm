require 'robot_arm'
robot_arm:load_level('exercise 2')
robot_arm.speed= 0.9
 
for i=1, 9 do
  robot_arm:grab()
  
    if robot_arm:scan() ~= nil then
        robot_arm:move_right()
        
        for MoveRight = 1, 9 do
          robot_arm:move_right()
        end
        
        robot_arm:drop()
     
        for MoveLeft = 1, 9-i do
          robot_arm:move_left()
        end
        
    else 
      robot_arm:move_right()
    end
  end