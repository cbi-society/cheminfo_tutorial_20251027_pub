#! /bin/bash
# Train a Chemprop model using a foundation model as the starting point
# https://chemprop.readthedocs.io/en/latest/chemeleon_foundation_finetuning.html

PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop train --data-path data.csv \
  --task-type regression \
  --output-dir model_dir_with_foundation \
  --epochs 3 \
  --smiles-column MOL_smiles \
  --target-columns LOG_HLM_CLint LOG_RLM_CLint LOG_MDR1-MDCK_ER LOG_HPPB LOG_RPPB LOG_SOLUBILITY \
  --split-type random \
  --from-foundation chemeleon
