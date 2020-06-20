%zadanie2
t = 0:0.01:10;
y = abs(sin(t));
omega = 2;
z = 2/pi;
for n=1:100
	z=z+1/(1-4*n^2)*cos(n*omega*t);
endfor;

figure(1)
plot(t,y, t,z)


%widmo amplitudy
n = 100;

widmoamp = fft(z);
widmoamp = widmoamp(1:length(z)/2+1);
f = 0:n/length(z):n/2;


figure(2);
plot(f,abs(widmoamp));


%moc sygnałow harmoniczny
