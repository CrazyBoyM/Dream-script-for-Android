#!/system/bin/sh
c=$EXTERNAL_STORAGE/Dream
export PATH=$PATH:$c/Dreamos
i=$EXTERNAL_STORAGE
mount -orw,remount /system
if [ ! -e /system/bin/Dream ]
then
echo "正在安装"
rm /system/Dreamos/*
rmdir /system/Dreamos
mkdir /system/Dreamos
dd if=$i/Dream/Dreamos/busybox of=/system/xbin/busybox
chmod 777 /system/xbin/busybox
busybox cp $i/Dream/Dreamos/* /system/Dreamos
busybox cp $i/Dream/Dream /system/bin/Dream
busybox --install /system/xbin/
chmod 777 /system/bin/Dream
chmod 777 /system/Dreamos
sleep 2
echo "安装完成"
exit 1
fi
