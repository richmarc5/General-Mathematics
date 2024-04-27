clear all
close all

z0=0;
c=0.1;
z0=0;
iters=0;
tic
creal=-1.5:0.001:-0.6;
cimag=-0.5:0.001:0.3;

    for jj=1:length(cimag)
        for ii=1:length(creal)
        while abs(z0)<50 && iters<1000

            zn=z0.^2+creal(ii)+1i*cimag(jj);
            z0=zn;
            iters=iters+1;

        end
       
      if(iters<2000)
            ImMatrix(jj,ii)=1;
        end
        if(iters<300)
            ImMatrix(jj,ii)=0.8;
        end
        if(iters<200)
            ImMatrix(jj,ii)=0.6;
        end
         if(iters<100)
            ImMatrix(jj,ii)=0.4;
         end
           if(iters<50)
            ImMatrix(jj,ii)=0.3;
         end
         if(iters<25)
            ImMatrix(jj,ii)=0.2;
         end
         if(iters<10)
            ImMatrix(jj,ii)=0.1;
         end
          if(iters<5)
            ImMatrix(jj,ii)=0;
        end
        iters=0;
        z0=0;
    end
end

toc
imagesc(ImMatrix)
colormap jet