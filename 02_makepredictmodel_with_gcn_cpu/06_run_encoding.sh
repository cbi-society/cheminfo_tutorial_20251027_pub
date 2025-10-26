#!/user/bin/bash

PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop fingerprint --logfile fingerprint_1.log \
  --test-path data.csv \
  --preds-path encodings_1.csv \
  --smiles-column MOL_smiles \
  --ffn-block-index -1 \
  --accelerator cpu \
  --model-path train_data_with_hopt/model_0/best.pt


PYTORCH_ENABLE_MPS_FALLBACK=1 chemprop fingerprint --logfile fingerprint_2.log \
  --test-path data.csv \
  --preds-path encodings_2.csv \
  --smiles-column MOL_smiles \
  --ffn-block-index -1 \
  --accelerator cpu \
  --model-path model_dir_with_foundation/model_0/best.pt


