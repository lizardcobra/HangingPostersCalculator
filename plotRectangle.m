function plotRectangle(width,height,leftX,bottomY,rotation,outlineColor,lineWidth,fillColor,displayName,currentAxes)
  [xL,yL] = VerticalLineSegment(leftX,height,bottomY);
  [xR,yR] = VerticalLineSegment(leftX+width,height,bottomY);

  [xT,yT] = HorizontalLineSegment(width,bottomY+height,leftX);
  [xB,yB] = HorizontalLineSegment(width,bottomY,leftX);

  yR = flipud(yL);
  xB = flipud(xB);
  x = [xL;xT(2);xR;xB(2)]
  y = [yL;yT(2);yR;yB(2)]
  patch(x,y,fillColor)

    plot(xL,yL,'color',outlineColor,'LineStyle','-','LineWidth',lineWidth,'DisplayName',displayName);
    plot(xR,yR,'color',outlineColor,'LineStyle','-','LineWidth',lineWidth,'DisplayName',displayName);
    plot(xT,yT,'color',outlineColor,'LineStyle','-','LineWidth',lineWidth,'DisplayName',displayName);
    plot(xB,yB,'color',outlineColor,'LineStyle','-','LineWidth',lineWidth,'DisplayName',displayName);
end

function [x,y] = VerticalLineSegment(x,length,bottom)
    top = bottom + length;
    y=(bottom:top-bottom:top)';
    x=ones(size(y,1),1).*x(1,1);
##    plot(x,y,'color',color,'LineStyle',lineStyle,'LineWidth',lineWidth,'DisplayName',displayName);
end

function [x,y] = HorizontalLineSegment(length,y,left)
    right = left + length;
    x=(left:right-left:right)';
    y=ones(size(x,1),1).*y(1,1);
##    plot(x,y,'color',color,'LineStyle',lineStyle,'LineWidth',lineWidth,'DisplayName',displayName);
end