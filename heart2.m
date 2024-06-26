%NAME:Pande Aditya
%Roll No: 22251
%Date: 25 Feb 2023
%Title:Half Way there ..Hold on Tight...


function heart

  % Initialize the volume data, figure, and axes:

  [X,Y,Z] = meshgrid(linspace(-3,3,101));
  F = -X.^2.*Z.^3-(9/80).*Y.^2.*Z.^3+(X.^2+(9/4).*Y.^2+Z.^2-1).^3;
  hFigure = figure('Position',[200 200 400 400],'Color','w');
  hAxes = axes('Parent',hFigure,'Units','pixels',...
               'Position',[1 1 400 400],'NextPlot','add',...
               'DataAspectRatio',[1 1 1],'Visible','off',...
               'CameraViewAngle',10,...
               'XLim',[32 70],'YLim',[39 63],'ZLim',[34 73]);
  view([-39 30]);

  % Create and plot contours in the y-z plane:

  for iX = [35 38 41 45 48 51 54 57 61 64 67]
    plane = reshape(F(:,iX,:),101,101);
    cData = contourc(plane,[0 0]);
    xData = iX.*ones(1,cData(2,1));
    plot3(hAxes,xData,cData(2,2:end),cData(1,2:end),'k');
  end

  % Create and plot contours in the x-z plane:

  for iY = [41 44 47 51 55 58 61]
    plane = reshape(F(iY,:,:),101,101);
    cData = contourc(plane,[0 0]);
    yData = iY.*ones(1,cData(2,1));
    plot3(hAxes,cData(2,2:end),yData,cData(1,2:end),'k');
  end

  % Create and plot contours in the x-y plane:

  for iZ = [36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 69 71]
    plane = F(:,:,iZ);
    cData = contourc(plane,[0 0]);
    startIndex = 1;
    if size(cData,2) > (cData(2,1)+1)
      startIndex = cData(2,1)+2;
      zData = iZ.*ones(1,cData(2,1));
      plot3(hAxes,cData(1,2:(startIndex-1)),...
            cData(2,2:(startIndex-1)),zData,'k');
    end
    zData = iZ.*ones(1,cData(2,startIndex));
    plot3(hAxes,cData(1,(startIndex+1):end),...
          cData(2,(startIndex+1):end),zData,'k');
  end

  % Fill the inside of the mesh with an isosurface to
  % block rendering of the back side of the heart:

  p = patch(isosurface(F,-0.001));
  set(p,'FaceColor','w','EdgeColor','none');

end
