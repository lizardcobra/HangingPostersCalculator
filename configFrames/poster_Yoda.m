function [poster,wall] = poster_Yoda()

  curDir = cd('../')
  yodaPoster = PictureProperties();
  yodaPoster.widthFrame = 26.5;
  yodaPoster.heightFrame = 38 + (1/8);
  yodaPoster.heightNail = 3.5;
  yodaPoster.xPosition = 'centered';
  yodaPoster.frameBorderThickness = 1.5;
  yodaPoster.colorPosterFrame = [255,25,05]./255;
  yodaPoster.colorPoster = [200,200,200]./255;
  yodaPoster.heightAlignment = 'thirds';
  yodaPoster.units = 'inches';

  bedroomNorthWall = WallProperties();
  bedroomNorthWall.heightWall = 108;
  bedroomNorthWall.widthWall = 37;
  bedroomNorthWall.colorWall = [61,67,82]./255;

  HangSingleFrame(yodaPoster,bedroomNorthWall)
  cd(curDir)
end