%date:2020.2.13     Email:3126169332@qq.com 
%半波偶极子的辐射仿真
%本实验主要是为了展现偶极子的辐射特点，很多的参数设定偶尽量简单，取值简洁
theta0=linspace(0,2*pi,100);
phi0=linspace(0,2*pi,200);
[theta,phi]=meshgrid(theta0,phi0);
% F_3D=sin(theta);%三维方向图函数，电基本振子方向图
F_3D=cos(0.5*pi*cos(theta))./sin(theta);%三维方向图函数，半波偶极子方向图
[x,y,z]=sph2cart(phi,0.5*pi-theta,F_3D);
figure(1);%三维方向图绘制
mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('3D Radiation Pattern of Dipole');

figure(2);%二维方向图绘制
F_2D=cos(0.5*pi*cos(theta0))./sin(theta0);%2维方向图函数，半波偶极子方向图
polarplot(theta0,abs(F_2D));%极坐标形式方向图
title('2D Radiation Pattern of Dipole');
pax=gca;
pax.ThetaDir = 'clockwise';		   % 按顺时针方式递增
pax.ThetaZeroLocation = 'top';     % 将0度放在顶部  

figure(3);%上面的两张图汇总在一起
subplot(121)
mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('3D Radiation Pattern of Dipole');

subplot(122);
polarplot(theta0,abs(F_2D));%极坐标形式方向图
title('2D Radiation Pattern of Dipole');
pax=gca;
pax.ThetaDir = 'clockwise';		   % 按顺时针方式递增
pax.ThetaZeroLocation = 'top';     % 将0度放在顶部  



