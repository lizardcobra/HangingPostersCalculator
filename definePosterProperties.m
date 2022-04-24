function [poster] = definePosterProperties(widthFrame, ...
                               heightFrame, ...
                               heightNail, ...
                               xPosition, ...
                               frameBorderThickness, ...
                               colorPosterFrame, ...
                               colorPoster)
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
  poster.widthFrame = widthFrame;
  poster.heightFrame = heightFrame;
  poster.heightNail = heightNail;
  poster.xPosition = xPosition;
  poster.frameBorderThickness = frameBorderThickness;
  poster.colorPosterFrame = colorPosterFrame;
  poster.colorPoster = colorPoster;
end