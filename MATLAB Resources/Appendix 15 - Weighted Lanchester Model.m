clear all; 
close all; 
clc;

ManpowerBsurviving = xlsread('Table7ManpowerWeightings.xlsx', 'D6:D15');
ManpowerBREINF = xlsread('Table7ManpowerWeightings.xlsx', 'E6:E15');
ManpowerBLreserves = xlsread('Table7ManpowerWeightings.xlsx', 'F6:F15');
ManpowerBreserves = xlsread('Table7ManpowerWeightings.xlsx', 'G6:G15');

TankBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D6:D15');
TankBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E6:E15');
TankBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F6:F15');
TankBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G6:G15');

APCBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D48:D57');
APCBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E48:E57');
APCBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F48:F57');
APCBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G48:G57');

ArtBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D90:D99');
ArtBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E90:E99');
ArtBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F90:F99');
ArtBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G90:G99');

SortiesB = xlsread('Table6Combat&TotalForces.xlsx', 'G6:G15');

Manpowerb = xlsread('Table6Combat&TotalForces.xlsx', 'B90:B99');
Tankb = xlsread('Table6Combat&TotalForces.xlsx', 'D90:D99');
APCb = xlsread('Table6Combat&TotalForces.xlsx', 'E90:E99');
Artb = xlsread('Table6Combat&TotalForces.xlsx', 'F90:F99');


ManpowerRsurviving = xlsread('Table7ManpowerWeightings.xlsx', 'M6:M15');
ManpowerRREINF = xlsread('Table7ManpowerWeightings.xlsx', 'N6:N15');
ManpowerRLreserves = xlsread('Table7ManpowerWeightings.xlsx', 'O6:O15');
ManpowerRreserves = xlsread('Table7ManpowerWeightings.xlsx', 'P6:P15');

TankRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M6:M15');
TankRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N6:N15');
TankRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O6:O15');
TankRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P6:P15');

APCRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M48:M57');
APCRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N48:N57');
APCRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O48:O57');
APCRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P48:P57');

ArtRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M90:M99');
ArtRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N90:N99');
ArtRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O90:O99');
ArtRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P90:P99');

SortiesR = xlsread('Table6Combat&TotalForces.xlsx', 'P6:P15');

Manpowerr = xlsread('Table6Combat&TotalForces.xlsx', 'K90:K99');
Tankr = xlsread('Table6Combat&TotalForces.xlsx', 'M90:M99');
APCr = xlsread('Table6Combat&TotalForces.xlsx', 'N90:N99');
Artr = xlsread('Table6Combat&TotalForces.xlsx', 'O90:O99');


Manpowersurvivingweighting = 1;
ManpowerREINFweighting = [1:0.4:3];
ManpowerLreservesweighting = [0:0.3:0.9];
Manpowerreservesweighting = 0;
ManpowerWeighting = 1;

Tanksurvivingweighting = 1;
TankREINFweighting = [1:0.4:3];
TankLreservesweighting = [0:0.3:0.9];;
Tankreservesweighting = 0;
TankWeighting = 20;

APCsurvivingweighting = 1;
APCREINFweighting = [1:0.4:3];
APCLreservesweighting = [0:0.3:0.9];
APCreservesweighting = 0;
APCWeighting = 5;

Artsurvivingweighting = 1;
ArtREINFweighting = [1:0.4:3];
ArtLreservesweighting = [0:0.3:0.9];
Artreservesweighting = 0;
ArtWeighting = 40;

SortiesWeighting = 30;

