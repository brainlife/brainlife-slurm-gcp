#!/bin/bash

mkdir -p /tmp/$SLURM_JOB_ID
export TMPDIR=/tmp/$SLURM_JOB_ID
