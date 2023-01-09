function HangSingleFrame(poster,wall)
% HANGSINGLEFRAME Determine lateral height to hang an framed picture. The picture will be drawn on a canvase the
%   size of the wall, to help visualize what the result will look like.
% INPUTS:
%   frames - An instance of PosterProperties class, defining dimensions and color of the picture to hang
%   wall - Instance of class WallProperties that defines the size of the secion of wall to hang the pictures on

  if strcmp(poster.heightAlignment,'thirds')
    alignmentRatio = 1/3;    
  elseif strcmp(poster.heightAlignment,'golden')
    alignmentRatio = ( 1 + sqrt(5) ) / 2;
  endif
  
  heightAligned = wall.heightWall*alignmentRatio;
  heightTopEdge = heightAligned - (poster.heightFrame*alignmentRatio);
  heightNailWall = heightTopEdge + poster.heightNail;
  
  if strcmp(poster.units,'inches')
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
  
  figure()
  hold on
  axis equal
  plotRectangle(wall.widthWall,wall.heightWall,0,-wall.heightWall,0,wall.colorWall,0,wall.colorWall,'wall',gca)
  plotRectangle(poster.widthFrame,poster.heightFrame,xFrameLeft,-poster.heightFrame -heightTopEdge,0,poster.colorPosterFrame,poster.frameBorderThickness,poster.colorPoster,'wall',gca)
end