for i = 1: numel(ManpowerBsurviving)
    for mprw = 1: numel(ManpowerREINFweighting)
        for mplrw = 1: numel(ManpowerLreservesweighting)
            for mpresw = 1:numel(Manpowerreservesweighting)
                for trw = 1:numel(TankREINFweighting)
                    for tlrw = 1:numel(TankLreservesweighting)
                        for tresw = 1:numel(Tankreservesweighting)
                            for tw = 1:numel(TankWeighting)
                                for apcrw = 1:numel(APCREINFweighting)
                                    for apclrw = 1:numel(APCLreservesweighting)
                                        for apcresw = 1:numel(APCreservesweighting)
                                            for apcw = 1:numel(APCWeighting)
                                                for artrw = 1:numel(ArtREINFweighting)
                                                    for artlrw = 1:numel(ArtLreservesweighting)
                                                        for artresw = 1:numel(Artreservesweighting)
                                                            for artw = 1:numel(ArtWeighting)
                                                                for asw = 1:numel(SortiesWeighting)
                                                                    Bmatrix(mprw,mplrw,mpresw,trw,tlrw,tresw,tw,apcrw,apclrw,apcresw,apcw,artrw,artlrw,artresw,artw,asw,i) = (((ManpowerBsurviving(i)*Manpowersurvivingweighting)+(ManpowerBREINF(i)*ManpowerREINFweighting(mprw))+(ManpowerBLreserves(i)*ManpowerLreservesweighting(mplrw))+(ManpowerBreserves(i)*Manpowerreservesweighting(mpresw)))*ManpowerWeighting)+(((TankBsurviving(i)*Tanksurvivingweighting)+(TankBREINF(i)*TankREINFweighting(trw))+(TankBLreserves(i)*TankLreservesweighting(tlrw))+(TankBreserves(i)*Tankreservesweighting(tresw)))*TankWeighting(tw))+(((APCBsurviving(i)*APCsurvivingweighting)+(APCBREINF(i)*APCREINFweighting(apcrw))+(APCBLreserves(i)*APCLreservesweighting(apclrw))+(APCBreserves(i)*APCreservesweighting(apcresw)))*APCWeighting(apcw))+(((ArtBsurviving(i)*Artsurvivingweighting)+(ArtBREINF(i)*ArtREINFweighting(artrw))+(ArtBLreserves(i)*ArtLreservesweighting(artlrw))+(ArtBreserves(i)*Artreservesweighting(artresw)))*ArtWeighting(artw))+(SortiesB(i)*SortiesWeighting(asw));
                                                                    Rmatrix(mprw,mplrw,mpresw,trw,tlrw,tresw,tw,apcrw,apclrw,apcresw,apcw,artrw,artlrw,artresw,artw,asw,i) = (((ManpowerRsurviving(i)*Manpowersurvivingweighting)+(ManpowerRREINF(i)*ManpowerREINFweighting(mprw))+(ManpowerRLreserves(i)*ManpowerLreservesweighting(mplrw))+(ManpowerRreserves(i)*Manpowerreservesweighting(mpresw)))*ManpowerWeighting)+(((TankRsurviving(i)*Tanksurvivingweighting)+(TankRREINF(i)*TankREINFweighting(trw))+(TankRLreserves(i)*TankLreservesweighting(tlrw))+(TankRreserves(i)*Tankreservesweighting(tresw)))*TankWeighting(tw))+(((APCRsurviving(i)*APCsurvivingweighting)+(APCRREINF(i)*APCREINFweighting(apcrw))+(APCRLreserves(i)*APCLreservesweighting(apclrw))+(APCRreserves(i)*APCreservesweighting(apcresw)))*APCWeighting(apcw))+(((ArtRsurviving(i)*Artsurvivingweighting)+(ArtRREINF(i)*ArtREINFweighting(artrw))+(ArtRLreserves(i)*ArtLreservesweighting(artlrw))+(ArtRreserves(i)*Artreservesweighting(artresw)))*ArtWeighting(artw))+(SortiesR(i)*SortiesWeighting(asw));
                                                                    bmatrix(mprw,mplrw,mpresw,trw,tlrw,tresw,tw,apcrw,apclrw,apcresw,apcw,artrw,artlrw,artresw,artw,asw,i) = ((Manpowerb(i)*Manpowersurvivingweighting)*ManpowerWeighting)+((Tankb(i)*Tanksurvivingweighting)*TankWeighting(tw))+((APCb(i)*APCsurvivingweighting)*APCWeighting(apcw))+((Artb(i)*Artsurvivingweighting)*ArtWeighting(artw));
                                                                    rmatrix(mprw,mplrw,mpresw,trw,tlrw,tresw,tw,apcrw,apclrw,apcresw,apcw,artrw,artlrw,artresw,artw,asw,i) = ((Manpowerr(i)*Manpowersurvivingweighting)*ManpowerWeighting)+((Tankr(i)*Tanksurvivingweighting)*TankWeighting(tw))+((APCr(i)*APCsurvivingweighting)*APCWeighting(apcw))+((Artr(i)*Artsurvivingweighting)*ArtWeighting(artw));
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

for MPRW = 1:mprw
    for MPLRW = 1:mplrw
        for MPRESW = 1:mpresw
            for TRW = 1:trw
                for TLRW = 1:tlrw
                    for TRESW = 1:tresw
                        for TW = 1:tw
                            for APCRW = 1:apcrw
                                for APCLRW = 1:apclrw
                                    for APCRESW = 1:apcresw
                                        for APCW = 1:apcw
                                            for ARTRW = 1:artrw
                                                for ARTLRW = 1:artlrw
                                                    for ARTRESW = 1:artresw
                                                        for ARTW = 1:artw
                                                            for ASW = 1:asw
                                                                for I = 1:i
                                                                    LinearIndexing(I,ASW,ARTW,ARTRESW,ARTLRW,ARTRW,APCW,APCRESW,APCLRW,APCRW,TW,TRESW,TLRW,TRW,MPRESW,MPLRW,MPRW) = sub2ind(size(Bmatrix),MPRW,MPLRW,MPRESW,TRW,TLRW,TRESW,TW,APCRW,APCLRW,APCRESW,APCW,ARTRW,ARTLRW,ARTRESW,ARTW,ASW,I);
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

