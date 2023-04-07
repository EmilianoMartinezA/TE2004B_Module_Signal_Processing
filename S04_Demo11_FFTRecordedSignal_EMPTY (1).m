%% INITIALIZE

clearvars
close all
clc



% STEP 1: LOAD AND PLOT YOUR SIGNAL

% Load your signal
fileID  = fopen('A01352482_fs2482Hz.txt');
x = fscanf(fileID,'%f');
x = importdata('A01352482_fs2482Hz.txt');
x = readmatrix('A01352482_fs2482Hz.txt');
% Sampling frequency (this is always known in advance¡¡)
fs      = 2482;          % Hz
ts      =  1/2482;         % s

% Length of the signal
L       = length(x);          % samples
% Create time vector
t       = linspace(0,(L-1)*ts,L);
tini    = min(t);          % seconds
tfin    = max(t);         % seconds


% Signal duration
Sdur = tfin -tini;

% Compute the number of samples based on Sdur and fs
L2 = Sdur*fs;

% Print information
fprintf('Sampling frequency:  %d Hz \n',fs)
fprintf('Sampling period:     %.4f s \n',ts)
fprintf('Signal duration:     %.4f s\n',Sdur)
fprintf('Number of samples:   %d \n',L)
fprintf('Number of samples:   %d \n',L2)
% Sampling frequency: fs
% Sampling period: ts
% Signal duration: Sdur
% Number of samples:  L
% Number of samples: L2

% Plot signal
figure
plot(t,x)
title('FFT Signal')
xlabel('Time')
ylabel('x(t)')

% Description of your signal
 Vpeakpos   = max(x);
 Vpeakneg   = min(x);
 Vpp        = Vpeakpos + Vpeakneg;
 Average    = mean(x);
 Std        = std(x);



% STEP 1: QUESTIONS
% 
% 1) Provide a description of your signal based on all the time-domain
% information you have.
% Answer:
% Bueno aqui podemos ver una señal con un sampling frecuency de 2482, en el
% que nos otorga una señal un tanto sinuodial en dominio del tiempo en base
% al maximo y minimo de las meustras de la señal
% 2) Do you notice the presence of any particular oscillatory activity?
% that is, the precence of any particular frequency?
% Answer:
% Claro, dentro de mi señal, cuenta con una paticularidad oscilatoria
% dentro de la frecuencia, donde apenas podemos notrala
% 3) Is there noise? (explain your answer)
% Answer: Si, se nota mucho ruido dentro de la señal principal, debido a
% que encontramos picos que se salen de la onda sinouidal que podemos
% apenas notar debido al ruido.
% 



% STEP 2: FREQUENCY ANALYSIS BASED ON THE FOURIER SPECTRUM

% Define the number of points for the FFT
Nfft  =   2 ^ nextpow2(L);
% Compute FFT (full period)
X     = fft(x,Nfft);
k     = 0:1:Nfft-1;
w     = (k/Nfft)*2*pi;                % frequency range from 0 to 2*pi
f     = (k/Nfft);                     % frequency range from 0 to 1
fHz   = f*fs;                         % frequency range from 0 to fs

% Keep only half period
X2     = X(1:Nfft/2);  
w2     = w(1:length(w)/2);                 % frequency range from 0 to pi
f2     = f(1:length(f)/2);                 % frequency range from 0 to 1/2
fHz2   = fHz(1:length(fHz)/2);             % frequency range from 0 to fs/2

% Compute FFT magnitude and phase
Xmag  = abs(X2);  % Magnitude
Xpha  = angle(X2); % Phase



% Plot Fourier spectrum
figure(2)
hold on
plot(w2,Xpha)
title('XPhase')
figure(3)
hold on
plot(w2,Xmag)
title('XMagnitude')












%% STEP 2: QUESTIONS
% 
% 1) Provide a description of your signal based on all the frequency-domain
% information you have.
% Answer: Bueno ya con el espectro de fourier, con la fase y la magnitud,
% que va de 0 a 2pi y para poder obtener una grafica más preciada en cuanto
% a los datos que obtenemo de todo el periodo de la frecuencia
% 
% 2) Do you notice the presence of any particular oscillatory activity?
% that is, the precence of any particular frequency peaks?
% Answer:
% Si, se logra apreciar en ambas graficas una ligera onda oscilatoria,
% mayormente ya que le aplicamos un filtro que se considera o podriamos
% considerar un pasa bajas, en donde se reduce el ruido y podemos apreciar
% mayormente una onda oscilatoria con respecto a la magnitud
% 3) Is there noise? (explain your answer)
% Answer:
% 
% 4) Based on the Fourier spectrum, extract a mathematical time-domain
% equation of your signal, e.g., infer an equation as:
% x(t) = A1*cos(2*pi*f1*t+p1) + A2*cos(2*pi*f2*t-p2)
% Hint: Your signal is made up of two cosine signals ¡¡
% Answer:
% 
% 5) Analysis: compare the amplitude and frequencies in your equation with
% your student ID number and "decode/infer" the values.
% Answer: 



%% STEP 3: CONCLUSIONS

% 1) What are the more important lessons you learned here? Provide detailed
% conclusions
% Answer: Pienso firmemente, que los filtros y el analisis de señales son
% importantes para ciertos campos de investigacion asi como para poderlos
% llevar a la practica, para ciertos casos en especifico, asi como
% igualmente podemos ver que al momento de comprenderlas y saber como
% construir una señal y trabajar con está misma, es algo relativamente
% sencillo de lograr
% 
