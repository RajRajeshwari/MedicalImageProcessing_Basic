% load eye movement data & plot the data then generate and plot the
% ensemble the average
close all;
clear all;
load F:\medical_images\verg1; %get vergence eye movement data
Ts= 0.005; %samling interval= 5msec
[nu,N]= size(data_out); %get data length(N)
t= (1:N)*Ts; %generate time vector(t=NTs)
% plot ensemble data superimposed
plot(t,data_out,'K');
hold on;
% comstruct ad plot the ensemble average
avg= mean(data_out); %calculate ensemble average and
plot(t,avg-3,'K');%plot seperated from other data
xlabel('Time(sec)');%label axes
ylabel('Eye position');
plot([.43 .43], [0 5], '--K'); %plot vertical line for discussion
text(1,1.2,'Averaged Data'); % label data average