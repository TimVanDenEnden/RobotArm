require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed= 0.9

 for MoveRows = 1, 4 do
   for Blocks = 1, MoveRows do
    robot_arm:grab()
    for MoveBlock = 1, 5 do
      robot_arm:move_right()
    end
      robot_arm:drop()
      for MoveBlack = 1, 5 do
        robot_arm:move_left()
      end
  end
  robot_arm:move_right()  
end