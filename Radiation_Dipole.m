%date:2020.2.13     Email:3126169332@qq.com 
%�벨ż���ӵķ������
%��ʵ����Ҫ��Ϊ��չ��ż���ӵķ����ص㣬�ܶ�Ĳ����趨ż�����򵥣�ȡֵ���
theta0=linspace(0,2*pi,100);
phi0=linspace(0,2*pi,200);
[theta,phi]=meshgrid(theta0,phi0);
F_3D=sin(theta);%��ά����ͼ����
[x,y,z]=sph2cart(phi,0.5*pi-theta,F_3D);
figure(1);%��ά����ͼ����
mesh(x,y,z);
xlabel('x');ylabel('y');zlabel('z');
title('3D Radiation Pattern of Dipole');

figure(2);%��ά����ͼ����
F_2D=sin(theta0);%��ά����ͼ����
polarplot(theta0,abs(F_2D));%��������ʽ����ͼ
title('2D Radiation Pattern of Dipole');
pax=gca;
pax.ThetaDir = 'clockwise';		   % ��˳ʱ�뷽ʽ����
pax.ThetaZeroLocation = 'top';     % ��0�ȷ��ڶ���  



