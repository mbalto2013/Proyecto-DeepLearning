python train.py --batch_size=64 --dataset ~milton/Downloads/VOC2012/tfrecord/train.tfrecord  --val_dataset ~milton/Downloads/VOC2012/tfrecord/val.tfrecord  --classes=/home/milton/Downloads/VOC2012/data/voc2012.names  --num_classes=4 --size=64 --epochs=150    | tee output.txt
#python train.py --batch_size 1 --dataset ~milton/Downloads/VOC2012/tfrecord/train.tfrecord  --val_dataset ~milton/Downloads/VOC2012/tfrecord/val.tfrecord  --classes=/home/milton/Downloads/VOC2012/data/voc2012.names  --num_classes=4  --epochs=15 --mode fit --transfer none

