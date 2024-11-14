clear all
clc


%Nhap cac thong so mong muon
disp('Thiet lap cac thong so cho robot');
A = input('Nhap toa do Home(H), [x,y,z]= ');
disp('Thiet lap mat phang viet chu gom diem Home va 2 diem khac ');
B = input('Nhap vector Hx, [x,y,z]= ');
C = input('Nhap vector Hy, [x,y,z]= ');
Chuoi = input('Nhap dong chu muon viet " ":');


Org = [A(1), A(2), A(3)];
x_axis = [B(1),B(2),B(3)];
y_axis = [C(1),C(2),C(3)];

%Su ly cac thong so:
%Buoc 1: Xay dung mat phang viet chu, tim ma tran chuyen vi T

[T,camera] = Transform(Org,x_axis,y_axis);

%Buoc 2: tim vi tri home

[Home,A] = Set_home(A(1),A(2),A(3),3);

%Buoc 3: truy xuat du lieu cac chu
Buffer =[];
j=1;
a=1;
for i=1:length(Chuoi)
    
    if(Chuoi(i)=='!')
        j=j+1;
        a = 0;
    else
    Char = KUKA_anphabet(Chuoi(i),a,j,1);
    
    Buffer = [Buffer Char];
    end
    a=a+1;
end 

%Buoc 4: Chuyen toa do Data
Buffer2 = T*Buffer;
Buffer2 = Buffer2(1:3,:);

%Buoc 5: Kem du lieu cua Home
data = [Home Buffer2];

%Buoc 6: Giai bai toan nguoc, ve do thi bai toan nguoc
Data_inverse = KUKA_inverse(data(1,:),data(2,:),data(3,:),1);

%Buoc 7: Tao mang gia tri xuat ra Command Window
for j=1:(length(Data_inverse(1,:)-1))
    time(j)= (j-1)/10;
end

%Buoc 8: Ve ket qua trong mp khong gian
figure(1)
plot3(Buffer2(1,:),Buffer2(2,:),Buffer2(3,:),'Linewidth',2);
xlabel('x asix','Fontsize',13);
ylabel('y axis','Fontsize',13);
zlabel('z axis','Fontsize',13);
title('String','Fontsize',15)
figure(2)
title('Transpotition of Robot in space','Fontsize',15);
plot3(data(1,:),data(2,:),data(3,:));
xlabel('x_axis');
ylabel('y_axis');
zlabel('z_axis');

%Buoc 9: Ve lai do thi moi lien he giua vi tri va goc, goc va vi tri
figure(3)
hold on
plot(time,data(1,:),'g-','Linewidth',1);
plot(time,data(2,:),'b-','Linewidth',1);
plot(time,data(3,:),'r-','Linewidth',1);
legend('x','y','z');
xlabel('Time(s)','Fontsize',14);
ylabel('Position (mm)','Fontsize',14);
title('x y z Position','Fontsize',16);
hold off

figure(4)
hold on
plot(time,Data_inverse(1,:),'g-','Linewidth',1);
plot(time,Data_inverse(2,:),'b-','Linewidth',1);
plot(time,Data_inverse(3,:),'r-','Linewidth',1);
legend('theta1','theta2','theta3');
xlabel('Time(s)','Fontsize',14);
ylabel('Angle (deg)','Fontsize',14);
title('Theta1 theta2 theta3','Fontsize',16);
hold off

KUKA_workspace;

%Buoc 10: Xuat ket qua ra bien Out do vao simulink
Out = [time; Data_inverse ]'

%Buoc 11: Goc nhin tham khao trong xyz gragh
disp('Goc nhin tham khao: ');
camera 
