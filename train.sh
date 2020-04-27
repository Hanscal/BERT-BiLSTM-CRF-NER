bert_path='bert/Before/pretrained_model/chinese_L-12_H-768_A-12/'

python3 run.py   -data_dir         NERdata \
                 -bert_config_file $bert_path/bert_config.json \
                 -output_dir       output \
                 -init_checkpoint  $bert_path/bert_model.ckpt \
                 -vocab_file       $bert_path/vocab.txt \
                 -max_seq_length   202  \
                 -batch_size       32  \
                 -learning_rate    1e-5  \
                 -num_train_epochs 10  \
                 -dropout_rate     0.5  \
                 -clip             0.5  \
                 -warmup_proportion 0.1 \
                 -lstm_size        128 \
                 -num_layers       1 \
                 -cell             lstm \
                 -save_checkpoints_steps  500  \
                 -save_summary_steps  500  \
                 -device_map       6 \
                 -ner              ner