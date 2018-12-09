clc
elevation2 = ncread('Atlantic_Data.nc', 'elevation');   %Bathymetric data needs to have the name bathdata2 & be in the same directory as the script
dsf = .001;                                     %downscale factor
nn = round(size(elevation2,2)*dsf,0);                 %converts scale factor to take every nth value of the matrix row
nm = round(size(elevation2,1)*dsf,0);                 %converts scale factor to take every mth value of the matrix column
test = elevation2(1:nn:end,1:nm:end);               %Down Scales matrix so the mesh and contour can run without the script crashing
test2 = fliplr(test);                               %Flips and rotates the data so north is the top of the figure
test3 = rot90(test2,1);
test3(test3>0)=0;                                   %resets every matrix value greater than 0 to be 0 so land elevation is not shown and defined coastline is present

disp(nn)
disp(nm)

figure
mesh(test3)
title('Mesh Depth Chart of Northern Atlantic')
zlabel('Depth (m)')
ylabel('Latitude (30-90 N)')
xlabel('Longitude (90-30 W)')

figure
contour(test3,'ShowText','off');colorbar
title('Contour Depth Chart')
ylabel('Latitude (30-90 N)')
xlabel('Longitude (90-30 W)')