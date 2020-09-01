#!/bin/bash

cp /work/Niki.Zadeh/MOM6-examples_myfork/ice_ocean_SIS2/OM4_0125/preprocessing.2/ocean_hgrid.nc .

md5sum -c ocean_hgrid.nc.md5

create_topog_refinedSampling.py --hgridfilename ocean_hgrid.nc --outputfilename topog_merged.nc \
                                --source_file /archive/Raphael.Dussin/datasets/topography/BedMachineAntarctica_v1/merged_BedMachineAntarctic_GEBCO2020.nc \
                                --source_lon lon --source_lat lat --source_elv elevation
