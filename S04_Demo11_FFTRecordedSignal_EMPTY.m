%% INITIALIZE

clearvars
close all
clc



%% STEP 1: LOAD AND PLOT YOUR SIGNAL

% Load your signal
% x      =

% Sampling frequency (this is always known in advance¡¡)
% fs      =           % Hz
% ts      =           % s

% Length of the signal
% L       =           % samples

% Create time vector
% t       =  
% tini    =           % seconds
% tfin    =           % seconds

% Signal duration


% Compute the number of samples based on Sdur and fs


% Print information
% Sampling frequency: 
% Sampling period: 
% Signal duration: 
% Number of samples:  
% Number of samples: 

% Plot signal






% Description of your signal
% Vpeakpos   = ;
% Vpeakneg   = ;
% Vpp        = ;
% Average    = ;
% Std        = ;



%% STEP 1: QUESTIONS
% 
% 1) Provide a description of your signal based on all the time-domain
% information you have.
% Answer:
% 
% 2) Do you notice the presence of any particular oscillatory activity?
% that is, the precence of any particular frequency?
% Answer:
% 
% 3) Is there noise? (explain your answer)
% Answer:
% 



%% STEP 2: FREQUENCY ANALYSIS BASED ON THE FOURIER SPECTRUM

% Define the number of points for the FFT


% Compute FFT (full period)

                % frequency range from 0 to 2*pi
                % frequency range from 0 to 1
                % frequency range from 0 to fs

% Keep only half period

                % frequency range from 0 to pi
                % frequency range from 0 to 1/2
                % frequency range from 0 to fs/2

% Compute FFT magnitude and phase



% Plot Fourier spectrum














%% STEP 2: QUESTIONS
% 
% 1) Provide a description of your signal based on all the frequency-domain
% information you have.
% Answer:
% 
% 2) Do you notice the presence of any particular oscillatory activity?
% that is, the precence of any particular frequency peaks?
% Answer:
% 
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
% Answer:
% 

