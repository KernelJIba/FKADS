require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"
import "AndLua"
import "music"

activity.setTheme(R.Theme_Blue)
activity.setContentView(loadlayout(music))

隐藏标题栏()
沉浸状态栏()

activity.setRequestedOrientation(1);

function gb.onClick
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
  水珠动画(gb,500)
  os.execute("echo false > /sdcard/FKADS/.music")
  提示("开场音乐已关闭")
end
function kq.onClick
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
  水珠动画(kq,500)
  os.execute("rm -rf /sdcard/FKADS/.music")
  提示("开场音乐已开启")
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
平移动画_左.setDuration(199999990)
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
透明动画.setDuration(800)
平移动画_上=TranslateAnimation(0,0,-activity.height,0)
平移动画_上.setDuration(800)
平移动画_上.setFillAfter(true)
透明动画=AlphaAnimation(0,1)
透明动画.setDuration(800)
qztz.startAnimation(透明动画)
gb.startAnimation(透明动画)
kq.startAnimation(透明动画)
yylb.startAnimation(平移动画_上)

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

设置边框(qztz,9,4294959871,4290165247,45)
设置边框(gb,9,4294959871,4290165247,45)
设置边框(kq,9,4294959871,4290165247,45)
设置边框(kjbj,9,4294959871,0x36FFFFFF,15)

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

function 音乐1.onClick()
  if 音乐1.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("https://www.cccimg.com/view.php/98ef71890201b96b9369d0c2aa117e50.mp3")
    .prepare()
    media.start()
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐2.onClick()
  if 音乐2.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1869031258.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end

function 音乐3.onClick()
  if 音乐3.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1439279136.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐4.onClick()
  if 音乐4.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=17075871.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end

function 音乐5.onClick()
  if 音乐5.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1995759563.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end

function 音乐6.onClick()
  if 音乐6.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1810149359.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐7.onClick()
  if 音乐7.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1927491783.mp3")
    .prepare()
    task(150,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐8.onClick()
  if 音乐8.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1897844853.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐9.onClick()
  if 音乐9.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=27048037.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐10.onClick()
  if 音乐10.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=29412405.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐11.onClick()
  if 音乐11.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1938232202.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐12.onClick()
  if 音乐12.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2112827768.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐13.onClick()
  if 音乐13.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2114400224.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐14.onClick()
  if 音乐14.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=462391069.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐15.onClick()
  if 音乐15.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1853386142.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐16.onClick()
  if 音乐16.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1408941888.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐17.onClick()
  if 音乐17.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1954223039.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐18.onClick()
  if 音乐18.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2008421664.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐19.onClick()
  if 音乐19.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2112512190.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐20.onClick()
  if 音乐20.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2026836177.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end

function 音乐21.onClick()
  if 音乐21.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2018432856.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐22.onClick()
  if 音乐22.checked then
    提示("正在加载")

    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1456673752.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐23.onClick()
  if 音乐23.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()

    .setDataSource("http://music.163.com/song/media/outer/url?id=2032004548.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐24.onClick()
  if 音乐24.checked then
    提示("正在加载")

    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1349292048.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐25.onClick()
  if 音乐25.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1436685819.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐26.onClick()
  if 音乐26.checked then
    提示("正在加载")
    media=MediaPlayer()

    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1435828582.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end

function 音乐27.onClick()
  if 音乐27.checked then
    提示("正在加载")
    media=MediaPlayer()

    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2041416403.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐28.onClick()
  if 音乐28.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1969566942.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐29.onClick()
  if 音乐29.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=2032798852.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function 音乐30.onClick()
  if 音乐30.checked then
    提示("正在加载")
    media=MediaPlayer()
    media.reset()
    .setDataSource("http://music.163.com/song/media/outer/url?id=1451699240.mp3")
    .prepare()
    task(1500,function()
      media.start()
    end)
   else
    提示("停止播放")
    media.stop()--停止播放
  end
end
function qztz.onClick
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
  水珠动画(qztz,500)
  task(1,function()
    提示("强制停止")
    media.stop()--停止播放
  end)
end
function fhjb.onClick
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
  水珠动画(fhjb,300)
  task(150,function()
    结束程序()
  end)
end
fhjb.startAnimation(平移动画_下)
设置边框(fhjb,9,4294959871,4290165247,180)