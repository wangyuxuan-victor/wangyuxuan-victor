SepalLengthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'B2:B151');
SepalWidthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'C2:C151');
PetalLengthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'D2:D151');
PetalWidthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'E2:E151');

train11=SepalLengthCm(1:20,:);
train12=SepalLengthCm(51:70,:);
train13=SepalLengthCm(101:120,:);
mu11=mean(train11);
mu12=mean(train12);
mu13=mean(train13);
sigma11=std(train11);
sigma12=std(train12);
sigma13=std(train13);

train21=SepalWidthCm(1:20,:);
train22=SepalWidthCm(51:70,:);
train23=SepalWidthCm(101:120,:);
mu21=mean(train21);
mu22=mean(train22);
mu23=mean(train23);
sigma21=std(train21);
sigma22=std(train22);
sigma23=std(train23);

train31=PetalLengthCm(1:20,:);
train32=PetalLengthCm(51:70,:);
train33=PetalLengthCm(101:120,:);
mu31=mean(train31);
mu32=mean(train32);
mu33=mean(train33);
sigma31=std(train31);
sigma32=std(train32);
sigma33=std(train33);


train41=PetalWidthCm(1:20,:);
train42=PetalWidthCm(51:70,:);
train43=PetalWidthCm(101:120,:);
mu41=mean(train41);
mu42=mean(train42);
mu43=mean(train43);
sigma41=std(train41);
sigma42=std(train42);
sigma43=std(train43);

data11=SepalLengthCm(21:50,:);
data12=SepalLengthCm(71:100,:);
data13=SepalLengthCm(121:150,:);

data21=SepalLengthCm(21:50,:);
data22=SepalLengthCm(71:100,:);
data23=SepalLengthCm(121:150,:);

data31=SepalLengthCm(21:50,:);
data32=SepalLengthCm(71:100,:);
data33=SepalLengthCm(121:150,:);

data41=SepalLengthCm(21:50,:);
data42=SepalLengthCm(71:100,:);
data43=SepalLengthCm(121:150,:);

data=[data11,data21,data31,data41;data12,data22,data32,data42;data13,data23,data33,data43];
i=1;
x=0;
y=0;
z=0;
while i<=90
    a1=(1/(sqrt(2*pi)*sigma11))*exp(-(data(i,1)-mu11)^2/(2*sigma11^2));
    b1=(1/(sqrt(2*pi)*sigma21))*exp(-(data(i,2)-mu21)^2/(2*sigma21^2));
    c1=(1/(sqrt(2*pi)*sigma31))*exp(-(data(i,3)-mu31)^2/(2*sigma31^2));
    d1=(1/(sqrt(2*pi)*sigma41))*exp(-(data(i,4)-mu41)^2/(2*sigma41^2));
    
    a2=(1/(sqrt(2*pi)*sigma12))*exp(-(data(i,1)-mu12)^2/(2*sigma12^2));
    b2=(1/(sqrt(2*pi)*sigma22))*exp(-(data(i,2)-mu22)^2/(2*sigma22^2));
    c2=(1/(sqrt(2*pi)*sigma32))*exp(-(data(i,3)-mu32)^2/(2*sigma32^2));
    d2=(1/(sqrt(2*pi)*sigma42))*exp(-(data(i,4)-mu42)^2/(2*sigma42^2));
    
    a3=(1/(sqrt(2*pi)*sigma13))*exp(-(data(i,1)-mu13)^2/(2*sigma13^2));
    b3=(1/(sqrt(2*pi)*sigma23))*exp(-(data(i,2)-mu23)^2/(2*sigma23^2));
    c3=(1/(sqrt(2*pi)*sigma33))*exp(-(data(i,3)-mu33)^2/(2*sigma33^2));
    d3=(1/(sqrt(2*pi)*sigma43))*exp(-(data(i,4)-mu43)^2/(2*sigma43^2));
    
    p1=a1*b1*c1*d1;
    p2=a2*b2*c2*d2;
    p3=a3*b3*c3*d3;
    pmax=p1;
    if p2>pmax
        pmax=p2;
    end
    if p3>pmax
        pmax=p3;
    end
    if pmax==p1
        kind1(i)=1;
    end
    if pmax==p2
        kind1(i)=2;
    end
    if pmax==p3
        kind1(i)=3;
    end
    i=i+1;
end

q=ones(1,30);
r=2*ones(1,30);
s=3*ones(1,30);
kind0=[q,r,s];
i=1;
right=0;
wrong=0;
while i<=90
    if kind1(i)==kind0(i)
        right=right+1;
    end
    if kind1(i)~=kind0(i)
        wrong=wrong+1;
    end
    i=i+1;
end
rate=right/150;
