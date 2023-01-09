classdef WallProperties

%  heightAlignment - The ratio used to calculate how high to hang the picture relative to the available space
%     Options: 'thirds', 'golden', or absolute position
%              If the absolute position has been determined, provide the height of the top of the frame from
%              the top of the wall. Otherwise, assign one of the ratios to this property.
%  units - Units of all dimensions
%     Options: 'mm', 'inches'

  properties
    %% Dimensions
    heightWall;
    widthWall;
    colorWall;
  end

end