function [] = customStartup(exportYorN, varargin)

    % Can input subfolder name if you want.

    % For nice plots...
    GraphGood(exportYorN);
    
    % Figure exporting? Only set to true when needing to generate the figures.
    
    if nargin == 1
        subfoldername   = 'Figures/';
    else
        subfoldername = varargin{1};
    end
    
    % Create folder if it doesn't already exist.
    if not(isfolder(subfoldername)) && exportYorN
        mkdir(subfoldername)
    end

    % Create figure config structure and save to it.

    % Save to config.
    figconfig.subfoldername = subfoldername;
    
    % Figure sizing. 
    if exportYorN
        % For exporting to LaTeX. Widths/heights in cm.
        figconfig.posHalfPage         = [5 5 8 7.75/1.33];
        figconfig.posHalfPageShort    = [5 5 8 4.7];
        figconfig.posTiledWide = [5 5 16 7.75/1.33];
        figconfig.posTiledWideLong    = [5 5 16 8];
        figconfig.posTiledWideLonger    = [5 5 16 12];
        figconfig.posThirdPage        = [5 5 5.33 7];
        figconfig.posHalfPageLong     = [5 5 8 10];
        figconfig.posHalfPageLegend   = [5 5 8 8];
        figconfig.posFullPage         = [5 5 12 12/1.33];
        figconfig.posFullPageBig      = [5 5 15 15/1.33];
        figconfig.posFullPageShort    = [5 5 15 7.75/1.33];
    else
        % For viewing/debugging.
        figconfig.posHalfPage       = [50 100 600 600/1.33];
        figconfig.posThirdPage      = figconfig.posHalfPage;
        figconfig.posHalfPageShort  = figconfig.posHalfPage;
        figconfig.posHalfPageLong   = figconfig.posHalfPage;
        figconfig.posHalfPageLegend = figconfig.posHalfPageLong;
        figconfig.posFullPage       = [50 100 800 800/1.33];
        figconfig.posTiledWide     = figconfig.posFullPage;
        figconfig.posTiledWideLong     = figconfig.posFullPage;
        figconfig.posTiledWideLonger     = figconfig.posFullPage;
        figconfig.posFullPageBig = figconfig.posFullPage;
        figconfig.posFullPageShort = figconfig.posFullPageBig;
    end

    % Assign to workspace
    fn = fieldnames(figconfig);
    for k = 1:numel(fn)
        name_cell = fn(k);
        name = name_cell{1};
        assignin('base', name, figconfig.(fn{k}));
    end

end