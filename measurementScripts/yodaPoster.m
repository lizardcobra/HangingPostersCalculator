function [poster] = yodaPoster()
##   All height inputs are dimensions; enter the absolute value
##   INPUTS:
##     heightAligned: The imaginary line that all pictures will hang upon
##     heightFrame: Physical outer dimension of frame
##     heightNail: -Height below the top-outer frame edge of the nail point
##                 -Insert the nail in the hang hook
##                 -Latch the hook in the sawtooth hanger or the wire, and pull tight
##                 -Slide the nail back slightly, so the point is flush with the back
##                 plane of the frame (where nail will enter the drywall)
##                 -Measure from the top edge of the frame to nail tip
##    xPosition: 'centered' - will place it in the center of the width of the wall
##               distance value - will place it distance from left edge of the wall  
%---------------------------------------------
  poster.widthFrame = 26.5;
  poster.heightFrame = 38 + (1/8);
  poster.heightNail = 3.5;
  poster.xPosition = 'centered';
  poster.frameBorderThickness = 1.5;
  poster.colorPosterFrame = [255,25,05]./255;
  poster.colorPoster = [200,200,200]./255;

  poster.heightWall = 108;
  poster.widthWall = 37;
  poster.colorWall = [61,67,82]./255;
  %---------------------------------------------
  % Options:
  poster.alignment = 'thirds'; % 'thirds' or 'golden'
  poster.units = 'inches'; % 'in' or 'mm'
  %---------------------------------------------
end