Bmatrixsorted = Bmatrix(LinearIndexing);
Rmatrixsorted = Rmatrix(LinearIndexing);
bmatrixsorted = bmatrix(LinearIndexing);
rmatrixsorted = rmatrix(LinearIndexing);

Bmatrix2D = reshape(Bmatrixsorted,i,mprw*mplrw*mpresw*trw*tlrw*tresw*tw*apcrw*apclrw*apcresw*apcw*artrw*artlrw*artresw*artw*asw);
Rmatrix2D = reshape(Rmatrixsorted,i,mprw*mplrw*mpresw*trw*tlrw*tresw*tw*apcrw*apclrw*apcresw*apcw*artrw*artlrw*artresw*artw*asw);
bmatrix2D = reshape(bmatrixsorted,i,mprw*mplrw*mpresw*trw*tlrw*tresw*tw*apcrw*apclrw*apcresw*apcw*artrw*artlrw*artresw*artw*asw);
rmatrix2D = reshape(rmatrixsorted,i,mprw*mplrw*mpresw*trw*tlrw*tresw*tw*apcrw*apclrw*apcresw*apcw*artrw*artlrw*artresw*artw*asw);

v = 0;

for m = 1:(mprw*mplrw*mpresw*trw*tlrw*tresw*tw*apcrw*apclrw*apcresw*apcw*artrw*artlrw*artresw*artw*asw)
    B = Bmatrix2D(:,m);
    R = Rmatrix2D(:,m);
    b = bmatrix2D(:,m);
    r = rmatrix2D(:,m);
    
        for t = 1:i
            x(t) = (R(t)/B(t));
            y(t) = (b(t)/r(t));
            logx(t) = log(x(t));
            logy(t) = log(y(t));
        end
        
        polycoefficients = polyfit(logx,logy,1);
        linearbestfit = polycoefficients(1)*logx+polycoefficients(2);
        residuals = (logy - linearbestfit)';
        variance(m) = 1-(sum(residuals.^2)/sum((logy-mean(logy)).^2));
        
        if variance(m) > v
        v = variance(m);
        M = m;
        end
end

myB = Bmatrix2D(:,M);
myR = Rmatrix2D(:,M);
myb = bmatrix2D(:,M);
myr = rmatrix2D(:,M);

for t = 1:i
    x(t) = (myR(t)/myB(t));
    y(t) = (myb(t)/myr(t));
    logx(t) = log(x(t));
    logy(t) = log(y(t));
    
    X(t) = (myB(t)*myR(t));
    Y(t) = (myb(t)*myr(t));
    logX(t) = log(X(t));
    logY(t) = log(Y(t));
end

scatter(logx,logy);
polycoefficients = polyfit(logx,logy,1);
linearbestfit = polycoefficients(1)*logx+polycoefficients(2);
residuals = (logy - linearbestfit)';
hold on;
plot(logx,linearbestfit);

beta = polycoefficients(1);
alpha = exp(polycoefficients(2));
myVariance = v;

polycoefficients2 = polyfit(logX,logY,1);
delta = polycoefficients2(1);
gamma = exp(polycoefficients2(2));

p = (delta+beta)/2;
q = (delta-beta)/2;
a = sqrt(alpha*gamma);
bee = sqrt(gamma/alpha);


ManpowerREINFweighting = ManpowerREINFweighting(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw*trw*mpresw*mplrw)));

if mplrw == 0
    ManpowerLreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw*trw*mpresw)))),mplrw) == 0
        ManpowerLreservesweighting = ManpowerLreservesweighting(mplrw);
    else
        ManpowerLreservesweighting = ManpowerLreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw*trw*mpresw)),mplrw));
    end
end

if mpresw == 0
    Manpowerreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw*trw)))),mpresw) == 0
        Manpowerreservesweighting = Manpowerreservesweighting(mpresw);
    else
        Manpowerreservesweighting = Manpowerreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw*trw)),mpresw));
    end
end

if trw == 0
    TankREINFweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw)))),trw) == 0
        TankREINFweighting = TankREINFweighting(trw);
    else
        TankREINFweighting = TankREINFweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw*tlrw)),trw));
    end
