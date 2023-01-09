function studioNorthWallCluster
  addpath('..\')

  % Define each of the framed drawings. Their position relative to each other is known; their
  % position on the wall is not yet known.
  leiaDrawing = PosterProperties();
  leiaDrawing.widthFrame = 8.75;
  leiaDrawing.heightFrame = 11.75;
  leiaDrawing.heightNail = 2.5;
  leiaDrawing.xPosition = 3;
  leiaDrawing.frameBorderThickness = 0.5;
  leiaDrawing.colorPosterFrame = [5, 5, 5]./255;
  leiaDrawing.colorPoster = [250, 250, 250]./255;

  theBigLebowskiDrawing = PosterProperties();
  theBigLebowskiDrawing.widthFrame = 15;
  theBigLebowskiDrawing.heightFrame = 12;
  theBigLebowskiDrawing.heightNail = 2.5;
  theBigLebowskiDrawing.xPosition = 14.25;
  theBigLebowskiDrawing.frameBorderThickness = 0.75;
  theBigLebowskiDrawing.colorPosterFrame = [5, 5, 5]./255;
  theBigLebowskiDrawing.colorPoster = [250, 250, 250]./255;

  % Add all pictures to the cluster
  pictures(1) = leiaDrawing;
  pictures(2) = theBigLebowskiDrawing;

  studioNorthWall = WallProperties();
  studioNorthWall.heightWall = 45;
  studioNorthWall.widthWall = 31;
  studioNorthWall.colorWall = [229, 228, 215]./255;
  studioNorthWall.heightAlignment = 'thirds';
  studioNorthWall.units = 'inches';

%  studioNorthWall.heightWall = 106;
%  studioNorthWall.widthWall = 67.25;

  HangCluster(leiaDrawing,studioNorthWall)
end