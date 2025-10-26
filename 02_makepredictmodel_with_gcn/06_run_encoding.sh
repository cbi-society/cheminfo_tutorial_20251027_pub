#!/user/bin/bash

chemprop fingerprint --logfile fingerprint_1.log \
  --test-path data.csv \
  --preds-path encodings_1.csv \
  --smiles-column MOL_smiles \
  --ffn-block-index -1 \
  --accelerator gpu \
  --model-path train_data_with_hopt/model_0/best.pt


chemprop fingerprint --logfile fingerprint_2.log \
  --test-path data.csv \
  --preds-path encodings_2.csv \
  --smiles-column MOL_smiles \
  --ffn-block-index -1 \
  --accelerator gpu \
  --model-path model_dir_with_foundation/model_0/best.pt


