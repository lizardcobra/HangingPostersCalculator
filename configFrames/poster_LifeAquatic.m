function [poster,wall] = poster_LifeAquatic()
%  curDir = cd('../')
  % It is generally safer and best practice to cd into the directory, rather than adding the directory globally.
  % However it can be tedious to change the working directory back to the directory of the top level function
  % whenever the previous execution errored out or was terminated, so the addpath method is sometimes prefered
  addpath('..\')

  lifeAquaticPoster = PictureProperties();
  lifeAquaticPoster.widthFrame = 26;
  lifeAquaticPoster.heightFrame = 37 + (3/4);
  lifeAquaticPoster.heightNail = 5.5;
  lifeAquaticPoster.xPosition = 'centered';
  lifeAquaticPoster.frameBorderThickness = 1.5;
  lifeAquaticPoster.colorPosterFrame = [124, 189, 156]./255;
  lifeAquaticPoster.colorPoster = [208, 172, 89]./255;
  lifeAquaticPoster.heightAlignment = 'thirds';
  lifeAquaticPoster.units = 'inches';

  studioWall = WallProperties();
  studioWall.heightWall = 71 + 1/4;
  studioWall.widthWall = 73;
  studioWall.colorWall = [229, 228, 215]./255;

  HangSingleFrame(lifeAquaticPoster,studioWall)
%  cd(curDir)
end