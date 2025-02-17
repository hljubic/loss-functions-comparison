#!/bin/bash
cd /lustre/home/hljubic/projects/0_qloss/TimeXer1

rm -r checkpoints/*
rm -r csv_results/*
rm -r results/*
rm -r test_results/*

-------


#!/bin/bash

for i in {1..2}; do
    dir="/lustre/home/hljubic/projects/0_qloss/TimeXer$i"

    if [ -d "$dir" ]; then
        echo "Brisanje u $dir"
        rm -r "$dir/checkpoints"/*
        rm -r "$dir/csv_results"/*
        rm -r "$dir/results"/*
        rm -r "$dir/test_results"/*
    else
        echo "Direktorij $dir ne postoji, preskačem..."
    fi
done
