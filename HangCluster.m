function HangCluster(frames,wall)
% HANGCLUSTER Determine lateral position and height to hang an arranged cluster of picture frames on a wall
% INPUTS:
%   frames - An array of picture frames defined by the PosterProperties class
%   wall - Instance of class WallProperties that defines the size of the secion of wall to hang the pictures on

  % Plot the wall first
  figure()
  hold on
  axis equal
  plotRectangle(wall.widthWall,wall.heightWall,0,-wall.heightWall,0,wall.colorWall,0,wall.colorWall,'wall',gca)

  % Plot each of the framed pieces
  for i=1:length(frames) 
    if isnumeric(frames(i).heightAlignment)
        heightTopEdge = frames(i).heightAlignment;
    else
      % Calculate what the ideal hang height should be
      if strcmp(frames(i).heightAlignment,'thirds')
        alignmentRatio = 1/3;    
      elseif strcmp(frames(i).heightAlignment,'golden')
        alignmentRatio = ( 1 + sqrt(5) ) / 2;
      endif
      heightAligned = wall.heightWall*alignmentRatio; % height of the imaginary ideal line that the picture should align with
      heightTopEdge = heightAligned - (frames(i).heightFrame*alignmentRatio);
    endif

    heightNailWall = heightTopEdge + frames(i).heightNail;
    if strcmp(frames(i).units,'inches')
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

    if strcmp(frames(i).xPosition,'centered')==1
      xFrameLeft = wall.widthWall/2-frames(i).widthFrame/2;
    else
      xFrameLeft = frames(i).xPosition;
    endif
  
    plotRectangle(frames(i).widthFrame, ...
                  frames(i).heightFrame, ...
                  xFrameLeft, ...
                  -frames(i).heightFrame -heightTopEdge, ...
                  0,frames(i).colorPosterFrame, ...
                  frames(i).frameBorderThickness, ...
                  frames(i).colorPoster, ...
                  'wall', ...
                  gca)
  end
end