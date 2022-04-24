function HangFrames()
clc
clf
clear all
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

  widthFrame = 26.5;
  heightFrame = 38 + (1/8);
  heightNail = 3.5;
  xPosition = 'centered'

  heightWall = 108;
  widthWall = 37;

  frameBorderThickness = 1.5;
  colorWall = [61,67,82]./255;
  colorPosterFrame = [255,25,05]./255;
  colorPoster = [200,200,200]./255;
  %----------
  % Options:
  alignment = 'thirds'; % 'thirds' or 'golden'
  units = 'inches'; % 'in' or 'mm'
  %
  
  if strcmp(alignment,'thirds')
    alignmentRatio = 1/3;    
  elseif strcmp(alignment,'golden')
    alignmentRatio = ( 1 + sqrt(5) ) / 2;
  endif
  
  heightAligned = heightWall*alignmentRatio;
  heightTopEdge = heightAligned - (heightFrame*alignmentRatio);
  heightNailWall = heightTopEdge + heightNail;
  
  if strcmp(units,'inches')
    precision = 1/16;
    [inches,remainder] = FormatToInches(heightNailWall,precision);
    if remainder==0
      fprintf('Nail %d" below the ceiling\n',inches)
    else
      fprintf('Nail %d %d/%d" below the ceiling\n',inches,remainder,1/precision)
    endif
  elseif strcmp(units,'mm')
    
  endif

  if strcmp(xPosition,'centered')==1
    xFrameLeft = widthWall/2-widthFrame/2
  else
    xFrameLeft = xPosition
  endif
  
  figure(1)
  hold on
  axis equal
  plotRectangle(widthWall,heightWall,0,-heightWall,0,colorWall,0,colorWall,'wall',gca)
  plotRectangle(widthFrame,heightFrame,xFrameLeft,-heightFrame -heightTopEdge,0,colorPosterFrame,frameBorderThickness,colorPoster,'wall',gca)
  
end

function [inches,remainder] = FormatToInches(value,precision)
    inches = floor(value);
    remainder = round((value - inches)/precision);
end

