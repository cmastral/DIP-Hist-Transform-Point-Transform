function h = pdf2hist(d,f)
M=size(d);
M=M(1,2);
for i=1:1:M-1         %gia ola ta diasthmata pou dhmiourgountai apo to d
   h(i)=integral(f,d(i),d(i+1));  %oloklhrwsh ths f apo d(i) ews d(i+1)
end  
h=h./sum(h); %kanonikopoihsh
end

