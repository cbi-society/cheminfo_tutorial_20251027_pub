#!/usr/bin/bash
# https://chemprop.readthedocs.io/en/latest/cmd.html#predict

PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop predict -s MOL_smiles \
  -i testmol.csv \
  -o testmol_pred.csv \
  --model-paths model_dir_with_foundation/model_0/best.pt