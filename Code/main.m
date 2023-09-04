%% Preamble
clear;
clc;
close all;
format long;

% Figure exporting? Only set to true when needing to generate the figures.
exportYorN = true;

% Load figure size arrays, add folders to path.
addFoldersToPath();
customStartup(exportYorN, '../Figures/');

%% Demo plot
x = 0:0.1:10;
y = sin(x);
figure('Name','TestFig')
hold on;
plot(x,y,'DisplayName','$\sin(x)$')
hold off;
legend()
xlabel('$x$')
userExportFig(posHalfPage,exportYorN)