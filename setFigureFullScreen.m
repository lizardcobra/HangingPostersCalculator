function setFigureFullScreen(monitorID)
%Define which monitor to position the figure.
%Input:
%       #>0: count of monitor, from left to right.
%       'default': use current or default position and size
%       'largest': position figure on the largest available screen, excluding the screen that the MATLAB application is open in


%IMPORTANT: MATLAB will not rediscover which monitors are available each time this is called.
%           It only checks on startup. So if monitors are connected or disconnected,
%           MATLAB must be restarted in order for this function to see the current monitors.
    if monitorID==0
        return
    end
    topBarHeight=40;
    taskBarHeight=117;
    
    availableMonitors=get(0,'MonitorPositions');%position and size of all monitors
    [~,idx]=sort(availableMonitors(:,1));%sort monitors from left to right
    availableMonitors=availableMonitors(idx,:);
    availableMonitors(:,2)=availableMonitors(:,2)+topBarHeight;
    availableMonitors(:,4)=availableMonitors(:,4)-taskBarHeight;
    
    monitorsCount=length(availableMonitors(:,1));
    if strcmp(monitorID,'largest') && monitorsCount>1
       availableMonitors(CurrentMonitor,:) = nan; %exclude the monitor this application is positioned in
       [~,largest]=max(availableMonitors(:,3));
       monitorID=largest;
    end
    if monitorID>size(availableMonitors,1)
        monitorID=1;
    end
    selectedMonitors=availableMonitors(monitorID,:);
    figPos=[min(selectedMonitors(:,1)),max(selectedMonitors(:,2))];
    figSize=[sum(selectedMonitors(:,3)),min(selectedMonitors(:,4))];
    set(gcf, 'Position',[figPos figSize])
end

function monitorID = CurrentMonitor
%Find which monitor this instance of MATLAB is running on.
%Monitors are numbered from left to right.
%Addapted from Dev-iL's answer on https://stackoverflow.com/questions/37705169/determine-matlabs-monitor-in-a-multiple-monitor-configuration
    % Get monitor list:
    monitors = get(groot,'MonitorPositions'); % also get(0,'MonitorPositions');
    [~,idx]=sort(monitors(:,1));%sort monitors from left to right
    monitors=monitors(idx,:);
    % Get the position of the main MATLAB screen:
    pt = com.mathworks.mlservices.MLEditorServices.getEditorApplication.getActiveEditor.getComponent.getRootPane.getLocationOnScreen;
    matlabScreenPos = [pt.x pt.y]+1; % "+1" is to shift origin for "pixel" units.
    % Find the screen in which matlabScreenPos falls:
    monitorID = 0;
    nMons = size(monitors,1);
    if nMons == 1
      monitorID = 1;
    else
      for ind1 = 1:nMons    
        monitorID = monitorID + ind1*(...
          matlabScreenPos(1) >= monitors(ind1,1) && matlabScreenPos(1) < sum(monitors(ind1,[1 3])) && ...
          matlabScreenPos(2) >= monitors(ind1,2) && matlabScreenPos(2) < sum(monitors(ind1,[2 4])) );
      end
    end
    if monitorID==0
       monitorID=1; %the above may not work for setup that includes a single large monitor and the laptops monitor 
    end
end