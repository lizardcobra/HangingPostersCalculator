function [wall] = defineWallProperties(heightWall, ...
                                       widthWall, ...
                                       colorWall, ...
                                       alignment, ...
                                       units)
  wall.heightWall = heightWall;
  wall.widthWall = widthWall;
  wall.colorWall = colorWall;
  %---------------------------------------------
  % Options:
  wall.alignment = alignment;
  wall.units = units;
  %---------------------------------------------
end