%% INITIALIZE

clearvars
close all
clc



%% SAMPLED SIGNAL


% 1) Generate time-domain signal x(t) sampled ad 
fs          =  % Sampling frequency in Hz
ts          =  % Sampling period

tini        =  % Initial time
tfin        =  % End time
Dur         =  % Duration in time
t           =  % Create time vector
L           =  % Number of samples or length of signal

Asignal     =  % Signal amplitude          
fsignal     =  % Signal frequency
psignal     =  % Signal phase
s           =  % Cosine signal

% 2) Add "white Gaussian" noise
n           = % Noise. Play with the multiplicative factor
x           = % Observed daya

% 3) Plot s(t), n(t), and x(t)



%% QUESTIONS ABOUT THE SAMPLED SIGNAL

% The sampling frequency is: 
% The sampling period is: 
% The signal duration is: 
% The number of samples is:  
% What is the sampling frequency?
% What is the sampling period?

% The signal amplitude is:
% The noise amplitude is:
% How is x(t) in comparison with s(t) and n(t)

% Provide a description of your signal
% Vpeakpos   = ;
% Vpeakneg   = ;
% Vpp        = ;
% Average    = ;
% Std        = ;

% 1) Provide a description of your signal based on all the time-domain
% information you have.
% Your answer:
% 
% 2) Do you notice the presence of any particular oscillatory activity?
% that is, the precence of any particular frequency?
% Your answer:
% 
% 3) Is there noise? (explain your answer)
% Your answer:
% 



%% FOURIER TRANSFORM OF THE SAMPLED SIGNAL

% 1) Compute FFT
Nfft  =                     % Number of points of the FFT: 2^nextpow2(L)

% FFT full period
X     =  % Compute FFT
k     =              % k=0,1,..,Nfft
w     =           % frequency from 0 to 2*pi
f     =                % frequency from 0 to 1
fHz   = f*fs;                   % frequency from 0 to fs

% % % FFT half period
% % X     =           
% % w     =    
% % f     = 
% % fHz   = 

% Compute FFT magnitude and phase
Xmag  =  % Magnitude
Xpha  =  % Phase


% 2) Plot signal in time-domain and frequency-domain
figure

% Plot x(t)
subplot(3,1,1)


% Plot FFT mag
subplot(3,1,2)

% Plot FFT phase
subplot(3,1,3)




%% QUESTIONS ABOUT THE FOURIER TRANSFORM OF THE SAMPLED SIGNAL

% 1) Provide extensive comments about the following aspects
% 
% Numer of points of the FFT:
% 
% 
% FFT period:
% 
% 
% A period of the FFT (2pi, 1, fs):
% 
% 
% Full period versus Half period:
% 
% 
% Half period of the FFT (pi, 0.5, fs/2):
% 
% 
% What is the Nyquist theorem: