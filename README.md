
## Notas

Todos los comandos aqui mostrados debe ejecutarse desde la carpeta: yolov3_tf2

**Pre-requisitos**

Cualquiera que se mencione en la carpeta [yolov3_tf2](https://github.com/mbalto2013/Proyecto-DeepLearning/tree/master/yolov3_tf2)

 

## Generar tf records

Validation records

    python tools/voc2012.py --data_dir=../VOC2012 --output_file=../VOC2012/tfrecord/val.tfrecord --split val --classes=../VOC2012/data/voc2012.names

Train records

    python tools/voc2012.py --data_dir=../VOC2012 --output_file=../VOC2012/tfrecord/train.tfrecord --split train --classes=../VOC2012/data/voc2012.names

## Entrenamiento

    python train.py --batch_size=64 --dataset=../VOC2012/tfrecord/train.tfrecord --val_dataset=../VOC2012/tfrecord/val.tfrecord --classes=../VOC2012/data/voc2012.names --num_classes=4 --size=64 --epochs=2

## Pruebas

(Aumente los epochs y modifique los parámetros para mayor accuracy)

Imagenes

    python detect.py --classes=../VOC2012/data/voc2012.names --image=03007_Mask_Chin.jpg --num_classes=4 --output=03007_Mask_Chin-out.jpg --weights=checkpoints/yolov3_train_2.tf --size=64
    
 Video

    python detect.py --classes=../VOC2012/data/voc2012.names --image=03007_Mask_Chin.jpg --num_classes=4 --output=03007_Mask_Chin-out.jpg --weights=checkpoints/yolov3_train_2.tf --size=64



## Alumnos

 - Guillermo M. 
 - Milton B.

