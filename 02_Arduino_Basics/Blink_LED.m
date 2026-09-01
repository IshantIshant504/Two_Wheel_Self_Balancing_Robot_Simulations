clear;
arduinoblink =arduino("COM6","MKR1010");
while(1i<=10)
writeDigitalPin(arduinoblink,'D13',1);
writeDigitalPin(arduinoblink,'D14',0);
pause(1)
writeDigitalPin(arduinoblink,'D13',0);
writeDigitalPin(arduinoblink,'D14',0);
pause(1)
end


