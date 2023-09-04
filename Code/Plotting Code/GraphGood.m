function [] = GraphGood(exportYorN)
%% Plot parameters
% matlabBlue      = [0 0.4470 0.7410];
% matlabOrange    = [0.8500 0.3250 0.0980];
% myred           = [0.6350 0.0780 0.1840];
% myblue          = [0.3010 0.7450 0.9330];
% myblack         = [0.4660 0.6740 0.1880];
% mygreen         = [0.4940 0.1840 0.5560];
% mycyan          = [0.9290 0.6940 0.1250];
% myyellow        = [0.8500 0.3250 0.0980];
% mygray          = [0 0.4470 0.7410];

% Colour scheme.
color1 = [228,26,28]/255;
color2 = [55,126,184]/255;
color3 = [77,175,74]/255;
color4 = [152,78,163]/255;
color5 = [255,127,0]/255;
color6 = [0.3010, 0.7450, 0.9330];
color7 = [166,86,40]/255;
color8 = [247,129,191]/255;
color9 = [153,153,153]/255;

% Save to structure and save to workspace.
colors.color1 = color1;
colors.color2 = color2;
colors.color3 = color3;
colors.color4 = color4;
colors.color5 = color5;
colors.color6 = color6;
colors.color7 = color7;
colors.color8 = color8;
colors.color9 = color9;

assignin('base', 'colors',colors);

set(groot,'defaultAxesColorOrder',[color1;color2;color3;color4;color5;...
    color6;color7;color8;color9]);

% Make the plots look nice regardless of whether we are exporting to 
if exportYorN
    alw             = 0.6;                        % AxesLineWidth
    fsz             = 11;                       % Fontsize 11 for the report.
    lw              = 0.8;                        % LineWidth
    msz             = 4;                       % MarkerSize
else
    alw             = 1;                        % AxesLineWidth
    fsz             = 20;                       % Fontsize
    lw              = 2;                        % LineWidth
    msz             = 10;                       % MarkerSize
end
set(0,'defaultLineLineWidth',lw);           % set the default line width to lw
set(0,'defaultLineMarkerSize',msz);         % set the default line marker size to msz
set(0,'defaultAxesLineWidth',alw);          % set the default line width to lw
set(0,'defaultAxesFontSize',fsz);           % set the default line marker size to msz
set(0,'defaulttextinterpreter','latex');  
set(0, 'defaultLegendInterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0, 'defaultColorbarTickLabelInterpreter','latex');
set(0, 'defaultPolaraxesTickLabelInterpreter','latex');
set(0, 'defaultTextInterpreter','latex');
set(0, 'defaultTextboxshapeInterpreter','latex');
set(0,'defaultTextFontSize',0.85*fsz);
set(0,'defaultLegendFontSize',0.85*fsz);

% This script changes all interpreters from tex to latex. 
% list_factory = fieldnames(get(groot,'factory'));
% index_interpreter = find(contains(list_factory,'Interpreter'));
% for i = 1:length(index_interpreter)
%     default_name = strrep(list_factory{index_interpreter(i)},'factory','default');
%     set(groot, default_name,'latex');
% end

opengl hardware
set(0,'DefaultLineLineSmoothing','on');
set(0,'DefaultPatchLineSmoothing','on');
opengl('OpenGLLineSmoothingBug',1);

end

