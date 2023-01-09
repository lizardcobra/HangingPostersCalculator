function studioNorthWallCluster
  clc
  close all
  clear all

  addpath('..\')

  % Define each of the framed drawings. Their position relative to each other is known; their
  % position on the wall is not yet known.

  madmadmadmadWorldDrawing = PictureProperties();
  madmadmadmadWorldDrawing.widthFrame = 11.75;
  madmadmadmadWorldDrawing.heightFrame = 18;
  madmadmadmadWorldDrawing.heightNail = 2.5;
  madmadmadmadWorldDrawing.xPosition = 1.25;
  madmadmadmadWorldDrawing.frameBorderThickness = 0.5;
  madmadmadmadWorldDrawing.colorPosterFrame = [5, 5, 5]./255;
  madmadmadmadWorldDrawing.colorPoster = [250, 250, 250]./255;
  madmadmadmadWorldDrawing.heightAlignment = 11.5;
  madmadmadmadWorldDrawing.units = 'inches';

  frankUnderwoodDrawing = PictureProperties();
  frankUnderwoodDrawing.widthFrame = 10.5;
  frankUnderwoodDrawing.heightFrame = 12.5;
  frankUnderwoodDrawing.heightNail = 2.5;
  frankUnderwoodDrawing.xPosition = 14.75;
  frankUnderwoodDrawing.frameBorderThickness = 1.5;
  frankUnderwoodDrawing.colorPosterFrame = [5, 5, 5]./255;
  frankUnderwoodDrawing.colorPoster = [250, 250, 250]./255;
  frankUnderwoodDrawing.heightAlignment = 13.5;
  frankUnderwoodDrawing.units = 'inches';

  leiaDrawing = PictureProperties();
  leiaDrawing.widthFrame = 8.75;
  leiaDrawing.heightFrame = 11.75;
  leiaDrawing.heightNail = 2.5;
  leiaDrawing.xPosition = 3;
  leiaDrawing.frameBorderThickness = 0.5;
  leiaDrawing.colorPosterFrame = [5, 5, 5]./255;
  leiaDrawing.colorPoster = [250, 250, 250]./255;
  leiaDrawing.heightAlignment = 30.5;
  leiaDrawing.units = 'inches';

  theBigLebowskiDrawing = PictureProperties();
  theBigLebowskiDrawing.widthFrame = 15;
  theBigLebowskiDrawing.heightFrame = 12;
  theBigLebowskiDrawing.heightNail = 2.5;
  theBigLebowskiDrawing.xPosition = 14.25;
  theBigLebowskiDrawing.frameBorderThickness = 0.75;
  theBigLebowskiDrawing.colorPosterFrame = [5, 5, 5]./255;
  theBigLebowskiDrawing.colorPoster = [250, 250, 250]./255;
  theBigLebowskiDrawing.heightAlignment = 27;
  theBigLebowskiDrawing.units = 'inches';

  % Add all pictures to the cluster
  pictures(1) = madmadmadmadWorldDrawing;
  pictures(2) = frankUnderwoodDrawing;
  pictures(3) = leiaDrawing;
  pictures(4) = theBigLebowskiDrawing;

  studioNorthWall = WallProperties();
  studioNorthWall.heightWall = 45;
  studioNorthWall.widthWall = 31;
  studioNorthWall.colorWall = [229, 228, 215]./255;

%  studioNorthWall.heightWall = 106;
%  studioNorthWall.widthWall = 67.25;

  HangCluster(pictures,studioNorthWall)
end