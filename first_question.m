data_23=csvread("glucose-data.csv",1,5,[1,5,70,5]);
data_3=csvread("glucose-data.csv",1,5,[583,5,644,5]);
data_25=csvread("glucose-data.csv",1,5,[676,5,725,5]);
data_4=csvread("glucose-data.csv",1,5,[1176,5,1254,5]);
data_25=data_25(1:length(data_25),6);
data_3=data_3(1:length(data_3),6);
data_4=data_4(1:length(data_4),6);

fs=0.067; %Sampling frequency, that is, 1 Sample every 15 minutes
fc=0.014; %Chosen after analyzing the fft plot  
N = length(data_23);
f = fs*(0:(N/2))/N;
Y = fft(data_23);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%Plotting frequency Spectrum
figure;
plot(f, P1);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency spectrum of blood sugar data of 23 Feb/2021');

order = 2; % Filter order

% Design low pass filter
[b, a] = butter(order, fc/(fs/2), 'low');

% Apply filter to blood sugar data
filtered_data = filtfilt(b, a, data_23);
time=linspace(3,20,length(data_23));
[peaks1,locs1] = findpeaks(filtered_data,time);
figure;
plot(time, data_23);
hold on;
plot(time, filtered_data, 'r', 'LineWidth', 2);
title(sprintf('Low-pass filtered blood sugar data of 23 Feb/2021'));
figure;
plot(time, filtered_data,'b',locs1,peaks1,'r*');
xlabel('Time');
ylabel('Blood sugar level');
legend('Original data', 'Filtered data');
title(sprintf('filtered blood sugar data of 23 Feb/2021 with Peaks'));


N = length(data_3);
f = fs*(0:(N/2))/N;
Y = fft(data_3);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%Plotting frequency Spectrum
figure;
plot(f, P1);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency spectrum of blood sugar data of 3 march/2021');
% Design low pass filter
[b, a] = butter(order, fc/(fs/2), 'low');
% Apply filter to blood sugar data
filtered_data = filtfilt(b, a, data_3);
%Plot of signal data
time=linspace(0,10,length(data_3));
[peaks2,locs2] = findpeaks(filtered_data,time);
figure;
plot(time, data_3);
hold on;
plot(time, filtered_data, 'r', 'LineWidth', 2);
title(sprintf('Low-pass filtered blood sugar data of 3 march/2021'));
figure;
plot(time, filtered_data,'b',locs2,peaks2,'r*');
xlabel('Time');
ylabel('Blood sugar level');
legend('Original data', 'Filtered data');
title(sprintf('filtered blood sugar data of 3 march/2021 with Peaks'));


N = length(data_4);
f = fs*(0:(N/2))/N;
Y = fft(data_4);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%Plotting frequency Spectrum
figure;
plot(f, P1);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency spectrum of blood sugar data of 3 march/2022');
% Design low pass filter
[b, a] = butter(order, fc/(fs/2), 'low');
% Apply filter to blood sugar data
filtered_data = filtfilt(b, a, data_4);
%Plot of signal data
time=linspace(0,10,length(data_4));
[peaks2,locs2] = findpeaks(filtered_data,time);
figure;
plot(time, data_4);
hold on;
plot(time, filtered_data, 'r', 'LineWidth', 2);
title(sprintf('Low-pass filtered blood sugar data of 3 march/2022'));
figure;
plot(time, filtered_data,'b',locs2,peaks2,'r*');
xlabel('Time');
ylabel('Blood sugar level');
legend('Original data', 'Filtered data');
title(sprintf('filtered blood sugar data of 3 march/2022 with Peaks'));


N = length(data_25);
f = fs*(0:(N/2))/N;
Y = fft(data_25);
P2 = abs(Y/N);
P1 = P2(1:N/2+1);
P1(2:end-1) = 2*P1(2:end-1);

%Plotting frequency Spectrum
figure;
plot(f, P1);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency spectrum of blood sugar data of 23 Feb/2022');

% Design low pass filter
[b, a] = butter(order, fc/(fs/2), 'low');

% Apply filter to blood sugar data
filtered_data = filtfilt(b, a, data_25);
%Plot of signal data

time=linspace(0,21,length(data_25));
[peaks3,locs3] = findpeaks(filtered_data,time);
figure;
plot(time, data_25);
hold on;
plot(time, filtered_data, 'r', 'LineWidth', 2);
title(sprintf('Low-pass filtered blood sugar data of 23 Feb/2022'));
figure;
plot(time, filtered_data,'b',locs3,peaks3,'r*');
xlabel('Time');
ylabel('Blood sugar level');
legend('Original data', 'Filtered data');
title(sprintf('filtered blood sugar data of 23 Feb/2022 with Peaks'));
