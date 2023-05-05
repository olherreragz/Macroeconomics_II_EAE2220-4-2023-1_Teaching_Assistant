%% Logarithm notes

b= -3:0.01:4;
b = b';
x = b

dom_ln = 0:0.01:4;
dom_ln_1_plus = -1:0.01:4;

dom_ln = dom_ln';
dom_ln_1_plus = dom_ln_1_plus';

ln_e = log(dom_ln)
ln_1_plus_e = log(1 + dom_ln_1_plus)


close all
set(gca,'xcolor','r','ycolor','b');
plot(b, x, 'Color', 'blue');
text(0.8, 1.5, '$$y = \epsilon$$','FontSize', 17, 'Interpreter', 'latex')
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.LineWidth=.2; 
% set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([-2.5 3 -2.5 2]);
hold on; 
ylab = ylabel("$$y$$", 'FontSize', 17, 'Position',[0 2.1], 'Interpreter', 'latex');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
xlabel("$$\epsilon$$", 'FontSize', 17, 'Position', [3.25 0.1], 'Interpreter', 'latex') 
hold on;
plot(dom_ln, ln_e, 'Color', 'magenta');
text(2, 1.45, '$$ln(1 + \epsilon)$$','FontSize', 17, 'Interpreter', 'latex')
hold on;
plot(dom_ln_1_plus, ln_1_plus_e, 'Color', 'red');
text(2.25, 0.55, '$$ln(\epsilon)$$','FontSize', 17, 'Interpreter', 'latex')
set(gca, 'Box', 'off');
line([.4 .4], [-2.5 2], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.3);
line([-.4 -.4], [-2.5 2], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.3);
% text(.7, -0.13, '$$k_t^*$$','FontSize', 17, 'Interpreter', 'latex')
hold off;

clear all


%% Logarithm notes 2

b= 0.01:0.001:2;
b = b';
f = 0.75*(1+1).^b

close all
plot(b, f, 'Color', 'black');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([0 2 0 3]);
hold on; 
ylab = ylabel("$$P_t$$", 'FontSize', 17, 'Position',[0 3.005], 'Interpreter', 'latex');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
xlabel("$$t$$", 'FontSize', 17, 'Position', [2.005 0], 'Interpreter', 'latex') 
hold on; 
text(-0.2, 0.8, '$$P_0$$','FontSize', 17, 'Interpreter', 'latex')
hold on; set(gca, 'Box', 'off');
% plot(0.75,1,'.','MarkerSize', 20, 'Color', 'black')
% line([.75 .75], [0 1], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.6);
text(1.7, 2.2, '$$P_0(1+\epsilon)^t$$','FontSize', 17, 'Interpreter', 'latex')
hold off;

clear all

%% Logarithm notes 3

b= 0.01:0.001:2;
b = b';
f = 0.75+b

