#!/bin/bash

#export PATH=/work/Raphael.Dussin/soft/FRE-NCtools/bin:$PATH

make_solo_mosaic --num_tiles 1 --dir . --mosaic_name ocean_mosaic --tile_file ocean_hgrid.nc --periodx 360.

make_quick_mosaic --input_mosaic ./ocean_mosaic.nc --mosaic_name grid_spec --ocean_topog ./ocean_topog_noiceshelves.nc
