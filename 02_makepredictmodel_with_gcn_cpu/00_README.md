## 02 Make predictive model with GCN

### 概要
- このセッションでは、01にて作成したデータセットを用いて以下のハンズオンを行います。
 1. chemprop CMPNNを用いた予測モデルの作成
  モデルのハイパーパラーメータの探索
 1. 最適化したパラメータでのモデルの訓練
 1. 基盤モデル（Chemeleon）を活用した予測モデルの作成
 1. 分子のエンコーディング
 1. 分子のエンコーディング可視化
 1. Jupyter notebook上からchempropを使う-1
 1. Jupyter notebook上からchempropを使う-2

### 分子のエンコーディングとは?

### Chemeleonについて
- ChemeleonはJackson Burnsらにより報告されている記述子ベースの基盤モデルです。Pubchemをデータソースとして訓練されています。記述子ベースの基盤モデルのため、QMや薬理評価データを用いて訓練した基盤モデルよりも安定した性能が期待できると述べられています。
- chempropのバージョンは2.2.0以上であれば今回のスクリプトのように簡便に基盤モデルを利用できます。
- [Descriptor-based Foundation Models for Molecular Property Prediction](https://arxiv.org/abs/2506.15792) 
