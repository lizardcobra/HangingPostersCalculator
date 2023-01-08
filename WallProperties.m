classdef WallProperties

%  alignment - The ratio used to calculate how high to hang the picture relative to the available space
%     Options: 'thirds', 'golden'
%  units - Units of all dimensions
%     Options: 'mm', 'inches'

  properties
    %% Dimensions
    heightWall;
    widthWall;
    colorWall;
    %% Options
    alignment;
    units;
  end
end