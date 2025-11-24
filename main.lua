require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "AndLua"
import "android.content.pm.PackageManager"
import "android.content.pm.ApplicationInfo"

activity.setTheme(R.Theme_Blue)
activity.setTitle("FKADS")
activity.setContentView(loadlayout(layout))

隐藏标题栏()
沉浸状态栏()

activity.setRequestedOrientation(1);

if os.execute("su") then
  os.execute("#")
 else
  import "android.content.DialogInterface"
  local dl=AlertDialog.Builder(activity)
  .setTitle("FKADS")
  .setMessage("该软件需要Root权限 如果您不知道什么是Root权限 请自行退出")
  .setPositiveButton("退出",DialogInterface
  .OnClickListener{
    onClick=function(v)
      import "android.media.MediaPlayer"
mediaPlayer = MediaPlayer()
mediaPlayer.reset()
mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/3.mp3")
mediaPlayer.prepareAsync()
mediaPlayer.setLooping(false)
mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    mediaPlayer.start()
  end
});
    task(100,function()
      结束程序()
      end)
    end
  })
  .create()
  dl.show()
end

链接="https://share.weiyun.com/a2V1kTc8" --在里面换上你的微云链接
--[[格式：
《公告》测试《公告》
《版本号》测试《版本号》
]]--
Http.get(链接,function(code,body)
  if code != 200 then
    os.exit()
   else
    网络=true
  end
  if 网络 == true then
    公告=body:match("《公告》(.-)《公告》")
    版本号=body:match("《版本号》(.-)《版本号》")
    -- pm = activity.getPackageManager();
    本地版本号 = activity.getPackageManager().getPackageInfo("top.fkadsnb.com",0).versionName
    if 本地版本号 != 版本号 then
      import "android.content.DialogInterface"
      local dl=AlertDialog.Builder(activity)
      .setTitle("FKADS")
      .setMessage("应用有更新啦！\n最新版本："..版本号)
      .setPositiveButton("更新",DialogInterface
      .OnClickListener{
        onClick=function(v)
          import "android.media.MediaPlayer"
mediaPlayer = MediaPlayer()
mediaPlayer.reset()
mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/3.mp3")
mediaPlayer.prepareAsync()
mediaPlayer.setLooping(false)
mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    mediaPlayer.start()
  end
});
task(100,function() 
          activity.setContentView(loadlayout(浏览器))
          liulanqi.loadUrl("https://www.123912.com/s/upqVjv-UvtNd")
          end)
        end
      })
      setNegativeButton("好的",nill)
      .create()
      dl.show()
    end
  end
end)

import "android.media.MediaPlayer"

提示("正在加载...")

