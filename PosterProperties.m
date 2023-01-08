classdef PosterProperties
%   * All height inputs are dimensions; enter the absolute value
%
%   widthFrame - Physical outer dimension of frame
%   heightFrame - Physical outer dimension of frame
%   heightNail - Height below the top-outer frame edge of the nail point
%                1) Insert the nail in the hang hook
%                2) Latch the hook in the sawtooth hanger or the wire, and pull tight
%                3) Slide the nail back slightly, so the point is flush with the back
%                   plane of the frame (where nail will enter the drywall)
%                4) Measure from the top edge of the frame to nail tip
%   xPosition - Defines the horizontal position of the center of the frame from the left edge of the wall
%     'centered' - will place it in the center of the width of the wall
%     numeric value - position it a specific distance 
%    frameBorderThickness - Width of the front face of the frame
%    colorPosterFrame - Colors the frame a solid color
%    colorPoster - Colors the interior of the picutre a solid color
  properties
    widthFrame
    heightFrame
    heightNail 
    xPosition
    frameBorderThickness
    colorPosterFrame
    colorPoster
  end
end