function HangFrames()
clc
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
  heightWall = 108;
  heightFrame = 38 + (1/8);
  heightNail = 0.5;
  
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
  heightTopEdge = heightAligned + (heightFrame*alignmentRatio);
  heightNailWall = heightTopEdge - heightNail;
  
  if strcmp(units,'inches')
    precision = 1/16;
    [inches,remainder] = FormatToInches(heightNailWall,precision)
    if remainder==0
      fprintf('Nail %d" below the ceiling\n',inches)
    else
      fprintf('Nail %d %d/%d" below the ceiling\n',inches,remainder,1/precision)
    endif
  elseif strcmp(units,'mm')
    
  endif
  
end

function [inches,remainder] = FormatToInches(value,precision)
    inches = floor(value);
    remainder = round((value - inches)/precision);
end