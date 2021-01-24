rm -rf *out.jpg
nvidia-smi --gpu-reset -i 0
for image in $(ls *Mask*jpg); do
	id=$(echo $image | cut -d '_' -f 1)
	python detect.py --classes=/home/milton/Downloads/VOC2012/data/voc2012.names --image=$image --num_classes=4 --output=$id-out.jpg --weights=checkpoints/yolov3_train_50.tf --size=64
done
