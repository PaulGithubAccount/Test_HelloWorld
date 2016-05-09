%% Lab 9 Practice1
clear all; close all;
a=3
b=3
% clear all; close all;
% %% Generate signal
% data_length=5;
% data=[1 -1 1 -1 1];
% 
% %% Up sample 1
% Up_M1=16;
% Up1=zeros(1,Up_M1*data_length);
% Up1(1:Up_M1:end)=data;
% h_SRRC=SRRC(0.5,Up_M1,3);
% Digital_Up=conv(h_SRRC,Up1);
% figure();
% stem(Digital_Up);
% 
% %% Up sample 2
% Up_M2=2;
% Up2=zeros(1,Up_M2*length(Digital_Up));
% Up2(1:Up_M2:end)=Digital_Up;
% Up2=conv(Up2,ones(1,Up_M2));
% Analog_Up=filter(IIR,Up2);
% figure();
% stem(Analog_Up);
% 
% %% Up conversion
% f_dc=1/4;
% transmit=real(Analog_Up.*exp(j*2*pi*f_dc.*[1:length(Analog_Up)]));
% 
% %% Down conversion
% receive=transmit.*exp(-j*2*pi*f_dc.*[1:length(Analog_Up)]);
% 
% %% DMA filter
% % receive=[receive zeros(1,100)];
% Down=filter(IIR2,receive);
% Down=Down/max(Down);
% Down=real(Down);
% figure();
% stem(real(Down));
% 
% %% 
% groupdelay1=grpdelay(IIR);
% groupdelay2=grpdelay(IIR2);
% delay=mean(groupdelay1(1:length(groupdelay1)/2))+mean(groupdelay2(1:length(groupdelay2)/2))+length(h_SRRC)/2;
% delay=floor(delay+3);
% Recover=Down(2*delay:Up_M1*Up_M2:end-delay-10);
% figure();
% hold on;
% stem(data,'g');
% stem(Recover,'r');