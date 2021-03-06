%% Demonstration Code for 1D FFT Questions
% Question 1 of Task 2

clear
close all

%% set up pre-defined variables

N = 257; % size of array (odd number to define centre point)
preshift = 50; % ?? optional pre-shift of image space (also minus post-shift)
x = linspace(-0.5, 0.5, N); % coordinates of image space
kx = linspace(-pi, pi, N); % coordinates of k space

%% define object
object = double (abs(x) < 0.10); % bigger object
% object = double (abs(x) < 0.025); % smaller object
% object = double (abs(x) < eps ); % single pixel object
shiftedobject = circshift(object,[0,preshift]);

%% transform to k-space or frequency domain
freqdomain = fftshift(fft(shiftedobject));
% freqdomain = circshift(fft(object),[0, ??? ]);
% show real and imaginary parts of k-space
plot(kx,real(freqdomain),kx,imag(freqdomain))  % THis fpurier fransform bit 
title( 'real and imaginry freq domain')
xlabel('Kx')

%% optional shift in k-space
% freqdomain = circshift(freqdomain,[0,0]);

%% design filter functions

kfilter = double (abs(kx) < 0.3); % top-hat function
% kfilter = exp(-x.*x/0.02); % Gaussian

%% apply filter and return to image space
filteredImage = ifft(ifftshift(freqdomain.*kfilter));
% filt = ifft(circshift(freqdomain.*kfilter,[0, ??? ]));
filteredImage = circshift(filteredImage,[0,-preshift]);
figure
plot(x,object,x,real(filteredImage),x,imag(filteredImage))
legend('object', 'real filtered', 'imaginary filtered')

%% show magnitude and phase of filtered image
figure
plot(x,abs(filteredImage),x,angle(filteredImage))
title('modulous and phase') 
legend('Modulus', 'phase')