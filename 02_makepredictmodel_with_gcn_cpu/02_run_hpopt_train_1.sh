#!/usr/bin/bash
# https://chemprop.readthedocs.io/en/latest/tutorial/cli/hpopt.html
# After hyperparameter optimization, the best hyperparameters can be found in the file hpopt_data/best_config.toml


PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop hpopt --data-path data.csv \
  --task-type regression \
  --output-dir model_hpopt_dir \
  --smiles-column MOL_smiles \
  --target-columns LOG_HLM_CLint LOG_RLM_CLint LOG_MDR1-MDCK_ER LOG_HPPB LOG_RPPB LOG_SOLUBILITY \
  --split-type random \
  --search-parameter-keywords depth ffn_num_layers message_hidden_dim \
  --hpopt-save-dir hpopt_data \
  --accelerator cpu \
  --epochs 3 \