if 文件是否存在("/sdcard/FKADS/Android") then
 else
  os.execute("mkdir -p /sdcard/FKADS/Script")
  os.execute("mkdir -p /sdcard/FKADS/Modules")
  os.execute([==[echo "com.smile.gifmaker
com.tencent.qqlive
comtencent.mtt
cn.wenyu.bodian
com.netease.cloudmusic
com.tencent.qqmusic
com.kugou.android
ctrip.realmecomm.app
vom.coolapk.market" > /sdcard/FKADS/Blacklist.txt]==])
  os.execute([==[
file=/sdcard/FKADS/Script
echo "#!/bin/bash
chmod 000 /data/user/0/com.smile.gifmaker/files/kssplash/" > $file/ks.sh
echo "#!/bin/bash
chmod 000 /data/user/0/com.tencent.qqlive/files/qad_cache/" > $file/txsp.sh
echo "#!/bin/bash
chmod 000 /data/user/0/com.tencent.mtt/files/dsdk/
chmod 000 /data/user/0/com.tencent.mtt/app_adnet/" > $file/qqllq.sh
echo "#!/bin/bash
chmod 000 /data/user/0/cn.wenyu.bodian/app_adnet/" > $file/bdyy.sh
echo "#!/bin/bash
chmod 000 /sdcard/Android/data/com.netease.cloudmusic/cache/Ad" > $file/wyyyy.sh
echo "#!/bin/bash
chmod 000 /data/user/0/com.tencent.qqmusic/app_adnet/
chmod 000 /data/user/0/com.tencent.qqmusic/cache/TMEAds/" > $file/qqyy.sh
echo "#!/bin/bash
rm -rf /data/user/0/com.kugou.android/app_adnet/*
rm -rf /data/user/0/com.kugou.android/files/kugou/.splash_v4/*
chmod 000 /data/user/0/com.kugou.android/app_adnet/
chmod 000 /data/user/0/com.kugou.android/files/kugou/.splash_v4" > $file/kgyy.sh
echo "#!/bin/bash
chmod 000 /data/media/0/Android/data/ctrip.android.view/cache/CTADCache/" > $file/xclx.sh
echo "#!/bin/bash
chmod 000 /sdcard/Android/data/com.realmecomm.app/files/Picture/advertise/" > $file/realmesq.sh
echo "#!/bin/bash
rm -rf /data/user/0/com.coolapk.market/app_adnet/*
chmod 000 /data/user/0/com.coolapk.market/app_adnet/
rm -rf /storage/emulated/0/Android/data/com.coolapk.market/cache/com_qq_e_download/*
chmod 000 /storage/emulated/0/Android/data/com.coolapk.market/cache/com_qq_e_download/
" > $file/ka.sh
]==])
  os.execute([==[echo "8 - 16" > /sdcard/FKADS/Android]==])

end

function ksqc.onClick
  水珠动画(ksqc,500)
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
  task(500,function()
    os.execute([==[sh "/sdcard/FKADS/Script/ka.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/ks.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/xclx.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/wyyyy.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/realmesq.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/bdyy.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/qqllq.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/kgyy.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/qqyy.sh"]==])
    os.execute([==[su - root -c "/sdcard/FKADS/Script/txsp.sh"]==])
    os.execute([==[sh /sdcard/FKADS/Script/ka.sh]==])
    os.execute([==[echo 'mkdir -p /data/adb/modules/FKADS_Mok
echo "id=FKADS_Mok
name=FKADS附加模块
version=v1.0Bate
versionCode=10002
author=MineACE
description=每次重启自动将广告文件夹权限设置为000" > /data/adb/modules/FKADS_Mok/module.prop' > /sdcard/FKADS/Script/main.sh]==])
    os.execute([==[sh "/sdcard/FKADS/Script/main.sh"]==])
    import "android.content.DialogInterface"
    local dl=AlertDialog.Builder(activity)
    .setTitle("FKADS")
    .setMessage("提示：快速去除广告已完成！但是不能保证绝对有用\n去除列表路径：/内部存储目录/FKADS/Blacklist.txt")
    .setPositiveButton("好的",DialogInterface
    .OnClickListener{
      onClick=function(v)
        --事件
      end
    })
    .create()
    dl.show()
  end)
end

if 文件是否存在("/sdcard/FKADS/.music") then
 else
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/1.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
end


import "android.media.MediaPlayer"
local mp = MediaPlayer()
function play(路径)
  mp.reset()--初始化参数
  mp.prepare()--缓存资源
  mp.setLooping(true)--true为将进行循环播放，false为播放一次
  mp.start()--开始播放
end
--调用文件MP4
video.setVideoPath((activity.getLuaDir("res/video/background.mp4")))
video.start()
--监听视频装载完成的事件
video.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    video.start()--开始播放
    mediaPlayer.setLooping(true)--循环播放
    video.setBackgroundColor(0x00000000)
  end
});

设置边框=function(A0_25,A1_26,A2_27,A3_28,A4_29)
  import "android.graphics.drawable.GradientDrawable"
  drawable=GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setStroke(A1_26,A2_27)
  drawable.setColor(A3_28)
  drawable.setCornerRadii({
    A4_29,
    A4_29,
    A4_29,
    A4_29,
    A4_29,
    A4_29,
    A4_29,
    A4_29
  })
  A0_25.setBackgroundDrawable(drawable)
end

设置边框(backv,9,4294959871,4290165247,40)
设置边框(ksqc,9,4294959871,4290165247,45)
设置边框(mok,9,4294959871,4290165247,45)
设置边框(gg,9,4294959871,4290165247,45)
设置边框(music,9,4294959871,4290165247,45)

this.getWindow().addFlags(WindowManager.LayoutParams.FLAG_SECURE)
水珠动画=function(A0_1,A1_2)
  import "android.animation.ObjectAnimator"
  ObjectAnimator().ofFloat(A0_1,"scaleX",{
    1,
    0.8,
    1.3,
    0.9,
    1
  }).setDuration(A1_2).start()
  ObjectAnimator().ofFloat(A0_1,"scaleY",{
    1,
    0.8,
    1.3,
    0.9,
    1
  }).setDuration(A1_2).start()
end
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.view.animation.TranslateAnimation"
import "android.view.animation.RotateAnimation"
import "android.view.animation.AlphaAnimation"
import "android.view.animation.LinearInterpolator"
import "android.animation.ValueAnimator"
import "android.animation.ObjectAnimator"
平移动画_左=TranslateAnimation(-activity.height,0,0,0)
平移动画_左.setDuration(1000)
平移动画_左.setFillAfter(true)
平移动画_左a=TranslateAnimation(-activity.height,0,0,0)
平移动画_左a.setDuration(800)
平移动画_左a.setFillAfter(true)
透明动画=AlphaAnimation(0,1)
透明动画.setDuration(800)
平移动画_右=TranslateAnimation(activity.height,0,0,0)
平移动画_右.setDuration(1000)
平移动画_右.setFillAfter(true)
平移动画_右a=TranslateAnimation(activity.height,0,0,0)
平移动画_右a.setDuration(1200)
平移动画_右a.setFillAfter(true)
平移动画_右b=TranslateAnimation(activity.height,0,0,0)
平移动画_右b.setDuration(1300)
平移动画_右b.setFillAfter(true)
平移动画_右c=TranslateAnimation(activity.height,0,0,0)
平移动画_右c.setDuration(1500)
平移动画_右c.setFillAfter(true)
平移动画_右d=TranslateAnimation(activity.height,0,0,0)
平移动画_右d.setDuration(1500)
平移动画_右d.setFillAfter(true)
平移动画_右e=TranslateAnimation(activity.height,0,0,0)
平移动画_右e.setDuration(1400)
平移动画_右e.setFillAfter(true)
透明动画=AlphaAnimation(0,1)
透明动画.setDuration(800)
平移动画_下=TranslateAnimation(0,0,activity.height,0)
平移动画_下.setDuration(1000)
平移动画_下.setFillAfter(true)
透明动画=AlphaAnimation(0,1)
透明动画.setDuration(1000)
平移动画_上=TranslateAnimation(0,0,-activity.height,0)
平移动画_上.setDuration(910)
平移动画_上.setFillAfter(true)
透明动画=AlphaAnimation(0,0.879999)
透明动画.setDuration(1500)
backv.startAnimation(平移动画_上)
ksqc.startAnimation(平移动画_左)
mok.startAnimation(平移动画_右)
gg.startAnimation(平移动画_左)
music.startAnimation(平移动画_右)
ka.startAnimation(平移动画_下)
设置边框(ka,9,4294959871,4290165247,45)

function music.onClick
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
  水珠动画(music,500)
  task(300,function()
    跳转界面("yy")
  end)
end
function mok.onClick
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
  水珠动画(mok,500)
  调用系统下载文件("https://www.cccimg.com/down.php/1bbbd454695ffd7d3a045da5d58ad2e4.zip","/FKADS/Modules","FKADS附加模块.zip")
  if 调用系统下载文件("https://www.cccimg.com/down.php/7db9a46cbc6bd1fa3fe234cbbaf6640f.zip","/FKADS/Modules","AdHome去广告.zip") then
    import "android.content.DialogInterface"
    local dl=AlertDialog.Builder(activity)
    .setTitle("FKADS")
    .setMessage("下载错误...1")
    .setPositiveButton("好的",DialogInterface
    .OnClickListener{
      onClick=function(v)
        --事件
      end
    })
    .create()
    dl.show()
   else
    import "android.content.DialogInterface"
    local dl=AlertDialog.Builder(activity)
    .setTitle("FKADS")
    .setMessage("模块正在下载！请下拉通知栏查看进度...\n模块路径：/内部存储目录/FKADS/Modules/...\n由于AndLua语言的技术限制 请您手动安装模块")
    .setPositiveButton("好的",DialogInterface
    .OnClickListener{
      onClick=function(v)
        import "android.media.MediaPlayer"
mediaPlayer = MediaPlayer()
mediaPlayer.reset()
mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
mediaPlayer.prepareAsync()
mediaPlayer.setLooping(false)
mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    mediaPlayer.start()
  end
});
      end
    })
    .create()
    dl.show()
  end
end


浏览器={
  LinearLayout;
  orientation="vertical";
  {
    LuaWebView;
    layout_width="match_parent";
    layout_height="match_parent";
    id="liulanqi";
  };
};
function ka.onClick
  水珠动画(ka,500)
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
  task(300,function()
    activity.setContentView(loadlayout(浏览器))
    liulanqi.loadUrl("http://www.coolapk.com/u/33881454")
  end)
end

设置字体加粗(ws)
ws.startAnimation(透明动画)

function gg.onClick
  水珠动画(gg,500)
  import "android.media.MediaPlayer"
  mediaPlayer = MediaPlayer()
  mediaPlayer.reset()
  mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/2.mp3")
  mediaPlayer.prepareAsync()
  mediaPlayer.setLooping(false)
  mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
    onPrepared=function(mediaPlayer)
      mediaPlayer.start()
    end
  });
  task(200,function()
    import "android.content.DialogInterface"
    local dl=AlertDialog.Builder(activity)
    .setTitle("FKADS")
    .setMessage("由于音乐播放是远程播放功能 响应速度和稳定性均和你的网速有关！\n当前版本号：1000a")
    .setPositiveButton("检查更新",DialogInterface
    .OnClickListener{
      onClick=function(v)
        import "android.media.MediaPlayer"
mediaPlayer = MediaPlayer()
mediaPlayer.reset()
mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/3.mp3")
mediaPlayer.prepareAsync()
mediaPlayer.setLooping(false)
mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    mediaPlayer.start()
  end
});
task(100,function()
        activity.setContentView(loadlayout(浏览器))
        liulanqi.loadUrl("https://www.123912.com/s/upqVjv-UvtNd")
        end)
      end
    })
    .setNegativeButton("好的",DialogInterface
    .OnClickListener{
      onClick=function(v)
       import "android.media.MediaPlayer"
mediaPlayer = MediaPlayer()
mediaPlayer.reset()
mediaPlayer.setDataSource(activity.getLuaDir().."/res/music/3.mp3")
mediaPlayer.prepareAsync()
mediaPlayer.setLooping(false)
mediaPlayer.setOnPreparedListener(MediaPlayer.OnPreparedListener{
  onPrepared=function(mediaPlayer)
    mediaPlayer.start()
  end
}); 
      end
    })
    .create()
    dl.show()
  end)
end