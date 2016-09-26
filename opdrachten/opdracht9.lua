require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed= 0.9

rowCount = 9
for Rows = 1, 5 do
   robot_arm:grab()
   for MoveRight = 1, rowCount do
     robot_arm:move_right()
   end
   robot_arm:drop()
   for MoveLeft = 1,  rowCount - 1 do
     robot_arm:move_left()
   end
   rowCount = rowCount - 2
end
