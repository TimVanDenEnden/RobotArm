require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed= 0.9

blockCounter = 1

robot_arm:grab()

while robot_arm:scan() ~= nil do
for moveRight = 1, blockCounter do
  robot_arm:move_right()
end
  robot_arm:drop()
for moveLeft = 1, blockCounter do
  robot_arm:move_left()
end
  robot_arm:grab()
  blockCounter = blockCounter + 1
end