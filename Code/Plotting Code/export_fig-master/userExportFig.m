% Function: export figure based on a user-input as to whether we should do so.

function userExportFig(size, exportYorN)
    
    % LaTeX typesetting and sizing for saving in the report.
    plotStyle(size,exportYorN);

    % Get figure name and get ready to save to subfolder.
    subfoldername = evalin('base','subfoldername');
    figname = get(gcf,'Name');
    figname = append(subfoldername, figname);
    
    % Export to PDF.
    if exportYorN
        export_fig(figname, '-pdf','-r600'); %#ok<*UNRCH>
    end
end