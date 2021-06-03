SepalLengthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'B2:B151');
SepalWidthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'C2:C151');
PetalLengthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'D2:D151');
PetalWidthCm=xlsread('C:\Users\xuan\Desktop\汪宇轩\作业\模式识别与机器学习\iris-data\Iris.csv',1,'E2:E151');
SepalLengthCm1=SepalLengthCm(51:150,:);
SepalWidthCm1=SepalWidthCm(51:150,:);
entropy=3*(-1/3)*log2(1/3);
[a,I1]=sort(SepalLengthCm);%I矩阵表示排序后的元素在原矩阵中的位置
[b,I2]=sort(SepalWidthCm);
[c,I3]=sort(PetalLengthCm);
[d,I4]=sort(PetalWidthCm);
[e,I5]=sort(SepalLengthCm1);
[f,I6]=sort(SepalWidthCm1);

i=1;
k=1;
while i<150
    if a(i)<a(i+1)
        j=1;
        x=0;
        y=0;
        z=0;
        while j<=i
            if I1(j)>=1&&I1(j)<=50%统计属于各类的数目
                x=x+1;
            end
            if I1(j)>=51&&I1(j)<=100
                y=y+1;
            end
            if I1(j)>=101&&I1(j)<=150
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((x/i)*log2((x+0.001)/i)+(y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));%分母加0.001防止出现log2(0)的情况
        ent2=-(((50-x)/(150-i))*log2((50-x+0.001)/(150-i))+((50-y)/(150-i))*log2((50-y+0.001)/(150-i))+((50-z)/(150-i))*log2((50-z+0.001)/(150-i)));
        dividingpoint1(k)=entropy-(i/150)*ent1-((150-i)/150)*ent2;
        k=k+1;
    end
    i=i+1;
end

i=1;
k=1;
while i<150
    if b(i)<b(i+1)
        j=1;
        x=0;
        y=0;
        z=0;
        while j<=i
            if I2(j)>=1&&I2(j)<=50
                x=x+1;
            end
            if I2(j)>=51&&I2(j)<=100
                y=y+1;
            end
            if I2(j)>=101&&I2(j)<=150
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((x/i)*log2((x+0.001)/i)+(y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));
        ent2=-(((50-x)/(150-i))*log2((50-x+0.001)/(150-i))+((50-y)/(150-i))*log2((50-y+0.001)/(150-i))+((50-z)/(150-i))*log2((50-z+0.001)/(150-i)));
        dividingpoint2(k)=entropy-(i/150)*ent1-((150-i)/150)*ent2;
        k=k+1;
    end
    i=i+1;
end

i=1;
k=1;
while i<150
    if c(i)<c(i+1)
        j=1;
        x=0;
        y=0;
        z=0;
        while j<=i
            if I3(j)>=1&&I3(j)<=50
                x=x+1;
            end
            if I3(j)>=51&&I3(j)<=100
                y=y+1;
            end
            if I3(j)>=101&&I3(j)<=150
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((x/i)*log2((x+0.001)/i)+(y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));
        ent2=-(((50-x)/(150-i))*log2((50-x+0.001)/(150-i))+((50-y)/(150-i))*log2((50-y+0.001)/(150-i))+((50-z)/(150-i))*log2((50-z+0.001)/(150-i)));
        dividingpoint3(k)=entropy-(i/150)*ent1-((150-i)/150)*ent2;
        k=k+1;
    end
    i=i+1;
end

i=1;
k=1;
while i<150
    if d(i)<d(i+1)
        j=1;
        x=0;
        y=0;
        z=0;
        while j<=i
            if I4(j)>=1&&I4(j)<=50
                x=x+1;
            end
            if I4(j)>=51&&I4(j)<=100
                y=y+1;
            end
            if I4(j)>=101&&I4(j)<=150
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((x/i)*log2((x+0.001)/i)+(y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));
        ent2=-(((50-x)/(150-i))*log2((50-x+0.001)/(150-i))+((50-y)/(150-i))*log2((50-y+0.001)/(150-i))+((50-z)/(150-i))*log2((50-z+0.001)/(150-i)));
        dividingpoint4(k)=entropy-(i/150)*ent1-((150-i)/150)*ent2;
        k=k+1;
    end
    i=i+1;
end

i=1;
k=1;
while i<100
    if e(i)<e(i+1)
        j=1;
        y=0;
        z=0;
        while j<=i
            if I5(j)>=1&&I5(j)<=50
                y=y+1;
            end
            if I5(j)>=51&&I5(j)<=100
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));%分母加0.001防止出现log2(0)的情况
        ent2=-(((50-y)/(100-i))*log2((50-y+0.001)/(100-i))+((50-z)/(100-i))*log2((50-z+0.001)/(100-i)));
        dividingpoint5(k)=entropy-(i/100)*ent1-((100-i)/100)*ent2;
        k=k+1;
    end
    i=i+1;
end

i=1;
k=1;
while i<100
    if f(i)<f(i+1)
        j=1;
        y=0;
        z=0;
        while j<=i
            if I6(j)>=1&&I6(j)<=50
                y=y+1;
            end
            if I6(j)>=51&&I6(j)<=100
                z=z+1;
            end
            j=j+1;
        end
        
        ent1=-((y/i)*log2((y+0.001)/i)+(z/i)*log2((z+0.001)/i));%分母加0.001防止出现log2(0)的情况
        ent2=-(((50-y)/(100-i))*log2((50-y+0.001)/(100-i))+((50-z)/(100-i))*log2((50-z+0.001)/(100-i)));
        dividingpoint6(k)=entropy-(i/100)*ent1-((100-i)/100)*ent2;
        k=k+1;
    end
    i=i+1;
end

data=[SepalLengthCm,SepalWidthCm,PetalLengthCm,PetalWidthCm];
i=1;
while i<=150
    if data(i,3)<3
        kind(i)=1;
    end
    if data(i,3)>=3
        if data(i,1)>6.15&&data(i,2)>2.45
            kind(i)=3;
        end
        if data(i,1)<6.15||data(i,2)<2.45
            kind(i)=2;
        end
    end
    i=i+1;
end

p=ones(1,50);
q=2*ones(1,50);
r=3*ones(1,50);
kind0=[p,q,r];

i=1;
right=0;
wrong=0;
while i<=150
    if kind(i)==kind0(i)
        right=right+1;
    end
    if kind(i)~=kind0(i)
        wrong=wrong+1;
    end
    i=i+1;
end

rate=right/150;