end

if tlrw == 0
    TankLreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw)))),tlrw) == 0
        TankLreservesweighting = TankLreservesweighting(tlrw);
    else
        TankLreservesweighting = TankLreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw*tresw)),tlrw));
    end
end

if tresw == 0
    Tankreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw)))),tresw) == 0
        Tankreservesweighting = Tankreservesweighting(tresw);
    else
        Tankreservesweighting = Tankreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw*tw)),tresw));
    end
end

if tw == 0
    TankWeighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw)))),tw) == 0
        TankWeighting = TankWeighting(tw);
    else
        TankWeighting = TankWeighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw*apcrw)),tw));
    end
end

if apcrw == 0
    APCREINFweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw)))),apcrw) == 0
        APCREINFweighting = APCREINFweighting(apcrw);
    else
        APCREINFweighting = APCREINFweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw*apclrw)),apcrw));
    end
end

if apclrw == 0
    APCLreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw)))),apclrw) == 0
        APCLreservesweighting = APCLreservesweighting(apclrw);
    else
        APCLreservesweighting = APCLreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw*apcresw)),apclrw));
    end
end

if apcresw == 0
    APCreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw*apcw)))),apcresw) == 0
        APCreservesweighting = APCreservesweighting(apcresw);
    else
        APCreservesweighting = APCreservesweighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw*apcw)),apcresw));
    end
end

if apcw == 0
    APCWeighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw*artrw)))),apcw) == 0
        APCWeighting = APCWeighting(apcw);
    else
        APCWeighting = APCWeighting(mod(ceil(M/(asw*artw*artresw*artlrw*artrw)),apcw));
    end
end

if artrw == 0
    ArtREINFweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw*artlrw)))),artrw) == 0
        ArtREINFweighting = ArtREINFweighting(artrw);
    else
        ArtREINFweighting = ArtREINFweighting(mod(ceil(M/(asw*artw*artresw*artlrw)),artrw));
    end
end

if artlrw == 0
    ArtLreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw*artresw)))),artlrw) == 0
        ArtLreservesweighting = ArtLreservesweighting(artlrw);
    else
        ArtLreservesweighting = ArtLreservesweighting(mod(ceil(M/(asw*artw*artresw)),artlrw));
    end
end

if artresw == 0
    Artreservesweighting = 0;
else
    if mod((ceil((M/(asw*artw)))),artresw) == 0
        Artreservesweighting = Artreservesweighting(artresw);
    else
        Artreservesweighting = Artreservesweighting(mod(ceil(M/(asw*artw)),artresw));
    end
end

if artw == 0
    ArtWeighting = 0;
else
    if mod(ceil(M/asw),artw) == 0
        ArtWeighting = ArtWeighting(artw);
    else
        ArtWeighting = ArtWeighting(mod(ceil(M/asw),artw));
    end
end

if asw == 0
    SortiesWeighting = 0;
else
    if mod(M,asw) == 0
        SortiesWeighting = SortiesWeighting(asw);
    else 
        SortiesWeighting = SortiesWeighting(mod(M,asw));
    end
end


parameters =  ["alpha", "beta", "delta", "gamma", "p", "q", "a", "b"]';
parametervalues = [alpha, beta, delta, gamma, p, q, a, bee]';
parametersoutput = [cellstr(parameters), num2cell(parametervalues)]

weightings = ["surviving manpower weighting", "manpower reinforcements weighting", "manpower local reserves weighting", "manpower reserves weighting", "manpower weighting", "surviving tank weighting", "tank reinforcements weighting", "tank local reserves weighting", "tank reserves weighting", "tank weighting", "surviving APC weighting", "APC reinforcements weighting", "APC local reserves weighting", "APC reserves weighting", "APC weighting", "surviving artillery weighting", "arterilly reinforcements weighting", "artillery local reserves weighting", "artillery reserves weighting", "artillery weighting", "air sorties weighting", "Variance"]';
weightingvalues = [Manpowersurvivingweighting, ManpowerREINFweighting, ManpowerLreservesweighting, Manpowerreservesweighting, ManpowerWeighting, Tanksurvivingweighting, TankREINFweighting, TankLreservesweighting, Tankreservesweighting, TankWeighting, APCsurvivingweighting, APCREINFweighting, APCLreservesweighting, APCreservesweighting, APCWeighting, Artsurvivingweighting, ArtREINFweighting, ArtLreservesweighting, Artreservesweighting, ArtWeighting, SortiesWeighting, myVariance]';
weightingsoutput = [cellstr(weightings), num2cell(weightingvalues)]
