%Histogram Transformation
function Y = histtransform(X, h, v) 
counts=0;
[hn, hx] = hist(X(:), 0:1/255:1); %apo thn arxikh eikona eisodou
L=size(h);
L=L(1,2);
l=1;
 for i=0:255   %gia oles tis 256 stathmes fwteinothtas ths arxikhs eikonas
 [rows, cols] = find(X==double(i/255)); %vriskei tin thesi twn pixels me thn dedomeni fwteinothta 
 A=size(rows);
 A=A(1,1);
 
 counts=counts+hn(i+1); %plithos twn pixels sta opoia tha anatethei h stathmi v(l)
    for k=1:A
         Y(rows(k,1),cols(k,1))=v(l);  %anathesi tis fwteinothtas v(l)
    end

    if ((counts/65536)>=h(l) && l<L+1) %elegxos 
         l=l+1;
         counts=0; %midenismos tou plithous kathe fora pou allazei h fwteinothta pou anathetw
    end 
    
 end

end

