clear all; 
close all; 
clc;

ManpowerBsurviving = xlsread('Table7ManpowerWeightings.xlsx', 'D58:D79');
ManpowerBREINF = xlsread('Table7ManpowerWeightings.xlsx', 'E58:E79');
ManpowerBLreserves = xlsread('Table7ManpowerWeightings.xlsx', 'F58:F79');
ManpowerBreserves = xlsread('Table7ManpowerWeightings.xlsx', 'G58:G79');

TankBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D16:D37');
TankBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E16:E37');
TankBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F16:F37');
TankBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G16:G37');

APCBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D58:D79');
APCBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E58:E79');
APCBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F58:F79');
APCBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G58:G79');

ArtBsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'D100:D121');
ArtBREINF = xlsread('Table9EquipmentWeightings.xlsx', 'E100:E121');
ArtBLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'F100:F121');
ArtBreserves = xlsread('Table9EquipmentWeightings.xlsx', 'G100:G121');

SortiesB = xlsread('Table6Combat&TotalForces.xlsx', 'G16:G37');

Manpowerb = xlsread('Table6Combat&TotalForces.xlsx', 'C100:C121');
Tankb = xlsread('Table6Combat&TotalForces.xlsx', 'D100:D121');
APCb = xlsread('Table6Combat&TotalForces.xlsx', 'E100:E121');
Artb = xlsread('Table6Combat&TotalForces.xlsx', 'F100:F121');


ManpowerRsurviving = xlsread('Table7ManpowerWeightings.xlsx', 'M58:M79');
ManpowerRREINF = xlsread('Table7ManpowerWeightings.xlsx', 'N58:N79');
ManpowerRLreserves = xlsread('Table7ManpowerWeightings.xlsx', 'O58:O79');
ManpowerRreserves = xlsread('Table7ManpowerWeightings.xlsx', 'P58:P79');

TankRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M16:M37');
TankRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N16:N37');
TankRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O16:O37');
TankRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P16:P37');

APCRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M58:M79');
APCRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N58:N79');
APCRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O58:O79');
APCRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P58:P79');

ArtRsurviving = xlsread('Table9EquipmentWeightings.xlsx', 'M100:M121');
ArtRREINF = xlsread('Table9EquipmentWeightings.xlsx', 'N100:N121');
ArtRLreserves = xlsread('Table9EquipmentWeightings.xlsx', 'O100:O121');
ArtRreserves = xlsread('Table9EquipmentWeightings.xlsx', 'P100:P121');

SortiesR = xlsread('Table6Combat&TotalForces.xlsx', 'P16:P37');

Manpowerr = xlsread('Table6Combat&TotalForces.xlsx', 'L100:L121');
Tankr = xlsread('Table6Combat&TotalForces.xlsx', 'M100:M121');
APCr = xlsread('Table6Combat&TotalForces.xlsx', 'N100:N121');
Artr = xlsread('Table6Combat&TotalForces.xlsx', 'O100:O121');


%Resource weightings
ManpowerWeighting = 1;
TankWeighting = [10:2:30];
APCWeighting = [2:2:20];
ArtWeighting = [30:2:50];
SortieWeighting = 0;%[20:2:40];

%subdivision weightings
SurvivingWeighting = 1;
REINFWeighting = [1:0.4:3];
LReservesWeighting = [0:0.3:0.9];
ReservesWeighting = [0:0.3:0.9];

for i = 1:numel(ManpowerBsurviving)
    for tw = 1:numel(TankWeighting)
        for apcw = 1:numel(APCWeighting)
            for artw = 1:numel(ArtWeighting)
                for asw = 1:numel(SortieWeighting)
                    for reinf = 1:numel(REINFWeighting)
                        for lres = 1:numel(LReservesWeighting)
                            for res = 1:numel(ReservesWeighting)
                                Bmatrix(tw,apcw,artw,asw,reinf,lres,res,i) = (((ManpowerBsurviving(i)*ManpowerWeighting) + (TankBsurviving(i)*TankWeighting(tw)) + (APCBsurviving(i)*APCWeighting(apcw)) + (ArtBsurviving(i)*ArtWeighting(artw)))*SurvivingWeighting)+ (((ManpowerBREINF(i)*ManpowerWeighting) + (TankBREINF(i)*TankWeighting(tw)) + (APCBREINF(i)*APCWeighting(apcw)) + (ArtBREINF(i)*ArtWeighting(artw)))*REINFWeighting(reinf)) + (((ManpowerBLreserves(i)*ManpowerWeighting) + (TankBLreserves(i)*TankWeighting(tw)) + (APCBLreserves(i)*APCWeighting(apcw)) + (ArtBLreserves(i)*ArtWeighting(artw)))*LReservesWeighting(lres)) + (((ManpowerBreserves(i)*ManpowerWeighting) + (TankBreserves(i)*TankWeighting(tw)) + (APCBreserves(i)*APCWeighting(apcw)) + (ArtBreserves(i)*ArtWeighting(artw)))*ReservesWeighting(res)) + (SortiesB(i)*SortieWeighting(asw)); 
                                Rmatrix(tw,apcw,artw,asw,reinf,lres,res,i) = (((ManpowerRsurviving(i)*ManpowerWeighting) + (TankRsurviving(i)*TankWeighting(tw)) + (APCRsurviving(i)*APCWeighting(apcw)) + (ArtRsurviving(i)*ArtWeighting(artw)))*SurvivingWeighting)+ (((ManpowerRREINF(i)*ManpowerWeighting) + (TankRREINF(i)*TankWeighting(tw)) + (APCRREINF(i)*APCWeighting(apcw)) + (ArtRREINF(i)*ArtWeighting(artw)))*REINFWeighting(reinf)) + (((ManpowerRLreserves(i)*ManpowerWeighting) + (TankRLreserves(i)*TankWeighting(tw)) + (APCRLreserves(i)*APCWeighting(apcw)) + (ArtRLreserves(i)*ArtWeighting(artw)))*LReservesWeighting(lres)) + (((ManpowerRreserves(i)*ManpowerWeighting) + (TankRreserves(i)*TankWeighting(tw)) + (APCRreserves(i)*APCWeighting(apcw)) + (ArtRreserves(i)*ArtWeighting(artw)))*ReservesWeighting(res)) + (SortiesR(i)*SortieWeighting(asw)); 
                                bmatrix(tw,apcw,artw,asw,reinf,lres,res,i) = ((Manpowerb(i)*SurvivingWeighting)*ManpowerWeighting)+((Tankb(i)*SurvivingWeighting)*TankWeighting(tw))+((APCb(i)*SurvivingWeighting)*APCWeighting(apcw))+((Artb(i)*SurvivingWeighting)*ArtWeighting(artw));
                                rmatrix(tw,apcw,artw,asw,reinf,lres,res,i) = ((Manpowerr(i)*SurvivingWeighting)*ManpowerWeighting)+((Tankr(i)*SurvivingWeighting)*TankWeighting(tw))+((APCr(i)*SurvivingWeighting)*APCWeighting(apcw))+((Artr(i)*SurvivingWeighting)*ArtWeighting(artw));                           
                            end
                        end
                    end
                end
            end
        end
    end
