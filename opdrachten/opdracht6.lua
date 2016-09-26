require 'robot_arm'
robot_arm:load_level('exercise 7')
robot_arm.speed= 0.9
  
  
for i = 1, 5 do  
  for i = 1, 6 do
      for MoveBlocks = 1, 1 do
        robot_arm:move_right()
        robot_arm:grab()
        robot_arm:move_left()
        robot_arm:drop()
      end
  end
        robot_arm:move_right()
        robot_arm:move_right()
end