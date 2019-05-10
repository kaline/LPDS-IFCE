  //[wft,wfm,fr]=wfir(ftype,forder,cfreq,wtype,fpar)
//Arguments
//ftype string : 'lp','hp','bp','sb' (filter type)
//forder
//Filter order (pos integer)(odd for ftype='hp' or 'sb')
//cfreq
//2-vector of cutoff frequencies (0<cfreq(1),cfreq(2)<.5) only cfreq(1) is used when ftype='lp' or 'hp'
//wtype
//Window type ('re','tr','hm','hn','kr','ch')
//fpar
//2-vector of window parameters. Kaiser window fpar(1)>0 fpar(2)=0. Chebyshev window fpar(1)>0, fpar(2)<0 or fpar(1)<0, 0<fpar(2)<.5
//wft
//time domain filter coefficients
//wfm
//frequency domain filter response on the grid fr
//fr
//Frequency grid
//
close; close;
ft='lp';
fc = 0.17;
fa = 0.24;
atm = 0.05;
tw = 'hm';

fpar = [];
p=1;
wg1 = [0, fc fc];
g1 = [1 1 0.001]/sqrt(2);
wg2 = [0, fa fa 0.5];
g2 = [1 1 atm atm];
for N=10:5:25
    fc1 = fc + 0.462/N;
    [wft,wfm,fr]=wfir(ft,N,[fc1 atm],tw,fpar);
    subplot(2,2,p); plot(fr,wfm); plot(wg1,g1,wg2,g2);
    p=p+1;
end

ganhosm = 1;
Nf = 12;
while ganhosm > atm
Nf = Nf + 1;
fc1 = fc + 0.462/Nf;
[wft,wfm,fr]=wfir('lp',Nf,[fc1 atm],tw,fpar);
xx = find(fr>fa-0.01);
ganhos = wfm(xx);
ganhosm = max(ganhos);
if Nf > 120 then ganhosm = 0; end;
end;
gmax = max(wfm); wfm = wfm/gmax;
figure; plot(fr,wfm); plot(wg1,g1,wg2,g2);
title(string(Nf));