end

for TW = 1:tw
    for APCW = 1:apcw
        for ARTW = 1:artw
            for ASW = 1:asw
                for REINF = 1:reinf
                    for LRES = 1:lres
                        for RES = 1:res
                            for I = 1:i
                                LinearIndexing(I,RES,LRES,REINF,ASW,ARTW,APCW,TW) = sub2ind(size(Bmatrix),TW,APCW,ARTW,ASW,REINF,LRES,RES,I);
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

Bmatrix2D = reshape(Bmatrixsorted,i,tw*apcw*artw*asw*reinf*lres*res);
Rmatrix2D = reshape(Rmatrixsorted,i,tw*apcw*artw*asw*reinf*lres*res);
bmatrix2D = reshape(bmatrixsorted,i,tw*apcw*artw*asw*reinf*lres*res);
rmatrix2D = reshape(rmatrixsorted,i,tw*apcw*artw*asw*reinf*lres*res);

v = 0;

for m = 1:(tw*apcw*artw*asw*reinf*lres*res)
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

TankWeighting = TankWeighting(ceil(M/(res*lres*reinf*asw*artw*apcw)));

if apcw == 0
    APCWeighting = 0;
else
    if mod((ceil((M/(res*lres*reinf*asw*artw)))),apcw) == 0
        APCWeighting = APCWeighting(apcw);
    else
        APCWeighting = APCWeighting(mod(ceil(M/(res*lres*reinf*asw*artw)),apcw));
    end
end

if artw == 0
    ArtWeighting = 0;
else
    if mod((ceil((M/(res*lres*reinf*asw)))),artw) == 0
        ArtWeighting = ArtWeighting(artw);
    else
        ArtWeighting = ArtWeighting(mod(ceil(M/(res*lres*reinf*asw)),artw));
    end
end

if asw == 0
    SortieWeighting = 0;
else
    if mod((ceil((M/(res*lres*reinf)))),asw) == 0
        SortieWeighting = SortieWeighting(asw);
    else
        SortieWeighting = SortieWeighting(mod(ceil(M/(res*lres*reinf)),asw));
    end
end

if reinf == 0
    REINFWeighting = 0;
else
    if mod((ceil((M/(res*lres)))),reinf) == 0
        REINFWeighting = REINFWeighting(reinf);
    else
        REINFWeighting = REINFWeighting(mod(ceil(M/(res*lres)),reinf));
    end
end

if lres == 0
    LReservesWeighting = 0;
else
    if mod(ceil(M/res),lres) == 0
        LReservesWeighting = LReservesWeighting(lres);
    else
        LReservesWeighting = LReservesWeighting(mod(ceil(M/res),lres));
    end
end

if res == 0
    ReservesWeighting = 0;
else
    if mod(M,res) == 0
        ReservesWeighting = ReservesWeighting(res);
    else 
        ReservesWeighting = ReservesWeighting(mod(M,res));
    end
end


parameters =  ["alpha", "beta", "delta", "gamma", "p", "q", "a", "b"]';
parametervalues = [alpha, beta, delta, gamma, p, q, a, bee]';
parametersoutput = [cellstr(parameters), num2cell(parametervalues)]

weightings = ["Tank Weighting", "APC Weighting", "Artillery Weighting", "Air Sortie Weighting", "surviving weighting", "reinforcements weighting", "local reserves weighting", "reserves weighting", "variance"]';
weightingvalues = [TankWeighting, APCWeighting, ArtWeighting, SortieWeighting, SurvivingWeighting, REINFWeighting, LReservesWeighting, ReservesWeighting, myVariance]';
weightingsoutput = [cellstr(weightings), num2cell(weightingvalues)]
