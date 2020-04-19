clf;
deltaF = 1;
fs=20;
N=2*(fs/deltaF);

n=0:N-1;
t=n/fs;
x=1*sin(2*pi*1* deltaF*t)+ 2*sin(2*pi*2*deltaF*t)+3*sin(2*pi*3*deltaF*t)+4*sin(2*pi*4*deltaF*t)+5*sin(2*pi*5*deltaF*t)+6*sin(2*pi*6*deltaF*t)+7*sin(2*pi*7*deltaF*t)+8*sin(2*pi*8*deltaF*t)+9*sin(2*pi*9*deltaF*t)+10*sin(2*pi*10*deltaF*t);
%+1*cos(2*pi*deltaF*t)+2*cos(2*pi*2*deltaF*t)+3*cos(2*pi*3*deltaF*t)+4*cos(2*pi*4*deltaF*t)+5*cos(2*pi*5*deltaF*t)+6*cos(2*pi*6*deltaF*t)+7*cos(2*pi*7*deltaF*t)+8*cos(2*pi*8*deltaF*t)+9*cos(2*pi*9*deltaF*t)+10*cos(2*pi*10*deltaF*t);
y=fft(x,N);
mag=abs(y);
f=n*fs/N;
subplot(2,1,1),plot(f(1:N/2),mag((1:N/2)) *2/N);
%subplot(2,2,1),plot(f,mag*2/N);
xlabel('Frequency/Hz');
ylabel('Amplitude');title('FFT');grid on;
subplot(2,1,2),plot(t,x);
xlabel('t/Hz');
ylabel('x');title('Orignal');grid on;