close all
plot(b, f, 'Color', 'black');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([0 2 0 3]);
hold on; 
ylab = ylabel("$$p_t$$", 'FontSize', 17, 'Position',[0 3.005], 'Interpreter', 'latex');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
xlabel("$$t$$", 'FontSize', 17, 'Position', [2.005 0], 'Interpreter', 'latex') 
hold on; 
text(-0.3, 0.8, '$$ln(P_0)$$','FontSize', 17, 'Interpreter', 'latex')
hold on; set(gca, 'Box', 'off');
% plot(0.75,1,'.','MarkerSize', 20, 'Color', 'black')
line([1 1.5], [1.75 1.75], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
line([1.5 1.5], [1.75 2.25], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
text(1.6, 2, '$$\epsilon$$','FontSize', 17, 'Interpreter', 'latex')
hold off;

clear all

%% Logarithm notes 4

b= 0.01:0.01:2;
b = b';
f = 0.75*b.^-1
g= ones(size(f))
[b f]

h = 0:0.001:1;
h = h'
i = .75*ones(size(h))

close all
plot(b, g, 'Color', 'black');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([0 2 0 3]);
hold on; 
ylab = ylabel("$$\pi_t$$", 'FontSize', 17, 'Position',[0 3.005], 'Interpreter', 'latex');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
xlabel("$$t$$", 'FontSize', 17, 'Position', [2.005 0], 'Interpreter', 'latex') 
hold on; 
text(-0.1, 1, '$$\epsilon$$','FontSize', 17, 'Interpreter', 'latex')
hold on; set(gca, 'Box', 'off');
% plot(0.75,1,'.','MarkerSize', 20, 'Color', 'black')
% line([1 1.5], [1.75 1.75], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
% line([1.5 1.5], [1.75 2.25], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
% text(1.6, 2, '$$\epsilon$$','FontSize', 17, 'Interpreter', 'latex')
hold off;

clear all

%% Logarithm notes 5

b= 0.01:0.01:2;
b = b';
f = 0.75*b.^-1
g= ones(size(f))
[b f]

h = 0:0.001:1;
h = h'
i = .75*ones(size(h))

close all
plot(b, g, 'Color', 'black');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([0 2 0 3]);
hold on; 
ylab = ylabel("$$\Delta \pi_t$$", 'FontSize', 17, 'Position',[0 3.005], 'Interpreter', 'latex');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
xlabel("$$t$$", 'FontSize', 17, 'Position', [2.005 0], 'Interpreter', 'latex') 
hold on; 
text(-0.1, 1, '$$0$$','FontSize', 17, 'Interpreter', 'latex')
hold on; set(gca, 'Box', 'off');
% plot(0.75,1,'.','MarkerSize', 20, 'Color', 'black')
% line([1 1.5], [1.75 1.75], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
% line([1.5 1.5], [1.75 2.25], 'LineStyle', '-', 'Color', 'black', 'LineWidth', 0.6);
% text(1.6, 2, '$$\epsilon$$','FontSize', 17, 'Interpreter', 'latex')
hold off;

clear all

%% Laffer Curve
clear all
b= 0.01:0.001:3.5;
b = b';
f = -(1.75 - b).^2 + 3

close all
plot(b, f, 'Color', 'blue');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([0 3.5 0 3.5]);
hold on; 
ylab = ylabel("$$T$$", 'FontSize', 17, 'Position',[0 3.505], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(1.67, -0.22, "$$T^*$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
text(2.75, 2.2, '$$C(\tau)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
line([1.75 1.75], [0 3], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
plot(1.75, 3,'.','MarkerSize', 20, 'Color', 'blue');
xlabel("$$ \tau $$", 'FontSize', 24, 'Position', [3.505 0], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

clear all;

%% Ay 4 naudon exc. 1) a) Segniorage laffer curve.

b= 0.01:0.001:0.985;
b = b';
c= 0.985:0.001:7;
c = c';
f1 = 10 * b .* exp(-b);
f2 = 10 * c .* exp(-c);

close all
plot(b, f1, 'Color', 'blue', 'LineWidth', 1);
axis([0 7 0 4]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
hold on;
plot(c, f2, 'Color', 'red', 'LineWidth', 1);
ylab = ylabel("$$s$$", 'FontSize', 17, 'Position',[0 4.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
xlabel("$$ \theta, \pi$$", 'FontSize', 22, 'Position', [7.05 0], 'Interpreter', 'latex', 'Color', 'blue');
line([0.985 0.985], [0 3.678], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
plot(0.985, 3.678,'.','MarkerSize', 20, 'Color', 'blue');
text(2.75, 2.2, '$$\theta e^{-\alpha \theta}$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
hold off;

close all;



%% Ay 4 naudon exc. 1) a) nominal growth and expectations map

b= 0.01:0.001:1.8;
b = b';
y= (1/1.73) * b;
y = y';

close all;
figure(1);
x1=[0, 3^(1/2), 3^(1/2),0];
y1=[0,1,1,1];
fill(x1,y1, 'b', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
hold on;
x2 =[0,3^(1/2),3^(1/2),0];
y2 =[0,0,1,0];
fill(x2,y2, 'r', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
axis([0 1.73 0 1]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 1.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
xlabel("$$ \theta, \pi$$", 'FontSize', 22, 'Position', [1.705 0], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, y, 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1);
text(1.3, 0.83, "$$\mbox{E} [\pi] = \sigma$$", 'FontSize', 15, 'Interpreter', 'latex', 'Color', 'white', 'Rotation', 37);
text(0.07, 0.69, "$$\mbox{E} [\pi] > \pi, \sigma$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(0.65, 0.69, "$$\Rightarrow$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(0.83, 0.69, "$$\downarrow \dot{\pi}^e$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(0.74, 0.3, "$$\mbox{E} [\pi] < \pi, \sigma$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.32, 0.3, "$$\Rightarrow$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.5, 0.3, "$$\uparrow \dot{\pi}^e$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
set(gca, 'XTick', 0:0.15:1.73);
set(gca, 'XTick', 0:0.175:1.73);
hold off;

%% Ay 4 naudon exc. 1) a) big nominal growth and normal deficit

clear all;

d= 0.01:0.001:3.5;
d = d';
f = -0.2 + 0.75*sqrt(log(2*(0.45 + d)));

b= 0.01:0.001:1.8;
b = b';
y= (1/1.73) * b;
y = y';

close all;
figure(1);
x1=[0, 3^(1/2), 3^(1/2),0];
y1=[0,1,1,1];
fill(x1,y1, 'b', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
hold on;
x2 =[0,3^(1/2),3^(1/2),0];
y2 =[0,0,1,0];
fill(x2,y2, 'r', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
axis([0 1.73 0 1]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 1.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
plot(d, f, 'Color', 'blue', 'LineWidth', 1);
xlabel("$$ \theta, \pi$$", 'FontSize', 22, 'Position', [1.705 0], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, y, 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1);
text(0.74, 0.3, "$$\mbox{E} [\pi] < \pi, \sigma$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.32, 0.3, "$$\Rightarrow$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.5, 0.3, "$$\uparrow \dot{\pi}^e$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.36, 0.704, "$$\mbox{E} [\pi] \longrightarrow$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue', 'Rotation', 12);
set(gca, 'XTick', 0:0.15:1.73);
set(gca, 'XTick', 0:0.175:1.73);
line([1.3 1.3], [0 1.74], 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
plot(1.3, 0.64,'.','MarkerSize', 20, 'Color', 'blue');
text(1.27, -0.05, "$$\theta_0$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'blue', 'FontWeight','bold');
hold off;

close all;

%% Ay 4 naudon exc. 1) a) big nominal growth and big deficit

clear all;

d= 0.01:0.001:3.5;
d = d';
f = -0.2 + 0.75*sqrt(log(2*(0.15 + d)));
b= 0.01:0.001:1.8;
b = b';
y= (1/1.73) * b;
y = y';

close all;
figure(1);
x1=[0, 3^(1/2), 3^(1/2),0];
y1=[0,1,1,1];
fill(x1,y1, 'b', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
hold on;
x2 =[0,3^(1/2),3^(1/2),0];
y2 =[0,0,1,0];
fill(x2,y2, 'r', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
axis([0 1.73 0 1]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 1.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
plot(d, f, 'Color', 'blue', 'LineWidth', 1);
xlabel("$$ \theta, \pi$$", 'FontSize', 22, 'Position', [1.705 0], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, y, 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1);
text(0.74, 0.3, "$$\mbox{E} [\pi] < \pi, \sigma$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.32, 0.3, "$$\Rightarrow$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.5, 0.3, "$$\uparrow \dot{\pi}^e$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(1.36, 0.654, "$$\mbox{E} [\pi] \longrightarrow$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue', 'Rotation', 15);
text(1.007, 0.45, "$$d^\prime$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
set(gca, 'XTick', 0:0.15:1.73);
set(gca, 'XTick', 0:0.175:1.73);
line([1.3 1.3], [0 1.74], 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
plot(1.3, 0.573886,'.','MarkerSize', 20, 'Color', 'blue');
text(1.3, -0.05, "$$\theta_0$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'blue', 'FontWeight','bold');
hold off;

close all;

%% Ay 4 naudon exc. 1) a) fiscal reform

clear all;

d= 0.01:0.001:3.5;
d = d';
f = -0.02 + 0.75*sqrt(log(2*(0.15 + d)));
b= 0.01:0.001:1.8;
b = b';
y= (1/1.73) * b;
y = y';

close all;
figure(1);
x1=[0, 3^(1/2), 3^(1/2),0];
y1=[0,1,1,1];
fill(x1,y1, 'b', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
hold on;
x2 =[0,3^(1/2),3^(1/2),0];
y2 =[0,0,1,0];
fill(x2,y2, 'r', 'LineWidth', 3, 'EdgeColor','b','FaceAlpha',0.5, 'EdgeAlpha', 0);
axis([0 1.73 0.01 1]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 1.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
plot(d, f, 'Color', 'blue', 'LineWidth', 1);
xlabel("$$ \theta, \pi$$", 'FontSize', 22, 'Position', [1.705 0], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, y, 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1);
text(0.74, 0.793, "$$\mbox{E} [\pi] = \pi, \sigma$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'white', 'FontWeight','bold');
text(0.68, 0.58, "$$d^{\prime \prime}$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
set(gca, 'XTick', 0:0.15:1.73);
set(gca, 'XTick', 0:0.175:1.73);
line([1.3 1.3], [0 1.74], 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
plot(1.3, 0.7541,'.','MarkerSize', 20, 'Color', 'blue');
text(1.3, -0.05, "$$\theta_0$$", 'FontSize', 20, 'Interpreter', 'latex', 'Color', 'blue', 'FontWeight','bold');
hold off;

close all;


%% Ay 4 naudon exc. 2) a)

clear all
b= 0.01:0.001:20;
b = b';
f = (log(b)/0.16) - 1.5
y= 0.01:0.001:18.7;

close all
plot(b, f, 'Color', 'blue', 'LineWidth', 1);
axis([0 26 -3 20.5]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
hold on;
plot(y, y, 'Color', 'blue', 'LineStyle', '--');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 20.7], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(19.3, 19.3, "$$\mbox{E} [\pi] = \sigma$$", 'FontSize', 14, 'Interpreter', 'latex', 'Color', 'blue', 'Rotation', 45);
text(20.5, 17.2, '$$\mbox{E} [\pi](\sigma, d)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
xlabel("$$ \sigma $$", 'FontSize', 22, 'Position', [26.05 -2], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

b= 0.01:0.001:19.5;
b = b';
f = (log(b)/0.16) - 1.5
y= 0.01:0.001:18.6;
g = (log(b)/0.16) - 3.5;

close all
plot(b, f, 'Color', 'blue', 'LineWidth', 1);
axis([0 27 -3 20.5]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
hold on;
plot(y, y, 'Color', 'blue', 'LineStyle', '--');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 20.7], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
xlabel("$$ \sigma $$", 'FontSize', 22, 'Position', [26.05 -2], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, g, 'Color', 'blue', 'LineWidth', 1);
text(19.3, 19.3, "$$\mbox{E} [\pi] = \sigma$$", 'FontSize', 14, 'Interpreter', 'latex', 'Color', 'blue', 'Rotation', 45);
text(20.1, 17, '$$\mbox{E} [\pi](\sigma, d)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
text(20.1, 15, '$$\mbox{E} [\pi](\sigma, d^\prime)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
hold off;

b= 0.01:0.001:19.5;
b = b';
f = (log(b)/0.16) - 1.5
y= 0.01:0.001:22;
g = (log(b)/0.16) + (log(exp(1)*0.16)/0.16);

close all
plot(b, f, 'Color', 'blue', 'LineWidth', 1);
axis([0 27 -3 20.5]);
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
set(gca, XAxisLocation = 'origin');
hold on;
plot(y, y, 'Color', 'blue', 'LineStyle', '--');
ylab = ylabel("$$\mbox{E} [\pi]$$", 'FontSize', 17, 'Position',[0 20.7], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
xlabel("$$ \sigma $$", 'FontSize', 22, 'Position', [26.05 -2], 'Interpreter', 'latex', 'Color', 'blue');
plot(b, g, 'Color', 'blue', 'LineWidth', 1);
% text(19.3, 19.3, "$$\mbox{E} [\pi] = \sigma$$", 'FontSize', 14, 'Interpreter', 'latex', 'Color', 'blue', 'Rotation', 45);
text(20.1, 17, '$$\mbox{E} [\pi](\sigma, d)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
text(20.1, 13.5, '$$\mbox{E} [\pi](\sigma, d^M)$$','FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
plot(6.2, 6.2,'.','MarkerSize', 20, 'Color', 'blue');
hold off;



clear all;


%% Ay 4 naudon exc. 4) a) A segniorage
clear all
b= -2:0.001:10;
b = b';
f = - (0.5 * (b.^2)) + b*3.2;

close all
plot(b, f, 'Color', 'blue');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([-1 9 -7 6]);
hold on; 
set(gca, XAxisLocation = 'origin');
set(gca, YAxisLocation = 'origin');
ylab = ylabel("$$S$$", 'FontSize', 17, 'Position',[0 6.005], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(5.6, 3.3, "$$S_A$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
line([3.185 3.185], [0 5.11], 'LineStyle', '--', 'Color', 'black', 'LineWidth', 0.6, 'Color', 'blue');
text(3, -0.7, "$$\pi_A^{*}$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
plot(3.185, 5.11,'.','MarkerSize', 20, 'Color', 'blue');
xlabel("$$ \pi_A $$", 'FontSize', 24, 'Position', [9.005 0], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

clear all;

%% Ay 4 naudon exc. 4) a) B segniorage beta lt 1
clear all
b= -2:0.001:10;
b = b';
f = 0.4 * 2^1.1*b.^(1 - 0.5);


close all
plot(b, f, 'Color', 'blue');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([-1 6.5 -0.5 2.2]);
hold on; 
set(gca, XAxisLocation = 'origin');
set(gca, YAxisLocation = 'origin');
ylab = ylabel("$$S$$", 'FontSize', 17, 'Position',[0 2.205], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(1.51, 1.685, "$$S_B(\beta < 1)$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
xlabel("$$ \pi_B $$", 'FontSize', 24, 'Position', [6.505 0], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

clear all;

%% Ay 4 naudon exc. 4) a) B segniorage beta equal to 1
clear all
b= -2:0.001:10;
b = b';
f = 0.4 * 2^1.1*b.^(0);


close all
plot(b, f, 'Color', 'blue');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([-1 6.5 -0.5 2.2]);
hold on; 
set(gca, XAxisLocation = 'origin');
set(gca, YAxisLocation = 'origin');
ylab = ylabel("$$S$$", 'FontSize', 17, 'Position',[0 2.205], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(1.51, 1, "$$S_B(\beta = 1)$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
xlabel("$$ \pi_B $$", 'FontSize', 24, 'Position', [6.505 0], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

clear all;


%% Ay 4 naudon exc. 4) a) B segniorage beta gt 1
clear all
b= -2:0.001:10;
b = b';
f = 0.4 * 2^1.1*b.^(1 - 1.5);


close all
plot(b, f, 'Color', 'blue');
set(gca,'xticklabel',num2str(''),'yticklabel',num2str(''))
axis([-1 6.5 -0.5 2.2]);
hold on; 
set(gca, XAxisLocation = 'origin');
set(gca, YAxisLocation = 'origin');
ylab = ylabel("$$S$$", 'FontSize', 17, 'Position',[0 2.205], 'Interpreter', 'latex', 'Color', 'blue');
set(ylab,'rotation',0,'VerticalAlignment','bottom')
set(gca, 'Box', 'off');
set(gca, 'YColor', 'blue');
set(gca, 'XColor', 'blue');
text(0.45, 1.685, "$$S_B(\beta > 1)$$", 'FontSize', 17, 'Interpreter', 'latex', 'Color', 'blue');
xlabel("$$ \pi_B $$", 'FontSize', 24, 'Position', [6.505 0], 'Interpreter', 'latex', 'Color', 'blue');
hold off;

clear all;

