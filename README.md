This repository contains the batymetry script and data to plot the 
depth of the Atlantic ocean. The scaling of the data is hard coded
as of this commit, however, it the scaling is simple matrix reduction
in order to not overwhelm the processor with an excess of datapoints.

In the script, elevations greater than zero were replaced with the value of
zero as the only data desired is bathymetric data. This can be altered
by deleting the corresponding line.

Also, there is a limitation to the method of plotting: the curvature of
the Earth. There is a noticable distortion of the data near the poles.
Perhaps some compensation could be provided to better represent the 
actual curvature.

Data was obtained from the British National Oceanagrapy Centre from GEBCO.
Addition of the actual data into the repo was not possible due to its size.
To get data use the following link and register for academic use:
https://www.gebco.net/data_and_products/gridded_bathymetry_data/

