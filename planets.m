function [handle] = planets(ma, mb, mc, xa, ya, xb, yb, xc, yc, nbr, pas)
%     clear; 
%     clc;
    cla;
    h=findobj('Type','axes','Tag','axes1');
    cla(h);
%     axes(h);
%     axes(handles.axes1);

%     figure;
    hold on;
    axis equal;
    grid on;
    
    n = nbr; % Maximum number of iterations
    dt = pas; % Time step [s]
    Dmin = 10;

    % Memory reservation for arrays:

    pAx = zeros (1, n);
    pAy = zeros (1, n);
    sAx = zeros (1, n);
    sAy = zeros (1, n);
    aAx = zeros (1, n);
    aAy = zeros (1, n);
    
    gravityX = zeros (1, n);
    gravityY = zeros (1, n);
    
    pBx = zeros (1, n);
    pBy = zeros (1, n);
    sBx = zeros (1, n);
    sBy = zeros (1, n);
    aBx = zeros (1, n);
    aBy = zeros (1, n);
    
    pCx = zeros (1, n);
    pCy = zeros (1, n);
    sCx = zeros (1, n);
    sCy = zeros (1, n);
    aCx = zeros (1, n);
    aCy = zeros (1, n);
    
   

    % Initial conditions:
    pAx(1) = xa;
    pAy(1) = ya;
    mA = ma; 
    sAx = 0;
    sAy = 0;
    
    pBx(1) = xb;
    pBy(1) = yb;
    mB = mb; 
    sBx = 0;
    sBy = 0;
    
    pCx(1) = xc;
    pCy(1) = yc;
    mC = mc; 
    sCx = 0;
    sCy = 0;
    
    G = 6.67384 * 10^-11; % Gravitatinal constant 
    i = 2;  % counter of the iterations
    
    gravityX(1) = (pAx(1) + pBx(1) + pCx(1)) / 3;
    gravityY(1) = (pAy(1) + pBy(1) + pCy(1)) / 3;
 
    while (i <= n)
        disp(['loop nr ',num2str(i)])
            
        dAB = sqrt( (pBx(i-1) - pAx(i-1))^2 + (pBy(i-1) - pAy(i-1))^2); % Distance between planet A and B 
        if dAB < 50
            dAB = 50;
        end
        GAB = G * mA * mB / (dAB^2);  % attraction of planet B on planet A
        cosAlpha = (pBx(i-1) - pAx(i-1)) / dAB;
        sinAlpha = (pBy(i-1) - pAy(i-1)) / dAB;
        GABx = cosAlpha * GAB;
        GABy = sinAlpha * GAB;
        
        
        dAC = sqrt( (pCx(i-1) - pAx(i-1))^2 + (pCy(i-1) - pAy(i-1))^2); % Distance between planet A and C 
        if dAC < 50
            dAC = 50;
        end
        GAC = G * mA * mC / (dAC^2);  % attraction of planet C on planet A
        cosAlpha = (pCx(i-1) - pAx(i-1)) / dAC;
        sinAlpha = (pCy(i-1) - pAy(i-1)) / dAC;
        GACx = cosAlpha * GAC;
        GACy = sinAlpha * GAC;
        
        GAx = GABx + GACx;
        GAy = GABy + GACy;
        
        aAx(i) = GAx / mA;
        aAy(i) = GAy / mA;
        
        sAx(i) = sAx(i-1) + aAx(i) * dt;
        sAy(i) = sAy(i-1) + aAy(i) * dt;

        
        pAx(i) = pAx(i-1) +sAx(i) * dt;
        pAy(i) = pAy(i-1) +sAy(i) * dt;
%-------------------------------------------------------------

        dBA = sqrt( (pAx(i-1) - pBx(i-1))^2 + (pAy(i-1) - pBy(i-1))^2); % AistBnce Aetween plBnet B BnA A 
        if dBA < 50
            dBA = 50;
        end
        GBA = G * mB * mA / (dBA^2);  % BttrBction of plBnet A on plBnet B
        cosAlpha = (pAx(i-1) - pBx(i-1)) / dBA;
        sinBlphB = (pAy(i-1) - pBy(i-1)) / dBA;
        GBAx = cosAlpha * GBA;
        GBAy = sinBlphB * GBA;
        
        
        dBC = sqrt( (pCx(i-1) - pBx(i-1))^2 + (pCy(i-1) - pBy(i-1))^2); % AistBnce Aetween plBnet B BnA C 
        if dBC < 50
            dBC = 50;
        end
        GBC = G * mB * mC / (dBC^2);  % BttrBction of plBnet C on plBnet B
        cosAlpha = (pCx(i-1) - pBx(i-1)) / dBC;
        sinBlphB = (pCy(i-1) - pBy(i-1)) / dBC;
        GBCx = cosAlpha * GBC;
        GBCy = sinBlphB * GBC;
        
        GBx = GBAx + GBCx;
        GBy = GBAy + GBCy;
        
        BBx(i) = GBx / mB;
        BBy(i) = GBy / mB;
        
        sBx(i) = sBx(i-1) + BBx(i) * dt;
        sBy(i) = sBy(i-1) + BBy(i) * dt;

        
        pBx(i) = pBx(i-1) +sBx(i) * dt;
        pBy(i) = pBy(i-1) +sBy(i) * dt;

%--------------------------------------------------------------

        dCB = sqrt( (pBx(i-1) - pCx(i-1))^2 + (pBy(i-1) - pCy(i-1))^2); % DistCnBe between plCnet C Cnd B 
        if dCB < 50
            dCB = 50;
        end
        GCB = G * mC * mB / (dCB^2);  % CttrCBtion of plCnet B on plCnet C
        cosAlpha = (pBx(i-1) - pCx(i-1)) / dCB;
        sinAlpha = (pBy(i-1) - pCy(i-1)) / dCB;
        GCBx = cosAlpha * GCB;
        GCBy = sinAlpha * GCB;
        
        
        dCA = sqrt( (pAx(i-1) - pCx(i-1))^2 + (pAy(i-1) - pCy(i-1))^2); % DistCnBe between plCnet C Cnd B 
        if dCA < 50
            dCA = 50;
        end
        GCA = G * mC * mA / (dCA^2);  % CttrCBtion of plCnet B on plCnet C
        cosAlpha = (pAx(i-1) - pCx(i-1)) / dCA;
        sinAlpha = (pAy(i-1) - pCy(i-1)) / dCA;
        GCAx = cosAlpha * GCA;
        GCAy = sinAlpha * GCA;
        
        GCx = GCAx + GCBx;
        GCy = GCAy + GCBy;
        
        aCx(i) = GCx / mC;
        aCy(i) = GCy / mC;
        
        sCx(i) = sCx(i-1) + aCx(i) * dt;
        sCy(i) = sCy(i-1) + aCy(i) * dt;

        
        pCx(i) = pCx(i-1) +sCx(i) * dt;
        pCy(i) = pCy(i-1) +sCy(i) * dt;

%--------------------------------------------------------------


        handle = plot(pAx(1:i) ,pAy(1:i), 'd', pBx(1:i), pBy(1:i), 'd', pCx(1:i) ,pCy(1:i), 'd');
        drawnow;
        
%         plot(pAx(1:i), pAy(1:i), 'r');
%         drawnow;
        
        gravityX(i) = (pAx(i) + pBx(i) + pCx(i)) / 3;
        gravityY(i) = (pAy(i) + pBy(i) + pCy(i)) / 3;
        
        i = i + 1;
    end
end

    
    
        

      