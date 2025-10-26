#!/usr/bin/bash
# https://chemprop.readthedocs.io/en/latest/tutorial/cli/train.html#train

# By default, it is assumed that the SMILES are in the first column and the targets are in the remaining columns. However, the specific columns containing the SMILES and targets can be specified using the --smiles-columns <column> and --target-columns <column_1> <column_2> ... flags, respectively.

PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop train --data-path data.csv \
  --task-type regression \
  --output-dir model_dir \
  --smiles-column MOL_smiles \
  --target-columns LOG_HLM_CLint LOG_RLM_CLint LOG_MDR1-MDCK_ER LOG_HPPB LOG_RPPB LOG_SOLUBILITY \
  --split-type random \
  --epochs 10 
