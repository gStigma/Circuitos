% Codigo de circuito electrico y analisis de fourier

corrienteDirecta = 1/2;
corrienteAlterna = 0;
corrienteCapacitor = 0;
infinito = 10; % ya que no se puede detereminar un infinito se determinara una cantidad grande
n = 1;
w0 = 2*pi;
t = 1: 100;

for i = 1:infinito
w = n*w0;
CorrienteAlterna = corrienteAlterna + (1/(n*pi*sqrt(pow2(3.3*1000*w)+ pow2(10*1000))))* cos(n*w0*t - atan((-10*1000)/(3.3*1000*w)));
corrienteCapacitor =  corrienteDirecta + corrienteAlterna;
n++;
end
plot(t,corrienteCapacitor,'g--o');


