function HangFrames()
clc
clf
clear all

[poster,wall] = poster_Yoda;
%---------------------------------------------

  if strcmp(wall.alignment,'thirds')
    alignmentRatio = 1/3;    
  elseif strcmp(wall.alignment,'golden')
    alignmentRatio = ( 1 + sqrt(5) ) / 2;
  endif
  
  heightAligned = wall.heightWall*alignmentRatio;
  heightTopEdge = heightAligned - (poster.heightFrame*alignmentRatio);
  heightNailWall = heightTopEdge + poster.heightNail;
  
  if strcmp(wall.units,'inches')
    precision = 1/16;
    [inches,remainder] = FormatToInches(heightNailWall,precision);
    if remainder==0
      fprintf('Nail %d" below the ceiling\n',inches)
    else
      fprintf('Nail %d %d/%d" below the ceiling\n',inches,remainder,1/precision)
    endif
  elseif strcmp(units,'mm')
    %TODO:
  endif

  if strcmp(poster.xPosition,'centered')==1
    xFrameLeft = wall.widthWall/2-poster.widthFrame/2;
  else
    xFrameLeft = poster.xPosition;
  endif
  
  figure(1)
  hold on
  axis equal
  plotRectangle(wall.widthWall,wall.heightWall,0,-wall.heightWall,0,wall.colorWall,0,wall.colorWall,'wall',gca)
  plotRectangle(poster.widthFrame,poster.heightFrame,xFrameLeft,-poster.heightFrame -heightTopEdge,0,poster.colorPosterFrame,poster.frameBorderThickness,poster.colorPoster,'wall',gca)
  
end

function [inches,remainder] = FormatToInches(value,precision)
    inches = floor(value);
    remainder = round((value - inches)/precision);
end

