function [] = plotStyle(position_array, exportYorN)

    % Set the axes and figure background colours.
    set(gcf, 'Color', [1 1 1]); 
    allAxesInFigure = findall(gcf,'type','axes');
    for idx = 1:length(allAxesInFigure)
        % Turn on the grid and bounding box.
        set(allAxesInFigure(idx), 'Box', 'on');
        set(allAxesInFigure(idx), 'XGrid', 'on');
        set(allAxesInFigure(idx), 'YGrid', 'on');
        set(allAxesInFigure(idx), 'Color', [1 1 1]);
        set(allAxesInFigure(idx),'GridLineStyle','-'); 
        set(allAxesInFigure(idx),'MinorGridLineStyle','-');
        set(allAxesInFigure(idx),'GridColor','k'); 
        set(allAxesInFigure(idx),'MinorGridColor','k');
    end

    % Set legend properties.
    allLegsInFigure = findall(gcf,'type','legend');
    for idx = 1:length(allLegsInFigure)
        leg_curr = allLegsInFigure(idx);
        if length(allLegsInFigure(idx).String) > 2
            leg_curr.ItemTokenSize(1) = 12;
        else
            leg_curr.ItemTokenSize(1) = 18;
        end
    end
    
    % Figure sizing units based on whether we are exporting to a report or
    % not.
    if exportYorN
        set (gcf, 'Units', 'centimeters');
    else
        set(gcf, 'Units', 'pixels');
    end

    % Get the figure positon.
    pos = get(gcf, 'Position');

    % Resize without moving the figure
    pos(1) = position_array(1);
    pos(2) = position_array(2);
    pos(3) = position_array(3);
    pos(4) = position_array(4);
    set(gcf, 'Position',pos);
end
