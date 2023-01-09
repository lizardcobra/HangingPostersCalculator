function plotRectangle(width,height,leftX,bottomY,rotation,outlineColor,borderLineWidth,fillColor,displayName,currentAxes)
  [xL,yL] = VerticalLineSegment(leftX,height,bottomY);
  [xR,yR] = VerticalLineSegment(leftX+width,height,bottomY);

  [xT,yT] = HorizontalLineSegment(width,bottomY+height,leftX);
  [xB,yB] = HorizontalLineSegment(width,bottomY,leftX);

  % Plot the fill area
  xFill = [xL;xT(2);xR;flipud(xB)(2)];
  yFill = [yL;yT(2);flipud(yL);yB(2)];
  patch(xFill,yFill,fillColor)

  if borderLineWidth~=0
    % Draw the border as four separate filled rectangles
    % This allows defining the width in mm, rather than in pixels
    xLeft = [xL;xL(2)+borderLineWidth;xL(1)+borderLineWidth];
    yLeft = [yL;yL(2);yL(1)];
    patch(xLeft,yLeft,outlineColor)
    xTop = [xT;xT(2);xT(1)];
    yTop = [yT;yT(2)-borderLineWidth;yT(1)-borderLineWidth];
    patch(xTop,yTop,outlineColor)
    xRight = [xR;xR(2)-borderLineWidth;xR(1)-borderLineWidth];
    yRight = [yR;yR(2);yR(1)];
    patch(xRight,yRight,outlineColor)
    xBot = [xB;xB(2);xB(1)];
    yBot = [yB;yB(2)+borderLineWidth;yB(1)+borderLineWidth];
    patch(xBot,yBot,outlineColor)
  endif
end

function [x,y] = VerticalLineSegment(x,length,bottom)
    top = bottom + length;
    y=(bottom:top-bottom:top)';
    x=ones(size(y,1),1).*x(1,1);
end

function [x,y] = HorizontalLineSegment(length,y,left)
    right = left + length;
    x=(left:right-left:right)';
    y=ones(size(x,1),1).*y(1,1);
end