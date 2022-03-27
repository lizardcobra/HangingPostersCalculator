function plotRectangle(width,height,leftX,bottomY,rotation,outlineColor,lineWidth,fillColor,displayName,currentAxes)
  plotVerticalLineSegment(leftX,height,bottomY,outlineColor,'-',lineWidth,displayName,currentAxes)
  plotVerticalLineSegment(leftX+width,height,bottomY,outlineColor,'-',lineWidth,displayName,currentAxes)

  plotHorizontalLineSegment(width,bottomY+height,leftX,outlineColor,'-',lineWidth,displayName,currentAxes)
  plotHorizontalLineSegment(width,bottomY,leftX,outlineColor,'-',lineWidth,displayName,currentAxes)
end

function plotVerticalLineSegment(x,length,bottom,color,lineStyle,lineWidth,displayName,currentAxes)
    top = bottom + length;
    y=(bottom:top-bottom:top)';
    x=ones(size(y,1),1).*x(1,1);
    plot(x,y,'color',color,'LineStyle',lineStyle,'LineWidth',lineWidth,'DisplayName',displayName);
end

function plotHorizontalLineSegment(length,y,left,color,lineStyle,lineWidth,displayName,currentAxes)
    right = left + length;
    x=(left:right-left:right)';
    y=ones(size(x,1),1).*y(1,1);
    plot(x,y,'color',color,'LineStyle',lineStyle,'LineWidth',lineWidth,'DisplayName',displayName);
end