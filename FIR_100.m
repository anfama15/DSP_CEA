function Hd = FIR_100
%FIR_100 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the Signal Processing Toolbox 7.2.
% Generated on: 05-Jul-2022 00:44:00

% FIR Window Bandpass filter designed using the FIR1 function.

% All frequency values are in kHz.
Fs = 121;  % Sampling Frequency

N    = 100;        % Order
Fc1  = 30;         % First Cutoff Frequency
Fc2  = 60;         % Second Cutoff Frequency
flag = 'noscale';  % Sampling Flag
% Create the window vector for the design algorithm.
win = barthannwin(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
Hd = dfilt.dffir(b);

% [EOF]
