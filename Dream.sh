#安卓魔法师版权所有，搬运请注明原作者。
#AF项目开发组 QQ群399409189
#!/system/Dreamos/bash
clear
echo -e "\033[33;49;1m"
echo ================
sleep 1
clear
echo ================
echo 正在配置环境
mount -o -rw,remount /
mount -o -rw,remount /system
mount -o -rw,remount /data
mount -o -rw,remount /cache
export PATH=$PATH:$PWD
export PATH=$PATH:/system/Dreamos
DreamHome=$EXTERNAL_STORAGE/DreamHome
crom=/system/Dreamos
sdrom=$EXTERNAL_STORAGE
prop=/system/prop
busybox echo  >> $prop
bsx=busybox
cl=clear
cd $crom
sleep 0.5
if [ ! -d $EXTERNAL_STORAGE/DreamHome ]
then
mkdir $EXTERNAL_STORAGE/DreamHome
elif [ ! -e $DreamHome/log.txt ]
then
dd if=/dev/zero of=$DreamHome/log.txt size=0
fi
echo 配置完成
echo =================
sleep 2
{
{
mount -orw,remount /system
function wait(){
$cl
echo 请正确输入指令！
echo  3 秒后自动返回
sleep 3
$cl
}
function Dream()
{
$cl
echo 请输入数字，回车键确认
echo 1.开启Dreamos
echo 2.关于Dreamos
echo 3.退出Dreamos
read os
if [  $os -eq 1 ]
then
menu-Dream
elif [  $os -eq 2 ]
then
about
elif [  $os -eq 3 ]
then
exit-menu
elif [ $os -eq 108 ]
then
echo "#!/system/Dreamos/bash
clear
echo -e "\033[33;49;1m"
clear
echo ================
echo 正在配置环境
mount -o -rw,remount /
mount -o -rw,remount /system
mount -o -rw,remount /data
mount -o -rw,remount /cache
export PATH=$PATH:$PWD
export PATH=$PATH:/system/Dreamos
DreamHome=$EXTERNAL_STORAGE/DreamHome
crom=/system/Dreamos
sdrom=$EXTERNAL_STORAGE
prop=/system/prop
busybox echo  >> $prop
bsx=busybox
cl=clear
cd $crom
sleep 0.5
if [ ! -d $EXTERNAL_STORAGE/DreamHome ]
then
mkdir $EXTERNAL_STORAGE/DreamHome
elif [ ! -e $DreamHome/log.txt ]
then
dd if=/dev/zero of=$DreamHome/log.txt size=0
fi
echo 配置完成
echo =================
sleep 2
{
{
mount -orw,remount /system
function wait(){
$cl
echo 请正确输入指令！
echo  3 秒后自动返回
sleep 3
$cl
}
function Dream()
{
$cl
echo 请输入数字，回车键确认
echo 1.开启Dreamos
echo 2.关于Dreamos
echo 3.退出Dreamos
read os
if [  $os -eq 1 ]
then
menu-Dream
elif [  $os -eq 2 ]
then
about
elif [  $os -eq 3 ]
then
exit-menu
else
wait;Dream
fi
}

function menu-Dream()
{
$cl
echo 0.一键加速

echo 1.性能增强
echo 2.系统优化
echo 3.全局调节
echo 4.智能配置
echo 5.充电引擎

echo 6.垃圾清理

echo 7.退出系统
read m
if [  $m -eq 0 ]
then
kill-all
elif [  $m -eq 1 ]
then
xnjs
elif [  $m -eq 2 ]
then
xtyh
elif [  $m -eq 3 ]
then
qjtj
elif [  $m -eq 4 ]
then
znpz
elif [  $m -eq 5 ]
then
battery
elif [  $m -eq 6 ]
then
kill-worst
elif [  $m -eq 7 ]
then
Dream
else
wait;menu-Dream
fi
}
function kill-all()
{
$cl
echo 正在清理加速中。。。
echo 运行加速程序。。。
sync;
sleep 3
echo 调整堆桩线程。。。
echo 3 > /proc/sys/vm/drop_caches;
sleep 2
echo 进一步调整堆桩线程。。。
echo 1 > /proc/sys/vm/drop_caches;
sleep 1
echo 加速完成
sleep 3
$cl
menu-Dream
}
function kill-worst()
{
$cl
echo 危险警报！！此操作将清除包括Log日志和tmp文件的垃圾，请不要在测试和下载过程中使用！
echo 1.继续
echo 2.退出
read a
if [ $a = 1 ]
then
worst-killer
else
$cl
menu-Dream
fi
}
function worst-killer()
{
echo 正在加载中。。。
sleep 3
echo 开始清理/data下的垃圾文件。。。
rm -f /cache/*.apk
rm -f /cache/*.tmp
rm -f /data/dalvik-cache/*.apk
rm -f /data/dalvik-cache/*.tmp
rm -f /data/local/tmp/*.apk
rm -r /data/tmp/*
rm -r /data/system/usagestats/*
rm -r /data/system/appusagestats/*
rm -r /data/system/dropbox/*
rm -r /data/tombstones/*
rm -r /data/anr/*

if [ -e /data/system/userbehavior.db ]
then
  rm -f /data/system/userbehavior.db
fi

if [ -d /data/system/usagestats ]
then
  chmod 400 /data/system/usagestats
fi

if [ -d /data/system/appusagestats ]
then
  chmod 400 /data/system/appusagestats
fi
if [ -e /dev/log/main ]
then
  rm -f /dev/log/main
fi
sleep 6
echo 开始清理/sdcard下的垃圾
rm -f $sdrom/*.log
rm -f $sdrom/*.tmp
rm -f $sdrom/*/*.log
rm -f $sdrom/*/*.tmp
rm -f $sdrom/*LOG*
rm -f $sdrom/*log*
echo "完成"
sleep 3
$cl
menu-Dream
}
function xnjs()
{
$cl
echo 请输入数字，回车键确认
echo 1.网络加速
echo 2.内存加速
echo 3.运存优化
echo 4.极速模式
echo 5.返回
read v
if [  $v -eq 1 ]
then
net
elif [  $v -eq 2 ]
then
sd
elif [  $v -eq 3 ]
then
ram
elif [  $v -eq 4 ]
then
rng
elif [  $v -eq 5 ]
then
menu-Dream
else
wait;xnjs
fi
}
function xtyh()
{
$cl
echo 请输入数字，回车键确认
echo 1.虚拟内存
echo 2.ODEX优化
echo 3.ZIP优化
echo 4.SQL优化
echo 5.返回
read a
if [  $a -eq 1 ]
then
swap
elif [  $a -eq 2 ]
then
odex
elif [  $a -eq 3 ]
then
zipa
elif [  $a -eq 4 ]
then
sql
elif [  $a -eq 5 ]
then
menu-Dream
else
wait;xtyh
fi
}
function qjtj()
{
$cl
echo 请输入数字，回车键确认
echo 1.内存调节
echo 2.CPU调节
echo 3.OOM调节
echo 4.运行模式
echo 5.返回
read a
if [  $a -eq 1 ]
then
vm
elif [  $a -eq 2 ]
then
cpu
elif [  $a -eq 3 ]
then
oom
elif [  $a -eq 4 ]
then
dev
elif [  $a -eq 5 ]
then
menu-Dream
else
wait;qjtj
fi
}
function odex()
{
$bsx mount -orw,remount /system

odexframework=/system/framework/core.odex;
odexapp=/system/app/Phone.odex;
odexapp1=/system/app/BlurPhone.odex;

dexopt_core()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo ODEX files present in /system/app, exiting
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo ODEX files present in /system/framework, exiting
	sleep 2
$cl
xtyh
else
	echo  
	echo Dexopting core framework archives, do not interrupt
	echo  
	dexopt-wrapper /system/framework/core.jar /system/framework/core.odex
	dexopt-wrapper /system/framework/bouncycastle.jar /system/framework/bouncycastle.odex
	dexopt-wrapper /system/framework/ext.jar /system/framework/ext.odex
	dexopt-wrapper /system/framework/framework.jar /system/framework/framework.odex
	dexopt-wrapper /system/framework/android.policy.jar /system/framework/android.policy.odex
	dexopt-wrapper /system/framework/services.jar /system/framework/services.odex
	dexopt-wrapper /system/framework/core-junit.jar /system/framework/core-junit.odex
	dexopt-wrapper /system/framework/com.motorola.android.frameworks.jar /system/framework/com.motorola.android.frameworks.odex
	dexopt-wrapper /system/framework/com.motorola.android.widget.jar /system/framework/com.motorola.android.widget.odex
	dexopt-wrapper /system/framework/com.motorola.android.telephony.jar /system/framework/com.motorola.android.telephony.odex
	dexopt-wrapper /system/framework/android.test.runner.jar /system/framework/android.test.runner.odex
fi; fi
}

dexopt_rest()
{
echo Dexopting secondary framework archives, do not interrupt
for j in /system/framework/*.jar
do
	odexj=`echo $j | sed -e 's/.jar/.odex/g'`
	if [ -f $odexj ]; then
		echo ++++++++++++
		echo $odexj already exists, skipping
		echo ++++++++++++
	else
		echo dexopt-wrapper $j $odex
		dexopt-wrapper $j $odexj
	fi
done
}

dexopt_app()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo 已经ODEX
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo Dexopting system applications, do not interrupt;
	for i in /system/app/*.apk
	do
		odex=`echo $i | sed -e 's/.apk/.odex/g'`
		echo dexopt-wrapper $i $odex
		dexopt-wrapper $i $odex
	done
else
	echo Please dexopt /system/framework first, exiting
	sleep 2
$cl
xtyh
fi; fi
}
dexopt_dataapp()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo 已经ODEX
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo Dexopting system applications, do not interrupt;
	for i in /data/app/*.apk
	do
		odex=`echo $i | sed -e 's/.apk/.odex/g'`
		echo dexopt-wrapper $i $odex
		dexopt-wrapper $i $odex
	done
	$bsx rm -f /data/dalvik-cache/*
else
	echo Please dexopt /system/framework first, exiting
	sleep 2
$cl
xtyh
fi; fi
}
	dexopt_core
	dexopt_rest
	dexopt_app
	dexopt_dataapp
$bsx mount -oro,remount /system

echo odex完成
echo 回车键重启手机
read re
reboot
}
function zipa()
{
RUN_EVERY=172800

LOG_FILE=/data/zipalign_data.log
    if [ -e $LOG_FILE ]; then
      rm $LOG_FILE;
    fi;


echo Starting Automatic ZipAlign $( date +%m-%d-%Y %H:%M:%S ) | $bsx tee -a $LOG_FILE;
    for apk in /data/app/*.apk ; do
  zipalign -c 4 $apk;
  ZIPCHECK=$?;
  if [ $ZIPCHECK -eq 1 ]; then
    echo ZipAligning $($bsx basename $apk)  | $bsx tee -a $LOG_FILE;
    zipalign -f 4 $apk /cache/$($bsx basename $apk);
      if [ -e /cache/$($bsx basename $apk) ]; then
        $bsx cp -f -p /cache/$($bsx basename $apk) $apk  | $bsx tee -a $LOG_FILE;
        rm /cache/$($bsx basename $apk);
      else
        echo ZipAligning $($bsx basename $apk) Failed  | $bsx tee -a $LOG_FILE;
      fi;
  else
    echo ZipAlign already completed on $apk  | $bsx tee -a $LOG_FILE;
  fi;
       done;
echo Automatic ZipAlign finished at $( date +%m-%d-%Y %H:%M:%S ) | $bsx tee -a $LOG_FILE;
echo 优化完成
echo 回车键重启手机
read re
reboot
sleep 2
$cl
xtyh
}
function sql()
{
$cl
echo 正在开始优化

RUN_EVERY=172800
sqli=sqlite3
cp $crom/libncurses.so /system/lib/libncurses.so
for i in \
`$bsx find /data -iname *.db`;
do \
$sqli $i 'VACUUM;';
$sqli $i 'REINDEX;';
done;

if [ -d /dbdata ]; then
  for i in \
  `$bsx find /dbdata -iname *.db`;
  do \
    $sqli $i 'VACUUM;';
    $sqli $i 'REINDEX;';
  done;
fi;


if [ -d /datadata ]; then
  for i in \
  `$bsx find /datadata -iname *.db`;
  do \
    $sqli $i 'VACUUM;';
    $sqli $i 'REINDEX;';
  done;
fi;


for i in \
`$bsx find /sdcard -iname *.db`;
do \
  $sqli $i 'VACUUM;';
  $sqli $i 'REINDEX;';
done;
echo 优化完成
echo 你的手机将会重启
read re
reboot
Dream
sleep 2
$cl
xtyh
}

function vm()
{
$cl

echo -n 当前你的vm内存值:
getprop dalvik.vm.heapsize
echo 请输入你想要的vm内存值（推荐512m以下,单位m）:
read a
echo dalvik.vm.heapsize=$am>>$prop
echo 成功
sleep 2
$cl
qjtj
}
function dev()
{
$cl

echo 请输入数字，回车键确认
echo 1.安卓4.4以下
echo 2.安卓4.4及以上
echo 3.返回
read b
if [  $b -eq 1 ]
then
echo persist.sys.use_16bpp_alpha=1>>$prop
echo persist.sys.jit-mode=int:jit>>$prop
echo persist.sys.jit-mode=1>>$prop
echo persist.sys.scrollingcache=3>>$prop
echo 回车键重启手机
read key
$bsx rm -f /data/dalvik-cache/*
reboot
qjtj
elif [  $b -eq 2 ]
then
echo persist.sys.dalvik.vm.lib=libart.so>>$prop
echo 回车键重启手机
read key
$bsx rm -f /data/dalvik-cache/*
reboot
qjtj
elif [  $b -eq 3 ]
then
menu-Dream
else
wait;dev
fi
}
function znpz()
{
$cl

echo 请输入数字，回车键确认
echo 1.省电模式
echo 2.极速模式
echo 3.返回
read a
if [  $a -eq 1 ]
then
$cl
echo 正在启动终极任务杀手
killer
sleep 2
echo 暗杀完毕
sleep 1
echo 正在关闭CPU处理器
echo 0 > /sys/devices/system/cpu/cpu*/online;
echo 1 > /sys/devices/system/cpu/cpu0/online;
2>/dev/null
sleep 2
echo 关闭完成
sleep 1
echo 正在设置CPU调节模式
echo ondemand>/sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 2
echo 正在降低CPU频率
echo 7000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
sleep 2
echo 降低完毕
sleep 1
echo 正在降低IO队列
echo 128 > /sys/devices/platform/sprd-sdhci.0/mmc_host/mmc0/mmc0:aaaa/block/mmcblk0/queue/nr_requests
echo 200 > /proc/sys/vm/dirty_expire_centisecs
echo 500 > /proc/sys/vm/dirty_writeback_centisecs
echo 降低完毕
sleep 1
echo 完毕
sleep 1
echo 智能省电已完成
znpz
elif [  $a -eq 2 ]
then
echo 正在开启智能加速模式
sleep 2
echo 正在启动终极任务杀手
killer
sleep 2
echo 暗杀完毕
sleep 1
echo 正在开启CPU处理器
echo 1 > /sys/devices/system/cpu/cpu*/online;
echo 正在设置CPU调节模式
echo performance>/sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 1
echo 正在提高CPU频率
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 1
echo 正在加速网络
net
echo 正在加速sd卡
sd
echo 正在设置OOM
oom
echo 正在启动内存分配机制
ram
正在开启极速模式
rng
echo 智能加速完成
sleep 2
znpz
elif [  $a -eq 3 ]
then
menu-Dream
else
wait;znpz
fi
}
function swap()
{
$cl
echo 需知：开启Swap需要手机内核允许
echo Zram swap更加快速，两者可以一起使用
echo 每次开机后Swap默认关闭
echo 请输入数字，回车键确认
echo 1.zram swap模式
echo 2.system swap模式
echo 3.Swap使用情况
echo 4.返回主菜单
read swap
if [  $swap -eq 1 ]
then
$cl
echo 正在设置zram swap大小
$bsx echo 2107481648 > /sys/block/zram0/disksize
$bsx echo 2107481648 > /sys/block/zram1/disksize
$bsx echo 2107481648 > /sys/block/zram2/disksize
$bsx echo 2107481648 > /sys/block/zram1/disksize
sleep 1
echo 设置完毕

echo 正在开启zram swap

$bsx mkswap /dev/block/zram0
$bsx swapon /dev/block/zram0
$bsx mkswap /dev/block/zram1
$bsx swapon /dev/block/zram1
$bsx mkswap /dev/block/zram2
$bsx swapon /dev/block/zram2
$bsx mkswap /dev/block/zram1
$bsx swapon /dev/block/zram1
sleep 1
echo 开启成功
sleep 1
echo 正在设置swap使用阀值
sleep 1
$bsx echo 100 > /proc/sys/vm/swappiness
sleep 1
echo 设置完毕
sleep 1
echo 开启Zram swap完成
sleep 2
swap
elif [  $swap -eq 2 ]
then
$cl
echo 正在删除/system/swap.img
$bsx rm /system/swap.img
echo 正在创建/system/swap.img
$bsx dd if=/dev/zero of=/system/swap.img count=1024K bs=1
echo 正在挂载/system/swap.img
$bsx losetup /dev/block/loop7 /system/swap.img;
echo 正在开启/system/swap.img
$bsx mkswap /dev/block/loop7;
$bsx swapon /dev/block/loop7;
$bsx echo 25>/proc/sys/vm/swappiness;
echo 开启system swap完成
swap
elif [  $swap -eq 3 ]
then
$cl
$bsx free
sleep 3
swap
elif [  $swap -eq 4 ]
then
sleep 2
$cl
xtyh
else
wait;swap
fi
$cl
xtyh
}
function ram()
{
$cl
echo 正在配置内存管理机制
sleep 1
$bsx echo 0,1,2,4,7,13>/sys/module/lowmemorykiller/parameters/adj
echo 3 > /proc/sys/vm/page-cluster;

echo 10 > /proc/sys/vm/vfs_cache_pressure; 

echo 2000 > /proc/sys/vm/dirty_writeback_centisecs;

echo 1000 > /proc/sys/vm/dirty_expire_centisecs; 

echo 0 > /proc/sys/vm/laptop_mode; 
echo 90 > /proc/sys/vm/dirty_ratio; 
echo 85 > /proc/sys/vm/dirty_background_ratio;  

echo 0 > /proc/sys/vm/oom_kill_allocating_task;  
echo 8 > /proc/sys/vm/page-cluster; 
echo 4096 > /proc/sys/vm/min_free_kbytes; 
echo 10 > /proc/sys/fs/lease-break-time;
echo 0 > /proc/sys/vm/panic_on_oom; 
echo 10 > /proc/sys/fs/lease-break-time;
echo 配置完成
echo 正在配置空闲信息量
sleep 1
$bsx echo 1316,2048,1072,3120,7168,9216>/sys/module/lowmemorykiller/parameters/minfree
echo 配置完成
sleep 2
xnjs
}
function net()
{
$cl
echo 正在配置网络环境
$cl
$bsx sysctl -e -w net.core.wmem_max=524288;

$bsx sysctl -e -w net.core.rmem_max=524288;

$bsx sysctl -e -w net.ipv4.tcp_tw_recycle=1;

$bsx sysctl -e -w net.ipv4.tcp_rmem='6144,87380,524288;

$bsx sysctl -e -w net.ipv4.tcp_wmem='6144,87380,524288;

echo 0 > /proc/sys/net/ipv4/tcp_timestamps;
echo 1 > /proc/sys/net/ipv4/tcp_tw_reuse;
echo 1 > /proc/sys/net/ipv4/tcp_sack;
echo 1 > /proc/sys/net/ipv4/tcp_tw_recycle;
echo 1 > /proc/sys/net/ipv4/tcp_window_scaling;
echo 5 > /proc/sys/net/ipv4/tcp_keepalive_probes;
echo 30 > /proc/sys/net/ipv4/tcp_keepalive_intvl;
echo 30 > /proc/sys/net/ipv4/tcp_fin_timeout;
echo 404480 > /proc/sys/net/core/wmem_max;
echo 404480 > /proc/sys/net/core/rmem_max;
echo 256960 > /proc/sys/net/core/rmem_default;
echo 256960 > /proc/sys/net/core/wmem_default;
echo 4096,16384,404480 > /proc/sys/net/ipv4/tcp_wmem;
echo 4096,87380,404480 > /proc/sys/net/ipv4/tcp_rmem; 
setprop net.tcp.buffersize.default 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.wifi 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.umts 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.edge 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.gprs 4096,87380,256960,4096,16384,256960;
echo 配置完成
sleep 2
$cl
xnjs
}
function sd()
{
$cl
if [ -e /sys/devices/virtual/bdi/179:0/read_ahead_kb ]
  then
   echo 4096 > /sys/devices/virtual/bdi/179:0/read_ahead_kb;
echo 加速完成
echo -n 当前速度：
   cat /sys/devices/virtual/bdi/179:0/read_ahead_kb;
echo -n Kb/s
fi;
sleep 2
$cl
xnjs
}
function battery()
{
$cl
echo 正在开始配置电池加速引擎
sync
echo 3 > /proc/sys/vm/drop_caches;
echo 1 > /proc/sys/vm/drop_caches;
$bsx mount -t debugfs none /sys/kernel/debug
$bsx umount /sys/kernel/debug
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;

echo powersave>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq> /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 2
$cl
echo ===充电加速引擎===
echo 请连接手机充电器
echo 然后关闭屏幕
echo 静静地等待充电完毕
echo  -----------
echo  |    /    |
echo  -----------
echo 回车键退出
echo ===============
read fill
echo 1 > /sys/devices/system/cpu/cpu*/online;
sleep 1

echo ondemand>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq> /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 2
menu-Dream
}
function killer()
{
$cl
sync
echo 3 > /proc/sys/vm/drop_caches;
echo 1 > /proc/sys/vm/drop_caches;
echo 完成
sleep 2
$cl
menu-Dream
}
function oom()
{
$cl
echo 正在进行oom优化。。。
$cl
$bsx sysctl -e -w vm.oom_kill_allocating_task=0;

$bsx sysctl -e -w vm.panic_on_oom=0;

$bsx sysctl -e -w vm.dirty_background_ratio=60;

$bsx sysctl -e -w vm.dirty_ratio=95;

$bsx sysctl -e -w vm.min_free_kbytes=8192;

$bsx sysctl -e -w vm.vfs_cache_pressure=10;

$bsx sysctl -e -w vm.overcommit_memory=1;

$bsx sysctl -e -w vm.min_free_order_shift=4;

$bsx sysctl -e -w kernel.panic=0;

$bsx sysctl -e -w kernel.panic_on_oops=1;

$bsx sysctl -e -w kernel.msgmni=2048;

$bsx sysctl -e -w kernel.msgmax=64000;

$bsx sysctl -e -w kernel.shmmax=268435456;

$bsx sysctl -e -w kernel.sem=500 51200064 2048;

$bsx sysctl -e -w kernel.sched_features=24189;

$bsx sysctl -e -w kernel.hung_task_timeout_secs=30;

$bsx sysctl -e -w kernel.sched_latency_ns=18000000;

$bsx sysctl -e -w kernel.sched_min_granularity_ns=1500000;

$bsx sysctl -e -w kernel.sched_wakeup_granularity_ns=3000000;

$bsx sysctl -e -w kernel.sched_compat_yield=1;

$bsx sysctl -e -w kernel.sched_shares_ratelimit=256000;

$bsx sysctl -e -w kernel.sched_child_runs_first=0;

$bsx sysctl -e -w kernel.threads-max=5000;
$bsx sysctl -w vm.dirty_writeback_centisecs=2000;

$bsx sysctl -w vm.dirty_expire_centisecs=1000;
	echo 1000 > /proc/sys/vm/dirty_expire_centisecs
	echo 500 > /proc/sys/vm/dirty_writeback_centisecs
echo 优化成功
sleep 2
$cl
qjtj
}

function rng()
{
echo 正在开启极速模式
if [ -e /data/rngd.pid ]
then
rm /data/rngd.pid
fi
	echo 1000 > /proc/sys/vm/dirty_expire_centisecs
	echo 500 > /proc/sys/vm/dirty_writeback_centisecs
rngd -s 4096 -t 0.25 -W 90
echo 开启成功
sleep 2
xnjs
}
function cpu()
{
$cl
echo 请输入数字，回车键确认
echo 1.CPU核心开关
echo 2.CPU频率调节
echo 3.返回主菜单
read cpu
if [  $cpu -eq 1 ]
then
cpu-1
elif [  $cpu -eq 2 ]
then
cpu-2
elif [  $cpu -eq 3 ]
then
qjtj
else
wait;cpu
fi
}
function cpu-1()
{
$cl
echo 请视手机情况和个人需求合理配置
echo 每次开机后都需要重新配置
echo 请输入要开启的cpu数量，回车键确认
read cpus
if [  $cpus -eq 1 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 完成
sleep 2
elif [  $cpus -eq 2 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 完成
sleep 2
elif [  $cpus -eq 3 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 完成
sleep 2
elif [  $cpus -eq 4 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 完成
sleep 2
elif [  $cpus -eq 5 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
elif [  $cpus -eq 6 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;

elif [  $cpus -eq 7 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;

elif [  $cpus -eq 8 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;

elif [  $cpus -eq 9 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;
echo 1 > /sys/devices/system/cpu/cpu8/online;

elif [  $cpus -eq 10 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;
echo 1 > /sys/devices/system/cpu/cpu8/online;
echo 1 > /sys/devices/system/cpu/cpu9/online;
echo 完成
sleep 2
else
echo 1 > /sys/devices/system/cpu/cpu*/online;
fi
echo 完成
sleep 2
cpu
}
function cpu-2()
{
$cl
echo 请输入数字，回车键确认
echo 1.普通用户模式
echo 2.高级学者模式
echo 3.返回上级菜单
read cpuer
if [  $cpuer -eq 1 ]
then
cpu-2-1
elif [  $cpuer -eq 2 ]
then
$cl
cpu-2-2
elif [  $cpuer -eq 3 ]
then
cpu
else
wait;cpu
fi
}
function cpu-2-1()
{
$cl
echo 请输入数字，回车键确认
echo 1.超级性能模式
echo 2.终极省电模式
echo 3.智能分配模式
echo 4.返回上级菜单模式
read mode
if [  $mode -eq 1 ]
then
clear
echo 正在配置
sleep 3
echo performance>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
cpu-2-1
elif [  $mode -eq 2 ]
then
$cl
echo 正在配置
sleep 3
echo powersave>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
cpu-2-1
elif [  $mode -eq 3 ]
then
$cl
echo 正在配置
sleep 3
echo ondemand>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
cpu-2-1
elif [  $mode -eq 4 ]
then
cpu-2
else
wait;cpu-2
fi
}
function cpu-2-2()
{
$cl
echo 当前你的内核支持以下模式：
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors
echo 请输入需要的模式名称，回车键确认
read gov
if [ $gov == userspace ]
then 
$cl
echo $gov > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
cpu-3
else
echo $gov > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
fi
cpu-2
}
function cpu-3()
{
$cl
echo  警告：频率需在以下范围内
echo -n cpu最大可调频率：
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq
echo -n cpu最小可调频率：
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq
echo  
echo -n 请输入所需频率最大值：
read max
echo -n 请输入所需频率最小值：
read min
echo -n 请输入所需当前频率：
read speed

echo $max > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

echo $min > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo $speed > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
echo 完成
sleep 2
$cl
cpu-2
}

function about()
{
$cl
echo "    《梦OS》"
echo =====梦卫士=====
echo ==专业的加速程序==
echo World is my heart.
echo =================
echo =====版权所有======
read tap
$cl
echo ==================
echo 开发者:Android魔法师
echo 我的QQ:1549529658
echo ======================
echo 技术团队：Android Family
echo QQ群:399409189
echo 欢迎爱好者加入
echo ==================
read tap
$cl
echo ==================
echo ===部分源码改自网络===
echo 我非常热爱文学和科学
echo 如果你愿意，欢迎和我成为好友
echo ==================
read tap
$cl
echo 梦想初生的夜里
echo 一场风雨
echo 眼泪悄悄哭泣
echo 淹灭了叛逆
echo 依旧那样曾经的你
echo 把眼泪藏在心底
echo 勇敢的闯入暴风雨
read over
$cl
echo 记住，在人生的道路上
echo 充满了艰难险阻和暴风骤雨
echo 要在历史的潮流里塑就你
echo 在独自前行的夜雨里
echo 永远不要忘了梦想和你自己
read rainy
Dream
}
function exit-menu()
{
$cl
sleep 1
echo   -n 记住，
sleep 1
echo   -n 在

sleep 1
echo   -n 人生

sleep 1
echo   -n 旅途中

sleep 1
echo   -n 的

sleep 1
echo   -n 漫长

sleep 1
echo   -n 黑夜里

sleep 1

echo   -n ，

sleep 1
echo -n "
"
sleep 1
echo -n 不要
sleep 1
echo   -n 忘了

sleep 1
echo   -n 梦想

sleep 1
echo   -n 和

sleep 1
echo   -n 那个

sleep 1
echo   -n 最初的

sleep 1
echo   -n 自己

sleep 1
echo   -n "。
"

sleep 3
echo -e "\033[30;49;0m"
$cl
exit
}
function start-menu()
{
sleep 1
echo -e "\033[33;49;1m"
$cl
echo 欢迎使用梦OS
sleep 3
$cl
echo 正在启动Shell程序。。。
sleep 5
$cl
echo 加载中，亲
sleep 3
Dream
}
function check-root()
{
echo -e "\033[33;49;1m"

echo 请授权root权限！！
sleep 3
echo -e "\033[30;49;0m"

}
function install-Dreamos()
{
echo ====GHOST程序====
mkdir /system/Dreamos
mv $PWDDreamos/* /system/Dreamos
mv $PWDDream /system/bin/Dream
if [ ! -d /system/Dreamos/ ]
then
echo 安装失败
echo -e "\033[30;49;0m"
else
echo 安装完成
echo 正在启动主程序。。
start-menu
fi
}
function install-Dreamos()
{
echo /system/Dreamos系统已被卸载，请重新安装程序
sleep 3
echo -e "\033[30;49;0m"
}
} 2>>$DreamHome/log.txt
DreamID=`$bsx id -u`
if [ $DreamID != 0 ]
then
check-root
exit 1
fi
if [ ! -e /system/bin/Dream ]
then
install-Dreamos
elif [ ! -d /system/Dreamos ]
then
install-Dream
exit 1
else
start-menu
exit 1
fi
exit 1
}   2>>$DreamHome/log.txt
" > $DreamHome/Dream.sh
else
wait;Dream
fi
}

function menu-Dream()
{
$cl
echo 0.一键加速

echo 1.性能增强
echo 2.系统优化
echo 3.全局调节
echo 4.智能配置
echo 5.充电引擎

echo 6.垃圾清理

echo 7.退出系统
read m
if [  $m -eq 0 ]
then
kill-all
elif [  $m -eq 1 ]
then
xnjs
elif [  $m -eq 2 ]
then
xtyh
elif [  $m -eq 3 ]
then
qjtj
elif [  $m -eq 4 ]
then
znpz
elif [  $m -eq 5 ]
then
battery
elif [  $m -eq 6 ]
then
kill-worst
elif [  $m -eq 7 ]
then
Dream
else
wait;menu-Dream
fi
}
function kill-all()
{
$cl
echo 正在清理加速中。。。
echo 运行加速程序。。。
sync;
sleep 3
echo 调整堆桩线程。。。
echo 3 > /proc/sys/vm/drop_caches;
sleep 2
echo 进一步调整堆桩线程。。。
echo 1 > /proc/sys/vm/drop_caches;
sleep 1
echo 加速完成
sleep 3
$cl
menu-Dream
}
function kill-worst()
{
$cl
echo 危险警报！！此操作将清除包括Log日志和tmp文件的垃圾，请不要在测试和下载过程中使用！
echo 1.继续
echo 2.退出
read a
if [ $a = 1 ]
then
worst-killer
else
$cl
menu-Dream
fi
}
function worst-killer()
{
echo 正在加载中。。。
sleep 3
echo 开始清理/data下的垃圾文件。。。
rm -f /cache/*.apk
rm -f /cache/*.tmp
rm -f /data/dalvik-cache/*.apk
rm -f /data/dalvik-cache/*.tmp
rm -f /data/local/tmp/*.apk
rm -r /data/tmp/*
rm -r /data/system/usagestats/*
rm -r /data/system/appusagestats/*
rm -r /data/system/dropbox/*
rm -r /data/tombstones/*
rm -r /data/anr/*

if [ -e /data/system/userbehavior.db ]
then
  rm -f /data/system/userbehavior.db
fi

if [ -d /data/system/usagestats ]
then
  chmod 400 /data/system/usagestats
fi

if [ -d /data/system/appusagestats ]
then
  chmod 400 /data/system/appusagestats
fi
if [ -e /dev/log/main ]
then
  rm -f /dev/log/main
fi
sleep 6
echo 开始清理/sdcard下的垃圾
rm -f $sdrom/*.log
rm -f $sdrom/*.tmp
rm -f $sdrom/*/*.log
rm -f $sdrom/*/*.tmp
rm -f $sdrom/*LOG*
rm -f $sdrom/*log*
echo "完成"
sleep 3
$cl
menu-Dream
}
function xnjs()
{
$cl
echo 请输入数字，回车键确认
echo 1.网络加速
echo 2.内存加速
echo 3.运存优化
echo 4.极速模式
echo 5.返回
read v
if [  $v -eq 1 ]
then
net
elif [  $v -eq 2 ]
then
sd
elif [  $v -eq 3 ]
then
ram
elif [  $v -eq 4 ]
then
rng
elif [  $v -eq 5 ]
then
menu-Dream
else
wait;xnjs
fi
}
function xtyh()
{
$cl
echo 请输入数字，回车键确认
echo 1.虚拟内存
echo 2.ODEX优化
echo 3.ZIP优化
echo 4.SQL优化
echo 5.返回
read a
if [  $a -eq 1 ]
then
swap
elif [  $a -eq 2 ]
then
odex
elif [  $a -eq 3 ]
then
zipa
elif [  $a -eq 4 ]
then
sql
elif [  $a -eq 5 ]
then
menu-Dream
else
wait;xtyh
fi
}
function qjtj()
{
$cl
echo 请输入数字，回车键确认
echo 1.内存调节
echo 2.CPU调节
echo 3.OOM调节
echo 4.运行模式
echo 5.返回
read a
if [  $a -eq 1 ]
then
vm
elif [  $a -eq 2 ]
then
cpu
elif [  $a -eq 3 ]
then
oom
elif [  $a -eq 4 ]
then
dev
elif [  $a -eq 5 ]
then
menu-Dream
else
wait;qjtj
fi
}
function odex()
{
$bsx mount -orw,remount /system

odexframework=/system/framework/core.odex;
odexapp=/system/app/Phone.odex;
odexapp1=/system/app/BlurPhone.odex;

dexopt_core()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo ODEX files present in /system/app, exiting
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo ODEX files present in /system/framework, exiting
	sleep 2
$cl
xtyh
else
	echo  
	echo Dexopting core framework archives, do not interrupt
	echo  
	dexopt-wrapper /system/framework/core.jar /system/framework/core.odex
	dexopt-wrapper /system/framework/bouncycastle.jar /system/framework/bouncycastle.odex
	dexopt-wrapper /system/framework/ext.jar /system/framework/ext.odex
	dexopt-wrapper /system/framework/framework.jar /system/framework/framework.odex
	dexopt-wrapper /system/framework/android.policy.jar /system/framework/android.policy.odex
	dexopt-wrapper /system/framework/services.jar /system/framework/services.odex
	dexopt-wrapper /system/framework/core-junit.jar /system/framework/core-junit.odex
	dexopt-wrapper /system/framework/com.motorola.android.frameworks.jar /system/framework/com.motorola.android.frameworks.odex
	dexopt-wrapper /system/framework/com.motorola.android.widget.jar /system/framework/com.motorola.android.widget.odex
	dexopt-wrapper /system/framework/com.motorola.android.telephony.jar /system/framework/com.motorola.android.telephony.odex
	dexopt-wrapper /system/framework/android.test.runner.jar /system/framework/android.test.runner.odex
fi; fi
}

dexopt_rest()
{
echo Dexopting secondary framework archives, do not interrupt
for j in /system/framework/*.jar
do
	odexj=`echo $j | sed -e 's/.jar/.odex/g'`
	if [ -f $odexj ]; then
		echo ++++++++++++
		echo $odexj already exists, skipping
		echo ++++++++++++
	else
		echo dexopt-wrapper $j $odex
		dexopt-wrapper $j $odexj
	fi
done
}

dexopt_app()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo 已经ODEX
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo Dexopting system applications, do not interrupt;
	for i in /system/app/*.apk
	do
		odex=`echo $i | sed -e 's/.apk/.odex/g'`
		echo dexopt-wrapper $i $odex
		dexopt-wrapper $i $odex
	done
else
	echo Please dexopt /system/framework first, exiting
	sleep 2
$cl
xtyh
fi; fi
}
dexopt_dataapp()
{
if [ -f $odexapp ] || [ -f $odexapp1 ]; then
	echo 已经ODEX
	sleep 2
$cl
xtyh
else if [ -f $odexframework ]; then
	echo Dexopting system applications, do not interrupt;
	for i in /data/app/*.apk
	do
		odex=`echo $i | sed -e 's/.apk/.odex/g'`
		echo dexopt-wrapper $i $odex
		dexopt-wrapper $i $odex
	done
	$bsx rm -f /data/dalvik-cache/*
else
	echo Please dexopt /system/framework first, exiting
	sleep 2
$cl
xtyh
fi; fi
}
	dexopt_core
	dexopt_rest
	dexopt_app
	dexopt_dataapp
$bsx mount -oro,remount /system

echo odex完成
echo 回车键重启手机
read re
reboot
}
function zipa()
{
RUN_EVERY=172800

LOG_FILE=/data/zipalign_data.log
    if [ -e $LOG_FILE ]; then
      rm $LOG_FILE;
    fi;


echo Starting Automatic ZipAlign $( date +%m-%d-%Y %H:%M:%S ) | $bsx tee -a $LOG_FILE;
    for apk in /data/app/*.apk ; do
  zipalign -c 4 $apk;
  ZIPCHECK=$?;
  if [ $ZIPCHECK -eq 1 ]; then
    echo ZipAligning $($bsx basename $apk)  | $bsx tee -a $LOG_FILE;
    zipalign -f 4 $apk /cache/$($bsx basename $apk);
      if [ -e /cache/$($bsx basename $apk) ]; then
        $bsx cp -f -p /cache/$($bsx basename $apk) $apk  | $bsx tee -a $LOG_FILE;
        rm /cache/$($bsx basename $apk);
      else
        echo ZipAligning $($bsx basename $apk) Failed  | $bsx tee -a $LOG_FILE;
      fi;
  else
    echo ZipAlign already completed on $apk  | $bsx tee -a $LOG_FILE;
  fi;
       done;
echo Automatic ZipAlign finished at $( date +%m-%d-%Y %H:%M:%S ) | $bsx tee -a $LOG_FILE;
echo 优化完成
echo 回车键重启手机
read re
reboot
sleep 2
$cl
xtyh
}
function sql()
{
$cl
echo 正在开始优化

RUN_EVERY=172800
sqli=sqlite3
cp $crom/libncurses.so /system/lib/libncurses.so
for i in \
`$bsx find /data -iname *.db`;
do \
$sqli $i 'VACUUM;';
$sqli $i 'REINDEX;';
done;

if [ -d /dbdata ]; then
  for i in \
  `$bsx find /dbdata -iname *.db`;
  do \
    $sqli $i 'VACUUM;';
    $sqli $i 'REINDEX;';
  done;
fi;


if [ -d /datadata ]; then
  for i in \
  `$bsx find /datadata -iname *.db`;
  do \
    $sqli $i 'VACUUM;';
    $sqli $i 'REINDEX;';
  done;
fi;


for i in \
`$bsx find /sdcard -iname *.db`;
do \
  $sqli $i 'VACUUM;';
  $sqli $i 'REINDEX;';
done;
echo 优化完成
echo 你的手机将会重启
read re
reboot
Dream
sleep 2
$cl
xtyh
}

function vm()
{
$cl

echo -n 当前你的vm内存值:
getprop dalvik.vm.heapsize
echo 请输入你想要的vm内存值（推荐512m以下,单位m）:
read a
echo dalvik.vm.heapsize=$am>>$prop
echo 成功
sleep 2
$cl
qjtj
}
function dev()
{
$cl

echo 请输入数字，回车键确认
echo 1.安卓4.4以下
echo 2.安卓4.4及以上
echo 3.返回
read b
if [  $b -eq 1 ]
then
echo persist.sys.use_16bpp_alpha=1>>$prop
echo persist.sys.jit-mode=int:jit>>$prop
echo persist.sys.jit-mode=1>>$prop
echo persist.sys.scrollingcache=3>>$prop
echo 回车键重启手机
read key
$bsx rm -f /data/dalvik-cache/*
reboot
qjtj
elif [  $b -eq 2 ]
then
echo persist.sys.dalvik.vm.lib=libart.so>>$prop
echo 回车键重启手机
read key
$bsx rm -f /data/dalvik-cache/*
reboot
qjtj
elif [  $b -eq 3 ]
then
menu-Dream
else
wait;dev
fi
}
function znpz()
{
$cl

echo 请输入数字，回车键确认
echo 1.省电模式
echo 2.极速模式
echo 3.返回
read a
if [  $a -eq 1 ]
then
$cl
echo 正在启动终极任务杀手
killer
sleep 2
echo 暗杀完毕
sleep 1
echo 正在关闭CPU处理器
echo 0 > /sys/devices/system/cpu/cpu*/online;
echo 1 > /sys/devices/system/cpu/cpu0/online;
2>/dev/null
sleep 2
echo 关闭完成
sleep 1
echo 正在设置CPU调节模式
echo ondemand>/sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 2
echo 正在降低CPU频率
echo 7000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
sleep 2
echo 降低完毕
sleep 1
echo 正在降低IO队列
echo 128 > /sys/devices/platform/sprd-sdhci.0/mmc_host/mmc0/mmc0:aaaa/block/mmcblk0/queue/nr_requests
echo 200 > /proc/sys/vm/dirty_expire_centisecs
echo 500 > /proc/sys/vm/dirty_writeback_centisecs
echo 降低完毕
sleep 1
echo 完毕
sleep 1
echo 智能省电已完成
znpz
elif [  $a -eq 2 ]
then
echo 正在开启智能加速模式
sleep 2
echo 正在启动终极任务杀手
killer
sleep 2
echo 暗杀完毕
sleep 1
echo 正在开启CPU处理器
echo 1 > /sys/devices/system/cpu/cpu*/online;
echo 正在设置CPU调节模式
echo performance>/sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 1
echo 正在提高CPU频率
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 1
echo 正在加速网络
net
echo 正在加速sd卡
sd
echo 正在设置OOM
oom
echo 正在启动内存分配机制
ram
正在开启极速模式
rng
echo 智能加速完成
sleep 2
znpz
elif [  $a -eq 3 ]
then
menu-Dream
else
wait;znpz
fi
}
function swap()
{
$cl
echo 需知：开启Swap需要手机内核允许
echo Zram swap更加快速，两者可以一起使用
echo 每次开机后Swap默认关闭
echo 请输入数字，回车键确认
echo 1.zram swap模式
echo 2.system swap模式
echo 3.Swap使用情况
echo 4.返回主菜单
read swap
if [  $swap -eq 1 ]
then
$cl
echo 正在设置zram swap大小
$bsx echo 2107481648 > /sys/block/zram0/disksize
$bsx echo 2107481648 > /sys/block/zram1/disksize
$bsx echo 2107481648 > /sys/block/zram2/disksize
$bsx echo 2107481648 > /sys/block/zram1/disksize
sleep 1
echo 设置完毕

echo 正在开启zram swap

$bsx mkswap /dev/block/zram0
$bsx swapon /dev/block/zram0
$bsx mkswap /dev/block/zram1
$bsx swapon /dev/block/zram1
$bsx mkswap /dev/block/zram2
$bsx swapon /dev/block/zram2
$bsx mkswap /dev/block/zram1
$bsx swapon /dev/block/zram1
sleep 1
echo 开启成功
sleep 1
echo 正在设置swap使用阀值
sleep 1
$bsx echo 100 > /proc/sys/vm/swappiness
sleep 1
echo 设置完毕
sleep 1
echo 开启Zram swap完成
sleep 2
swap
elif [  $swap -eq 2 ]
then
$cl
echo 正在删除/system/swap.img
$bsx rm /system/swap.img
echo 正在创建/system/swap.img
$bsx dd if=/dev/zero of=/system/swap.img count=1024K bs=1
echo 正在挂载/system/swap.img
$bsx losetup /dev/block/loop7 /system/swap.img;
echo 正在开启/system/swap.img
$bsx mkswap /dev/block/loop7;
$bsx swapon /dev/block/loop7;
$bsx echo 25>/proc/sys/vm/swappiness;
echo 开启system swap完成
swap
elif [  $swap -eq 3 ]
then
$cl
$bsx free
sleep 3
swap
elif [  $swap -eq 4 ]
then
sleep 2
$cl
xtyh
else
wait;swap
fi
$cl
xtyh
}
function ram()
{
$cl
echo 正在配置内存管理机制
sleep 1
$bsx echo 0,1,2,4,7,13>/sys/module/lowmemorykiller/parameters/adj
echo 3 > /proc/sys/vm/page-cluster;

echo 10 > /proc/sys/vm/vfs_cache_pressure; 

echo 2000 > /proc/sys/vm/dirty_writeback_centisecs;

echo 1000 > /proc/sys/vm/dirty_expire_centisecs; 

echo 0 > /proc/sys/vm/laptop_mode; 
echo 90 > /proc/sys/vm/dirty_ratio; 
echo 85 > /proc/sys/vm/dirty_background_ratio;  

echo 0 > /proc/sys/vm/oom_kill_allocating_task;  
echo 8 > /proc/sys/vm/page-cluster; 
echo 4096 > /proc/sys/vm/min_free_kbytes; 
echo 10 > /proc/sys/fs/lease-break-time;
echo 0 > /proc/sys/vm/panic_on_oom; 
echo 10 > /proc/sys/fs/lease-break-time;
echo 配置完成
echo 正在配置空闲信息量
sleep 1
$bsx echo 1316,2048,1072,3120,7168,9216>/sys/module/lowmemorykiller/parameters/minfree
echo 配置完成
sleep 2
xnjs
}
function net()
{
$cl
echo 正在配置网络环境
$cl
$bsx sysctl -e -w net.core.wmem_max=524288;

$bsx sysctl -e -w net.core.rmem_max=524288;

$bsx sysctl -e -w net.ipv4.tcp_tw_recycle=1;

$bsx sysctl -e -w net.ipv4.tcp_rmem='6144,87380,524288;

$bsx sysctl -e -w net.ipv4.tcp_wmem='6144,87380,524288;

echo 0 > /proc/sys/net/ipv4/tcp_timestamps;
echo 1 > /proc/sys/net/ipv4/tcp_tw_reuse;
echo 1 > /proc/sys/net/ipv4/tcp_sack;
echo 1 > /proc/sys/net/ipv4/tcp_tw_recycle;
echo 1 > /proc/sys/net/ipv4/tcp_window_scaling;
echo 5 > /proc/sys/net/ipv4/tcp_keepalive_probes;
echo 30 > /proc/sys/net/ipv4/tcp_keepalive_intvl;
echo 30 > /proc/sys/net/ipv4/tcp_fin_timeout;
echo 404480 > /proc/sys/net/core/wmem_max;
echo 404480 > /proc/sys/net/core/rmem_max;
echo 256960 > /proc/sys/net/core/rmem_default;
echo 256960 > /proc/sys/net/core/wmem_default;
echo 4096,16384,404480 > /proc/sys/net/ipv4/tcp_wmem;
echo 4096,87380,404480 > /proc/sys/net/ipv4/tcp_rmem; 
setprop net.tcp.buffersize.default 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.wifi 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.umts 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.edge 4096,87380,256960,4096,16384,256960;
setprop net.tcp.buffersize.gprs 4096,87380,256960,4096,16384,256960;
echo 配置完成
sleep 2
$cl
xnjs
}
function sd()
{
$cl
if [ -e /sys/devices/virtual/bdi/179:0/read_ahead_kb ]
  then
   echo 4096 > /sys/devices/virtual/bdi/179:0/read_ahead_kb;
echo 加速完成
echo -n 当前速度：
   cat /sys/devices/virtual/bdi/179:0/read_ahead_kb;
echo -n Kb/s
fi;
sleep 2
$cl
xnjs
}
function battery()
{
$cl
echo 正在开始配置电池加速引擎
sync
echo 3 > /proc/sys/vm/drop_caches;
echo 1 > /proc/sys/vm/drop_caches;
$bsx mount -t debugfs none /sys/kernel/debug
$bsx umount /sys/kernel/debug
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;

echo powersave>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq> /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 2
$cl
echo ===充电加速引擎===
echo 请连接手机充电器
echo 然后关闭屏幕
echo 静静地等待充电完毕
echo  -----------
echo  |    /    |
echo  -----------
echo 回车键退出
echo ===============
read fill
echo 1 > /sys/devices/system/cpu/cpu*/online;
sleep 1

echo ondemand>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq>/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq> /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
sleep 2
menu-Dream
}
function killer()
{
$cl
sync
echo 3 > /proc/sys/vm/drop_caches;
echo 1 > /proc/sys/vm/drop_caches;
echo 完成
sleep 2
$cl
menu-Dream
}
function oom()
{
$cl
echo 正在进行oom优化。。。
$cl
$bsx sysctl -e -w vm.oom_kill_allocating_task=0;

$bsx sysctl -e -w vm.panic_on_oom=0;

$bsx sysctl -e -w vm.dirty_background_ratio=60;

$bsx sysctl -e -w vm.dirty_ratio=95;

$bsx sysctl -e -w vm.min_free_kbytes=8192;

$bsx sysctl -e -w vm.vfs_cache_pressure=10;

$bsx sysctl -e -w vm.overcommit_memory=1;

$bsx sysctl -e -w vm.min_free_order_shift=4;

$bsx sysctl -e -w kernel.panic=0;

$bsx sysctl -e -w kernel.panic_on_oops=1;

$bsx sysctl -e -w kernel.msgmni=2048;

$bsx sysctl -e -w kernel.msgmax=64000;

$bsx sysctl -e -w kernel.shmmax=268435456;

$bsx sysctl -e -w kernel.sem=500 51200064 2048;

$bsx sysctl -e -w kernel.sched_features=24189;

$bsx sysctl -e -w kernel.hung_task_timeout_secs=30;

$bsx sysctl -e -w kernel.sched_latency_ns=18000000;

$bsx sysctl -e -w kernel.sched_min_granularity_ns=1500000;

$bsx sysctl -e -w kernel.sched_wakeup_granularity_ns=3000000;

$bsx sysctl -e -w kernel.sched_compat_yield=1;

$bsx sysctl -e -w kernel.sched_shares_ratelimit=256000;

$bsx sysctl -e -w kernel.sched_child_runs_first=0;

$bsx sysctl -e -w kernel.threads-max=5000;
$bsx sysctl -w vm.dirty_writeback_centisecs=2000;

$bsx sysctl -w vm.dirty_expire_centisecs=1000;
	echo 1000 > /proc/sys/vm/dirty_expire_centisecs
	echo 500 > /proc/sys/vm/dirty_writeback_centisecs
echo 优化成功
sleep 2
$cl
qjtj
}

function rng()
{
echo 正在开启极速模式
if [ -e /data/rngd.pid ]
then
rm /data/rngd.pid
fi
	echo 1000 > /proc/sys/vm/dirty_expire_centisecs
	echo 500 > /proc/sys/vm/dirty_writeback_centisecs
rngd -s 4096 -t 0.25 -W 90
echo 开启成功
sleep 2
xnjs
}
function cpu()
{
$cl
echo 请输入数字，回车键确认
echo 1.CPU核心开关
echo 2.CPU频率调节
echo 3.返回主菜单
read cpu
if [  $cpu -eq 1 ]
then
cpu-1
elif [  $cpu -eq 2 ]
then
cpu-2
elif [  $cpu -eq 3 ]
then
qjtj
else
wait;cpu
fi
}
function cpu-1()
{
$cl
echo 请视手机情况和个人需求合理配置
echo 每次开机后都需要重新配置
echo 请输入要开启的cpu数量，回车键确认
read cpus
if [  $cpus -eq 1 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 完成
sleep 2
elif [  $cpus -eq 2 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 完成
sleep 2
elif [  $cpus -eq 3 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 完成
sleep 2
elif [  $cpus -eq 4 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 完成
sleep 2
elif [  $cpus -eq 5 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
elif [  $cpus -eq 6 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;

elif [  $cpus -eq 7 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;

elif [  $cpus -eq 8 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;

elif [  $cpus -eq 9 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;
echo 1 > /sys/devices/system/cpu/cpu8/online;

elif [  $cpus -eq 10 ]
then
echo 0 > /sys/devices/system/cpu/cpu*/online;
sleep 1
echo 1 > /sys/devices/system/cpu/cpu0/online;
echo 1 > /sys/devices/system/cpu/cpu1/online;
echo 1 > /sys/devices/system/cpu/cpu2/online;
echo 1 > /sys/devices/system/cpu/cpu3/online;
echo 1 > /sys/devices/system/cpu/cpu4/online;
echo 1 > /sys/devices/system/cpu/cpu5/online;
echo 1 > /sys/devices/system/cpu/cpu6/online;
echo 1 > /sys/devices/system/cpu/cpu7/online;
echo 1 > /sys/devices/system/cpu/cpu8/online;
echo 1 > /sys/devices/system/cpu/cpu9/online;
echo 完成
sleep 2
else
echo 1 > /sys/devices/system/cpu/cpu*/online;
fi
echo 完成
sleep 2
cpu
}
function cpu-2()
{
$cl
echo 请输入数字，回车键确认
echo 1.普通用户模式
echo 2.高级学者模式
echo 3.返回上级菜单
read cpuer
if [  $cpuer -eq 1 ]
then
cpu-2-1
elif [  $cpuer -eq 2 ]
then
$cl
cpu-2-2
elif [  $cpuer -eq 3 ]
then
cpu
else
wait;cpu
fi
}
function cpu-2-1()
{
$cl
echo 请输入数字，回车键确认
echo 1.超级性能模式
echo 2.终极省电模式
echo 3.智能分配模式
echo 4.返回上级菜单模式
read mode
if [  $mode -eq 1 ]
then
clear
echo 正在配置
sleep 3
echo performance>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
cpu-2-1
elif [  $mode -eq 2 ]
then
$cl
echo 正在配置
sleep 3
echo powersave>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
cpu-2-1
elif [  $mode -eq 3 ]
then
$cl
echo 正在配置
sleep 3
echo ondemand>/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
cpu-2-1
elif [  $mode -eq 4 ]
then
cpu-2
else
wait;cpu-2
fi
}
function cpu-2-2()
{
$cl
echo 当前你的内核支持以下模式：
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors
echo 请输入需要的模式名称，回车键确认
read gov
if [ $gov == userspace ]
then 
$cl
echo $gov > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
cpu-3
else
echo $gov > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 完成
sleep 2
fi
cpu-2
}
function cpu-3()
{
$cl
echo  警告：频率需在以下范围内
echo -n cpu最大可调频率：
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq
echo -n cpu最小可调频率：
cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq
echo  
echo -n 请输入所需频率最大值：
read max
echo -n 请输入所需频率最小值：
read min
echo -n 请输入所需当前频率：
read speed

echo $max > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

echo $min > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo $speed > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
echo 完成
sleep 2
$cl
cpu-2
}

function about()
{
$cl
echo "    《梦OS》"
echo =====梦卫士=====
echo ==专业的加速程序==
echo World is my heart.
echo =================
echo =====版权所有======
read tap
$cl
echo ==================
echo 开发者:Android魔法师
echo 我的QQ:1549529658
echo ======================
echo 技术团队：Android Family
echo QQ群:399409189
echo 欢迎爱好者加入
echo ==================
read tap
$cl
echo ==================
echo ===部分源码改自网络===
echo 我非常热爱文学和科学
echo 如果你愿意，欢迎和我成为好友
echo ==================
read tap
$cl
echo 梦想初生的夜里
echo 一场风雨
echo 眼泪悄悄哭泣
echo 淹灭了叛逆
echo 依旧那样曾经的你
echo 把眼泪藏在心底
echo 勇敢的闯入暴风雨
read over
$cl
echo 记住，在人生的道路上
echo 充满了艰难险阻和暴风骤雨
echo 要在历史的潮流里塑就你
echo 在独自前行的夜雨里
echo 永远不要忘了梦想和你自己
read dream
$cl
sleep 1
echo   -n 记住，
sleep 1
echo   -n 在

sleep 1
echo   -n 人生

sleep 1
echo   -n 旅途中

sleep 1
echo   -n 的

sleep 1
echo   -n 漫长

sleep 1
echo   -n 黑夜里

sleep 1

echo   -n ，

sleep 1
echo -n "
"
sleep 1
echo -n 永远，

sleep 1
echo -n 不要
sleep 1
echo   -n 忘了

sleep 1
echo   -n 梦想

sleep 1
echo   -n 和

sleep 1
echo   -n 那个

sleep 1
echo   -n 最初的

sleep 1
echo   -n 自己

sleep 1
echo   -n "。
"

sleep 6
read rainy
Dream
}
function exit-menu()
{
$cl
echo 正在退出，搞机愉快。
sleep 3
echo -e "\033[30;49;0m"
$cl
exit
}
function start-menu()
{
sleep 1
echo -e "\033[33;49;1m"
$cl
echo 欢迎使用梦OS
sleep 3
$cl
echo 正在启动Shell程序。。。
sleep 5
$cl
echo 加载中，亲
sleep 3
Dream
}
function check-root()
{
echo -e "\033[33;49;1m"

echo 请授权root权限！！
sleep 3
echo -e "\033[30;49;0m"

}
function install-Dreamos()
{
echo ====GHOST程序====
mkdir /system/Dreamos
mv $PWDDreamos/* /system/Dreamos
mv $PWDDream /system/bin/Dream
if [ ! -d /system/Dreamos/ ]
then
echo 安装失败
echo -e "\033[30;49;0m"
else
echo 安装完成
echo 正在启动主程序。。
start-menu
fi
}
function install-Dreamos()
{
echo /system/Dreamos系统已被卸载，请重新安装程序
sleep 3
echo -e "\033[30;49;0m"
}
} 2>>$DreamHome/log.txt
DreamID=`$bsx id -u`
if [ $DreamID != 0 ]
then
check-root
exit 1
fi
if [ ! -e /system/bin/Dream ]
then
install-Dreamos
elif [ ! -d /system/Dreamos ]
then
install-Dream
exit 1
else
start-menu
exit 1
fi
exit 1
}   2>>$DreamHome/log.txt
