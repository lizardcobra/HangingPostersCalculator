function [poster,wall] = poster_LifeAquatic()
  curDir = cd('../')
  lifeAquaticPoster = PosterProperties();
  lifeAquaticPoster.widthFrame = 26
  lifeAquaticPoster.heightFrame = 37 + (3/4)
  lifeAquaticPoster.heightNail = 5.5
  lifeAquaticPoster.xPosition = 'centered'
  lifeAquaticPoster.frameBorderThickness = 1.5
  lifeAquaticPoster.colorPosterFrame = [124, 189, 156]./255
  lifeAquaticPoster.colorPoster = [208, 172, 89]./255

  studioWall = WallProperties();
  studioWall.heightWall = 71 + 1/4
  studioWall.widthWall = 73
  studioWall.colorWall = [229, 228, 215]./255
  studioWall.alignment = 'thirds'
  studioWall.units = 'inches'

  HangFrames(lifeAquaticPoster,studioWall)
  cd(curDir)
end