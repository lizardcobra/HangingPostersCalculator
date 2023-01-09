function HangCluster(frames,wall)
% HANGCLUSTER Determine lateral position and height to hang an arranged cluster of picture frames on a wall
% INPUTS:
%   frames - An array of picture frames defined by the PosterProperties class
%   wall - Instance of class WallProperties that defines the size of the secion of wall to hang the pictures on

  if strcmp(wall.heightAlignment,'thirds')
    alignmentRatio = 1/3;    
  elseif strcmp(wall.heightAlignment,'golden')
    alignmentRatio = ( 1 + sqrt(5) ) / 2;
  endif
  
  heightAligned = wall.heightWall*alignmentRatio;
  heightTopEdge = heightAligned - (poster.heightFrame*alignmentRatio);
  heightNailWall = heightTopEdge + poster.heightNail;
  
  if strcmp(wall.units,'inches')
    precision = 1/16;
    [inches,remainder] = formatToInches(heightNailWall,precision);
    if remainder==0
      fprintf('Nail %d" below the ceiling\n',inches)
    else
      fprintf('Nail %d %d/%d" below the ceiling\n',inches,remainder,1/precision)
    endif
  elseif strcmp(units,'mm')
    error('Units mm not yet supported.')
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