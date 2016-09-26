require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed= 0.9

for Start = 1, 9 do
  robot_arm:move_right()
end
  robot_arm:grab()
 if robot_arm:scan() == 'red' then
   robot_arm:drop()
   robot_arm:move_left()
 else
   for BackDrop = 1, 9 do 
    robot_arm:move_left()
   end
   robot_arm:drop()
    for Begin = 1, 8 do 
      robot_arm:move_right()
   end
 end
for checken = 1, 8 do 
  robot_arm:grab()
   if robot_arm:scan() == 'red' then
    for terugbrengen = 1, checken do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for teruggaan = 1, checken+1 do
      robot_arm:move_left()
    end
   else
    robot_arm:drop()
    robot_arm:move_left()
   end
  end
 
