.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$DLNAEventHandler;,
        Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final HDMI_BIT:I = 0x800

.field private static final HDMI_CMD_480P:I = 0x2

.field private static final HDMI_CMD_720P:I = 0x1

.field private static final HDMI_CMD_AUTO:I = 0x0

.field private static final HDMI_CMD_OFF:I = 0x0

.field private static final HDMI_CMD_ON:I = 0x1

.field private static final HDMI_DISABLE_PERMISSION:Ljava/lang/String; = "com.sprint.android.permission.DISABLE_HDMI"

.field private static final HDMI_MODE_PRESENTATION:I = 0x211e

.field private static final HDMI_MODE_RESOLUTION:I = 0x211f

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final KEY_PARAMETER_MEDIA_CODEC_INFO:I = 0x5dc

.field private static final KEY_PARAMETER_MEDIA_PLAY_TIME:I = 0x5dd

.field private static final KEY_PARAMETER_MEDIA_TRACK_BASE:I = 0x4e2

.field private static final KEY_PARAMETER_MEDIA_TRACK_INFO:I = 0x514

.field private static final KEY_PARAMETER_TIMED_TEXT_ADD_OUT_OF_BAND_SOURCE:I = 0x3e9

.field private static final KEY_PARAMETER_TIMED_TEXT_TRACK_INDEX:I = 0x3e8

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_GEO_METADATA_UPDATE:I = 0x1f4

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String; = null

.field private static final MM_SETTINGS:[Ljava/lang/String; = null

.field private static final PATH_HDMI_SETTING:Ljava/lang/String; = "/data/hdmi_setting"

.field private static final STATE:Ljava/lang/String; = "state"

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static mNetworkType:Ljava/lang/String;

.field private static mOutputSettingMode:I


# instance fields
.field private final DISABLE_DLNA:I

.field private final DLNAPrepareFailed:I

.field private final SenseVersion:F

.field private final TAG_UB:Ljava/lang/String;

.field private final TURNOFFSKIPSEEKPREVIEWMODE:I

.field private final TURNONSKIPSEEKPREVIEWMODE:I

.field private final UB_START:I

.field private final UB_STOP:I

.field private cb:Landroid/view/SurfaceHolder$Callback;

.field private mContext:Landroid/content/Context;

.field private volatile mDLNAAgent:Landroid/media/MediaPluginDLNA;

.field private mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

.field private final mDLNAFlag:Z

.field private mDLNAInitDone:Z

.field private mDLNALock:Ljava/lang/Object;

.field private mDLNAMode:Z

.field private mDataPoint:Z

.field private mDoSeekFlag:Z

.field private final mDummyHeight:I

.field private final mDummyWidth:I

.field private mDuration:I

.field private mEventAudioOnly:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mForceDisableDLNA:Z

.field private mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

.field private mHDMIObserver:Landroid/media/HDMIStatusObserver;

.field private mICallBack:Landroid/os/IBinder;

.field private mIsHDMIPlug:Z

.field private mListenerContext:I

.field private mMode:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mNeedSetHDMI:Z

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mOnGeoMetadataUpdateListener:Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPreSeekSec:I

.field private mPrepareDone:Z

.field private mReleaseMediaPlayer:Z

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUseFileDescriptor:Z

.field mUseProxy:Ljava/lang/Boolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 3245
    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 3720
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "httpproxyip"

    aput-object v1, v0, v3

    const-string v1, "httpproxyport"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rtspproxyip"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtspproxyport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "minudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "maxudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "buffertime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 3734
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 588
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 591
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDLNAFlag:Z

    .line 592
    const/16 v1, 0x1e0

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyWidth:I

    .line 593
    const/16 v1, 0x140

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyHeight:I

    .line 594
    const/16 v1, -0x1f4

    iput v1, p0, Landroid/media/MediaPlayer;->DLNAPrepareFailed:I

    .line 595
    const/16 v1, 0x4000

    iput v1, p0, Landroid/media/MediaPlayer;->DISABLE_DLNA:I

    .line 596
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 597
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    .line 598
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 599
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 600
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 601
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 602
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 603
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 604
    iput v2, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 605
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 606
    iput v2, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 607
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 609
    const/16 v1, 0x22e0

    iput v1, p0, Landroid/media/MediaPlayer;->TURNONSKIPSEEKPREVIEWMODE:I

    .line 610
    const/16 v1, 0x22e1

    iput v1, p0, Landroid/media/MediaPlayer;->TURNOFFSKIPSEEKPREVIEWMODE:I

    .line 613
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    .line 616
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    .line 1459
    iput v4, p0, Landroid/media/MediaPlayer;->UB_START:I

    .line 1460
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaPlayer;->UB_STOP:I

    .line 1461
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Landroid/media/MediaPlayer;->TAG_UB:Ljava/lang/String;

    .line 2208
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    .line 2212
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 3110
    iput v2, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 3113
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 3114
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 3116
    iput-object v3, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 3117
    iput-object v3, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 3364
    new-instance v1, Landroid/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 3633
    new-instance v1, Landroid/media/MediaPlayer$6;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$6;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    .line 3719
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 679
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 681
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v1, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 684
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 685
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 695
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 698
    invoke-direct {p0}, Landroid/media/MediaPlayer;->hasHDMIPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-direct {p0}, Landroid/media/MediaPlayer;->registerHDMINotification()V

    .line 702
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIResolution()I

    .line 704
    return-void

    .line 686
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 687
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 689
    :cond_3
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _disconnectSurface(Landroid/view/Surface;)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _unsetVideoSurface()V
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnGeoMetadataUpdateListener:Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    return-void
.end method

.method static synthetic access$2102(Landroid/media/MediaPlayer;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNAController()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->processDLNAIcon(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    return v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 532
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    return v0
.end method

.method static synthetic access$802(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    return-void
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 8
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3780
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 3781
    .local v1, header_name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "streamplayer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3782
    .local v2, header_value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3783
    :cond_0
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3786
    const-string/jumbo v5, "rtspuseragent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3787
    const-string v5, "User-Agent"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3789
    :cond_3
    const-string/jumbo v5, "wapprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3790
    const-string/jumbo v5, "x-wap-profile"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3794
    .end local v1           #header_name:Ljava/lang/String;
    .end local v2           #header_value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3799
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "unknownPhoneType"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3801
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 3802
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3804
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3806
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=USB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    const-string/jumbo v5, "x-network-type"

    const-string v6, "USB"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3808
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3809
    const-string/jumbo v5, "usb"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3950
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 3811
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3813
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    const-string/jumbo v5, "x-network-type"

    const-string v6, "WIFI"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3815
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3816
    const-string/jumbo v5, "wifi"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3945
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 3946
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3818
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v5, 0x6

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3820
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wimax"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    const-string/jumbo v5, "x-network-type"

    const-string v6, "Wimax"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    const-string/jumbo v5, "wimax"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3824
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3825
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_0

    .line 3828
    :cond_2
    const-string v5, "MediaPlayer"

    const-string v6, "This project don\'t need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3831
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3833
    const/4 v2, -0x1

    .line 3834
    .local v2, phoneNetworkType:I
    const-string/jumbo v5, "mobile"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3837
    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3839
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 3842
    .local v3, telNetworkType:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 3844
    packed-switch v3, :pswitch_data_0

    .line 3866
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 3869
    :pswitch_0
    :try_start_3
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=GPRS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3871
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3846
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    :try_start_4
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknow telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3862
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v1

    .line 3863
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MediaPlayer"

    const-string v6, "get telphoneManager exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3849
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_2
    :try_start_6
    const-string v5, "MediaPlayer"

    const-string v6, "GSM telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3852
    :pswitch_3
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3853
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_1

    .line 3858
    :pswitch_4
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_SIP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3875
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_5
    :try_start_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EDGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    const-string v5, "Bandwidth"

    const-string v6, "384000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3887
    :pswitch_6
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=UMTS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    const-string/jumbo v5, "x-network-type"

    const-string v6, "UMTS"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3889
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3893
    :pswitch_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    const-string/jumbo v5, "x-network-type"

    const-string v6, "iS95"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3895
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3899
    :pswitch_8
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO 0"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3901
    const-string v5, "Bandwidth"

    const-string v6, "2400000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3905
    :pswitch_9
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 A"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3906
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO A"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    const-string v5, "Bandwidth"

    const-string v6, "3100000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3911
    :pswitch_a
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 B"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO B"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3913
    const-string v5, "Bandwidth"

    const-string v6, "4900000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3917
    :pswitch_b
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=1xRTT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    const-string/jumbo v5, "x-network-type"

    const-string v6, "1xRTT"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3919
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3923
    :pswitch_c
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=LTE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    const-string/jumbo v5, "x-network-type"

    const-string v6, "LTE"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3929
    :pswitch_d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=IDEN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    const-string/jumbo v5, "x-network-type"

    const-string v6, "IDEN"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3931
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3935
    :pswitch_e
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EHRPD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EHRPD"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3942
    .end local v2           #phoneNetworkType:I
    :cond_5
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknown network type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 3844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3866
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3743
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3745
    .local v1, host:Ljava/lang/String;
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 3746
    .local v4, setting_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3747
    .local v5, setting_value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3748
    :cond_0
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3752
    :cond_1
    const-string v6, "httpproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "httpproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "rtspproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "rtspproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3755
    :cond_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3756
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when NetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3760
    :cond_3
    if-eqz v1, :cond_5

    const-string/jumbo v6, "localhost"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "127.0.0.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 3761
    :cond_4
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "localhost"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3765
    :cond_5
    const-string v6, "0.0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3766
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "skip proxy setting 0.0.0.0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3772
    :cond_6
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3775
    .end local v4           #setting_name:Ljava/lang/String;
    .end local v5           #setting_value:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static native checkMediaStreamActive(I)Z
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 897
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 898
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 915
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 900
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 901
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 902
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 903
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 905
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 906
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 915
    goto :goto_0

    .line 908
    :catch_1
    move-exception v7

    .line 909
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 911
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 912
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 842
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 860
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 861
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 862
    if-eqz p2, :cond_0

    .line 863
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 865
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 878
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 870
    :catch_1
    move-exception v0

    .line 871
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 873
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 874
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getCodecStatus(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 618
    const-string v0, "NON"

    .line 619
    .local v0, status:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 620
    const-string v0, "SW"

    .line 624
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 622
    const-string v0, "HW"

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3466
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 3467
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3504
    :goto_0
    return-object v4

    .line 3470
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3471
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3473
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3474
    .local v3, handler:Landroid/os/Handler;
    new-instance v5, Landroid/media/MediaPlayer$4;

    invoke-direct {v5, p0}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3481
    const/4 v0, 0x0

    .line 3482
    .local v0, count:I
    :goto_1
    const/4 v5, 0x5

    if-ge v0, v5, :cond_1

    .line 3484
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 3485
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3491
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3488
    :catch_0
    move-exception v1

    .line 3489
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3498
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #handler:Landroid/os/Handler;
    :catch_1
    move-exception v2

    .line 3499
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLNA][getContext]can not get application context, ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3493
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v3       #handler:Landroid/os/Handler;
    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3494
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]can not get application context"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3504
    .end local v0           #count:I
    .end local v3           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 940
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 941
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 947
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 948
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 951
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 952
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 953
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 954
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 955
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 957
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 959
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 962
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 966
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 967
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 968
    const/4 v11, 0x0

    .line 972
    :cond_1
    return-object v10

    .line 966
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 967
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 968
    const/4 v11, 0x0

    .line 966
    :cond_2
    throw v1
.end method

.method private getHDMIPermission()I
    .locals 5

    .prologue
    .line 3121
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3122
    .local v0, Pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3123
    .local v1, Uid:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const-string v4, "com.sprint.android.permission.DISABLE_HDMI"

    invoke-interface {v3, v4, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3125
    .end local v0           #Pid:I
    .end local v1           #Uid:I
    :goto_0
    return v3

    .line 3124
    :catch_0
    move-exception v2

    .line 3125
    .local v2, e:Landroid/os/RemoteException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getHDMIResolution()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3130
    invoke-direct {p0}, Landroid/media/MediaPlayer;->readHDMISetting()V

    .line 3132
    sget v0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    packed-switch v0, :pswitch_data_0

    .line 3144
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    .line 3148
    :goto_0
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDMIResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    iget v0, p0, Landroid/media/MediaPlayer;->mMode:I

    return v0

    .line 3135
    :pswitch_0
    iput v1, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 3138
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 3141
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/MediaPlayer;->mMode:I

    goto :goto_0

    .line 3132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getInfoFromNative()V
    .locals 6

    .prologue
    .line 628
    const/16 v3, 0x514

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v2

    .line 629
    .local v2, trackInfo:I
    const/16 v3, 0x5dd

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v3

    const v4, 0xf4240

    div-int v0, v3, v4

    .line 631
    .local v0, duration:I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 632
    .local v1, p:Landroid/os/Parcel;
    const/16 v3, 0x5dc

    invoke-direct {p0, v3, v1}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 634
    const/16 v3, 0x385

    if-ne v2, v3, :cond_1

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getCodecStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer;->writeUserBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    return-void

    .line 636
    :cond_1
    const/16 v3, 0x386

    if-ne v2, v3, :cond_2

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getCodecStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer;->writeUserBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_2
    const/16 v3, 0x387

    if-ne v2, v3, :cond_0

    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getCodecStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer;->writeUserBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getCodecStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer;->writeUserBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I
    .locals 9
    .parameter "wdMgr"

    .prologue
    const/4 v8, 0x3

    .line 1267
    const/4 v2, -0x1

    .line 1268
    .local v2, ret:I
    invoke-virtual {p1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 1269
    .local v3, state:I
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    if-ne v3, v8, :cond_0

    move v4, v3

    .line 1290
    .end local v3           #state:I
    .local v4, state:I
    :goto_0
    return v4

    .line 1274
    .end local v4           #state:I
    .restart local v3       #state:I
    :cond_0
    const/4 v0, 0x0

    .line 1275
    .local v0, count:I
    :goto_1
    const/16 v5, 0xf

    if-ge v0, v5, :cond_1

    .line 1277
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    invoke-virtual {p1}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 1283
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    if-ne v3, v8, :cond_2

    .line 1289
    :cond_1
    :goto_2
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][Return state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1290
    .end local v3           #state:I
    .restart local v4       #state:I
    goto :goto_0

    .line 1278
    .end local v4           #state:I
    .restart local v3       #state:I
    :catch_0
    move-exception v1

    .line 1279
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1286
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 1238
    :try_start_0
    const-string/jumbo v7, "wireless_display"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/WirelessDisplayManager;

    .line 1239
    .local v5, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v5, :cond_1

    move-object v1, v6

    .line 1262
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return-object v1

    .line 1242
    .restart local v5       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    const/4 v1, 0x0

    .line 1243
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 1244
    .local v2, dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1245
    :cond_2
    const-string v7, "MediaPlayer"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1246
    goto :goto_0

    .line 1249
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 1250
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iget-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v7, :cond_4

    .line 1251
    move-object v1, v0

    .line 1252
    const-string v7, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Found dongle via getDiscoveryDongleList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_5
    if-nez v1, :cond_0

    .line 1257
    const-string v7, "MediaPlayer"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v2           #dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    .line 1261
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 1262
    goto :goto_0
.end method

.method private getWirelessDisplayStatus()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1172
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 1173
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    :goto_0
    return v1

    .line 1176
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1177
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_2

    .line 1178
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]getSystemService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1181
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1182
    const-string v1, "MediaPlayer"

    const-string v3, "[DLNA]in Mirror mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1183
    goto :goto_0

    .line 1185
    :cond_3
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]not in Mirror mode, check nearby ready dongle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->startMirror(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    const-string v1, "MediaPlayer"

    const-string v3, "[DLNA]there is a ready to use dongle and user select to play on TV"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1188
    goto :goto_0
.end method

.method private hasHDMIPermission()Z
    .locals 4

    .prologue
    .line 3180
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getHDMIPermission()I

    move-result v0

    .line 3181
    .local v0, permission:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasHDMIPermission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    if-nez v0, :cond_0

    .line 3183
    const/4 v1, 0x0

    .line 3186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initDLNA()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3534
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setDuration(I)V

    .line 3538
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, looper:Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 3539
    new-instance v3, Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-direct {v3, p0, p0, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    .line 3544
    :goto_0
    if-nez v2, :cond_1

    .line 3545
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3546
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]no looper"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    :goto_1
    return v6

    .line 3541
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    goto :goto_0

    .line 3550
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer$5;

    invoke-direct {v1, p0, v2}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    .line 3555
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3556
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3557
    .end local v1           #h:Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 3558
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][initDLNA]Init DLNA module failed, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    goto :goto_1
.end method

.method private initDLNAController()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1313
    const-string v1, "MediaPlayer"

    const-string v3, "initDLNAController() in"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    monitor-enter v3

    .line 1317
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_1

    .line 1318
    const-string v1, "MediaPlayer"

    const-string v4, "[initDLNAController][reuse original DLNA agent]"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 1320
    monitor-exit v3

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 1325
    const-string v1, "MediaPlayer"

    const-string v3, "context is null,create DLNA Controller failed.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1327
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 1328
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_0

    .line 1322
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1334
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1335
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1339
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 1340
    .local v2, proj:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1341
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1342
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1343
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1344
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1345
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get absolute path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1363
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    const-string v1, "MediaPlayer"

    const-string v3, "Create MediaPlugin type DLNA in initDLNAController()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v1, p0}, Landroid/media/MediaPlugin$OnEventListener;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 1365
    new-instance v1, Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-direct {v1, v3, v4, v5}, Landroid/media/MediaPluginDLNA;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1366
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 1367
    iget v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    if-lez v1, :cond_0

    .line 1368
    const-string v1, "MediaPlayer"

    const-string v3, "AP request seekTo() before start()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPluginDLNA;->setPreSeek(I)V

    goto/16 :goto_0

    .line 1348
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_3
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "null cursor, error when retrive absolute path, use original path..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1350
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 1351
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 1353
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 1354
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not retrieve absolute path from content uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 1357
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1358
    :cond_6
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streaming uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1361
    :cond_7
    const-string v1, "MediaPlayer"

    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isDrmUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 934
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStreamActive(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 3704
    invoke-static {p0}, Landroid/media/MediaPlayer;->checkMediaStreamActive(I)Z

    move-result v0

    return v0
.end method

.method private isUsingProxyProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3953
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    .line 3954
    const-string v1, "MediaPlayer"

    const-string v2, "This is a sprint project"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :goto_0
    return v0

    .line 3957
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3958
    const-string v1, "MediaPlayer"

    const-string v2, "This is a boost project"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3962
    :cond_1
    const-string v0, "MediaPlayer"

    const-string v1, "This is not a sprint nor boost project"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetAudioStreamType(I)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2750
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2751
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 2759
    :cond_0
    :goto_0
    return-void

    .line 2755
    :cond_1
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2756
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2757
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processDLNAIcon(Landroid/view/Surface;)V
    .locals 21
    .parameter "surface"

    .prologue
    .line 3567
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 3568
    .local v9, c:Landroid/graphics/Canvas;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4020008

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3576
    .local v2, img:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 3577
    .local v13, destWidthScaleRate:F
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v3, v4

    .line 3580
    .local v12, destHeigthScaleRate:F
    const/high16 v19, 0x3f80

    .line 3581
    .local v19, scaleWidth:F
    const/high16 v17, 0x3f80

    .line 3582
    .local v17, scaleHeight:F
    cmpl-float v3, v13, v12

    if-ltz v3, :cond_0

    .line 3583
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v12

    .line 3584
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v12

    .line 3591
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v19, v3

    .line 3592
    .local v20, scaleWidthRate:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v17, v3

    .line 3595
    .local v18, scaleHeightRate:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 3596
    .local v7, mtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3597
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 3601
    .local v16, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v10, v3, 0x2

    .line 3602
    .local v10, centreX:I
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v11, v3, 0x2

    .line 3603
    .local v11, centreY:I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3604
    .local v15, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3605
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3606
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 3607
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaPlayer;->_disconnectSurface(Landroid/view/Surface;)V

    .line 3611
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v7           #mtx:Landroid/graphics/Matrix;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v10           #centreX:I
    .end local v11           #centreY:I
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v17           #scaleHeight:F
    .end local v18           #scaleHeightRate:F
    .end local v19           #scaleWidth:F
    .end local v20           #scaleWidthRate:F
    :goto_1
    return-void

    .line 3586
    .restart local v2       #img:Landroid/graphics/Bitmap;
    .restart local v9       #c:Landroid/graphics/Canvas;
    .restart local v12       #destHeigthScaleRate:F
    .restart local v13       #destWidthScaleRate:F
    .restart local v17       #scaleHeight:F
    .restart local v19       #scaleWidth:F
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v13

    .line 3587
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v13

    goto :goto_0

    .line 3608
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v17           #scaleHeight:F
    .end local v19           #scaleWidth:F
    :catch_0
    move-exception v14

    .line 3609
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]processDLNA icon failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readHDMISetting()V
    .locals 5

    .prologue
    .line 3249
    const/4 v1, 0x0

    .line 3251
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3252
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v3

    sput v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 3263
    if-eqz v2, :cond_2

    .line 3264
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 3265
    .end local v2           #reader:Ljava/io/BufferedReader;
    :goto_0
    const/4 v1, 0x0

    .line 3272
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 3254
    :catch_0
    move-exception v0

    .line 3255
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v3, "MediaPlayer"

    const-string v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3263
    if-eqz v1, :cond_0

    .line 3264
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3268
    :catch_1
    move-exception v0

    .line 3269
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3258
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3259
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3263
    if-eqz v1, :cond_0

    .line 3264
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 3268
    :catch_3
    move-exception v0

    goto :goto_3

    .line 3262
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 3263
    :goto_5
    if-eqz v1, :cond_1

    .line 3264
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3265
    const/4 v1, 0x0

    .line 3262
    :cond_1
    :goto_6
    throw v3

    .line 3268
    :catch_4
    move-exception v0

    .line 3269
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3268
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    .line 3269
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 3262
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 3258
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 3254
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private registerHDMINotification()V
    .locals 5

    .prologue
    .line 3191
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "registerHDMINotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3194
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3225
    :goto_0
    return-void

    .line 3198
    :cond_0
    new-instance v2, Landroid/media/HDMIStatusObserver;

    invoke-direct {v2}, Landroid/media/HDMIStatusObserver;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 3199
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-nez v2, :cond_1

    .line 3200
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusObserver create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3204
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-static {}, Landroid/media/HDMIStatusObserver;->isHDMIPlug()Z

    move-result v1

    .line 3205
    .local v1, isPlug:Z
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHDMIPlug(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->onHDMIStateChanged(Z)V

    .line 3208
    new-instance v2, Landroid/media/MediaPlayer$2;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/media/HDMIStatusObserver;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    .line 3218
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    if-nez v2, :cond_2

    .line 3219
    const-string v2, "MediaPlayer"

    const-string v3, "HDMIStatusListener create failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3223
    :cond_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mHDMIListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    invoke-virtual {v2, v3}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 3224
    iget-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v2}, Landroid/media/HDMIStatusObserver;->startWatching()V

    goto :goto_0
.end method

.method private resetDLNAParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3510
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 3511
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3512
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_1

    .line 3513
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3514
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3518
    :goto_0
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3519
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 3520
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 3521
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 3522
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 3523
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3524
    iput v3, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 3525
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 3526
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 3527
    iput v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 3530
    return-void

    .line 3515
    :catch_0
    move-exception v0

    .line 3516
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]mSurfaceHolder removeCallback exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreEffect(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 3679
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore effect  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3682
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 3683
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->restoreEffect(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3688
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 3685
    :catch_0
    move-exception v0

    .line 3686
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "act"

    .prologue
    .line 1497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1498
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1501
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1503
    return-void
.end method

.method private setDLNASkipSeekPreview(Z)V
    .locals 4
    .parameter "skip"

    .prologue
    .line 3614
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]setDLNASkipSeekPreview+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getWirelessDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3616
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 3617
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3618
    .local v0, reply:Landroid/os/Parcel;
    if-eqz p1, :cond_1

    .line 3619
    const/16 v2, 0x22e0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3620
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]set DLNASkipSeekPreview to true +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 3622
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]set DLNASkipSeekPreview to true -"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    .end local v0           #reply:Landroid/os/Parcel;
    .end local v1           #request:Landroid/os/Parcel;
    :cond_0
    :goto_0
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]setDLNASkipSeekPreview-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    return-void

    .line 3624
    .restart local v0       #reply:Landroid/os/Parcel;
    .restart local v1       #request:Landroid/os/Parcel;
    :cond_1
    const/16 v2, 0x22e1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]set DLNASkipSeekPreview to false+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 3627
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]set DLNASkipSeekPreview to false-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHDMI(Z)V
    .locals 7
    .parameter "enableHDMI"

    .prologue
    const/4 v4, 0x1

    .line 3164
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 3165
    .local v2, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3167
    .local v1, rep:Landroid/os/Parcel;
    const/16 v5, 0x211e

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    if-eqz p1, :cond_1

    move v0, v4

    .line 3170
    .local v0, param:I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    .line 3173
    .local v3, retcode:I
    if-eqz v3, :cond_0

    .line 3174
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 3176
    :cond_0
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHDMI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    return-void

    .line 3169
    .end local v0           #param:I
    .end local v3           #retcode:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setHDMIOutput(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3312
    sput p0, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    .line 3313
    invoke-static {}, Landroid/media/MediaPlayer;->writeHDMIsetting()V

    .line 3314
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHDMIOutput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    return-void
.end method

.method private setHDMIResolution(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 3153
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 3154
    .local v1, req:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3156
    .local v0, rep:Landroid/os/Parcel;
    const/16 v3, 0x211f

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v2

    .line 3160
    .local v2, retcode:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHDMIResolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    return-void
.end method

.method private setHtcSpecificAPdefault()V
    .locals 4

    .prologue
    .line 3691
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "set HtcSpecificAP flag to default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3694
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 3695
    invoke-interface {v1}, Landroid/media/IAudioService;->setHtcSpecificAPdefault()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3700
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 3697
    :catch_0
    move-exception v0

    .line 3698
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setLPAflag()V
    .locals 5

    .prologue
    .line 1391
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() in"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1394
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_0
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() out"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void

    .line 1397
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1398
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_1

    .line 1399
    const-string v3, "MediaPlayer"

    const-string v4, "getSystemService failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1403
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1404
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1405
    .local v1, reply:Landroid/os/Parcel;
    const/16 v3, 0x22e0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1408
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1411
    .end local v1           #reply:Landroid/os/Parcel;
    .end local v2           #request:Landroid/os/Parcel;
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1412
    .restart local v2       #request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1413
    .restart local v1       #reply:Landroid/os/Parcel;
    const/16 v3, 0x22e1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1416
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 3304
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3309
    :goto_0
    return-void

    .line 3306
    :catch_0
    move-exception v0

    .line 3307
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setWirelessDisplayStatus(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 1298
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1299
    const-string v1, "MediaPlayer"

    const-string/jumbo v2, "mContext is null, can\'t setMirrorDisplayOnOff!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_0
    return-void

    .line 1302
    :cond_0
    const-string v2, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessDisplayStatus to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "TRUE"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wireless_display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1304
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_2

    .line 1305
    const-string v1, "MediaPlayer"

    const-string v2, "getSystemService failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1302
    .end local v0           #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    const-string v1, "FALSE"

    goto :goto_1

    .line 1308
    .restart local v0       #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    goto :goto_0
.end method

.method private startMirror(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1196
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]startMirror in"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :try_start_0
    const-string/jumbo v5, "wireless_display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/WirelessDisplayManager;

    .line 1199
    .local v3, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v3, :cond_0

    .line 1232
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v4

    .line 1202
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 1203
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    if-nez v1, :cond_2

    .line 1204
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA][startMirror] out no ready to use dongle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1227
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v2

    .line 1228
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLNA][startMirror] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA][startMirror] out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    .restart local v1       #dongleInfo:Lcom/htc/service/DongleInfo;
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1210
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]user don\'t want to play on TV"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :cond_3
    iget-object v0, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 1216
    .local v0, bssid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1217
    invoke-virtual {v3, v0}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V

    .line 1218
    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1219
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA][startMirror] selectDongle() in ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v4, 0x1

    goto :goto_0

    .line 1223
    :cond_4
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA][startMirror] selectDongle() not get into ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private start_stop_notify(I)V
    .locals 6
    .parameter "act"

    .prologue
    .line 1464
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1465
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 1495
    :goto_0
    return-void

    .line 1468
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1469
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 1470
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaPlayer.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1491
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 1493
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1473
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V

    .line 1489
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1812
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->start_stop_notify(I)V

    .line 1817
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1818
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1819
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1824
    :cond_1
    :goto_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1825
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1826
    return-void

    .line 1813
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1820
    :cond_3
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1821
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private triggerBeatsLogo(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 3654
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beats setting  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3657
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 3658
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerBeatsLogo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->triggerBeatsLogo(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 3661
    :catch_0
    move-exception v0

    .line 3662
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private triggerBeatsLogo_audio(ZZZ)V
    .locals 5
    .parameter "on"
    .parameter "audio_on"
    .parameter "audio_flag"

    .prologue
    .line 3666
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beats_audio setting  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 3669
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 3670
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerBeatsLogo_audio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->triggerBeatsLogo_audio(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3676
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_0
    :goto_0
    return-void

    .line 3673
    :catch_0
    move-exception v0

    .line 3674
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterHDMINotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3228
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "unregisterHDMINotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0}, Landroid/media/HDMIStatusObserver;->stopWatching()V

    .line 3232
    iget-object v0, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    invoke-virtual {v0, v2}, Landroid/media/HDMIStatusObserver;->setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V

    .line 3233
    iput-object v2, p0, Landroid/media/MediaPlayer;->mHDMIObserver:Landroid/media/HDMIStatusObserver;

    .line 3235
    :cond_0
    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1829
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1832
    :cond_0
    return-void

    .line 1830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeHDMIsetting()V
    .locals 5

    .prologue
    .line 3275
    const/4 v1, 0x0

    .line 3277
    .local v1, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/hdmi_setting"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3278
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_1
    sget v3, Landroid/media/MediaPlayer;->mOutputSettingMode:I

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 3289
    if-eqz v2, :cond_2

    .line 3290
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 3291
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 3292
    const/4 v1, 0x0

    .line 3293
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :try_start_4
    const-string v3, "/data/hdmi_setting"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 3300
    :cond_0
    :goto_0
    return-void

    .line 3280
    :catch_0
    move-exception v0

    .line 3281
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    const-string v3, "MediaPlayer"

    const-string v4, "hdmi_setting not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3289
    if-eqz v1, :cond_0

    .line 3290
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3291
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3292
    const/4 v1, 0x0

    .line 3293
    const-string v3, "/data/hdmi_setting"

    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 3296
    :catch_1
    move-exception v0

    .line 3297
    .local v0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3284
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3285
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3289
    if-eqz v1, :cond_0

    .line 3290
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 3291
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 3292
    const/4 v1, 0x0

    .line 3293
    :try_start_b
    const-string v3, "/data/hdmi_setting"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    invoke-static {v3}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_0

    .line 3296
    :catch_3
    move-exception v0

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 3297
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3288
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v3

    :catchall_0
    move-exception v3

    .line 3289
    :goto_5
    if-eqz v1, :cond_1

    .line 3290
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3291
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3292
    const/4 v1, 0x0

    .line 3293
    const-string v4, "/data/hdmi_setting"

    invoke-static {v4}, Landroid/media/MediaPlayer;->setPermission(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    .line 3296
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    .restart local v0       #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    goto :goto_2

    .line 3288
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 3284
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 3280
    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private writeUserBehaviorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "codecType"
    .parameter "codecName"
    .parameter "duration"

    .prologue
    .line 649
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 652
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string/jumbo v1, "media_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 653
    const-string/jumbo v1, "media_playback"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 655
    const-string v1, "codec_type"

    invoke-virtual {v0, v1, p1}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 656
    const-string v1, "codec_name"

    invoke-virtual {v0, v1, p2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 657
    const-string v1, "duration"

    invoke-virtual {v0, v1, p3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 660
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 663
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 664
    return-void
.end method


# virtual methods
.method public native _attachAuxEffect(I)V
.end method

.method public native _getAudioSessionId()I
.end method

.method public native _getCurrentPosition()I
.end method

.method public native _getDuration()I
.end method

.method public native _getVideoHeight()I
.end method

.method public native _getVideoWidth()I
.end method

.method public native _isLooping()Z
.end method

.method public native _isPlaying()Z
.end method

.method public native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAuxEffectSendLevel(F)V
.end method

.method public native _setLooping(Z)V
.end method

.method public native _setVolume(FF)V
.end method

.method public attachAuxEffect(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 2343
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2345
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_attachAuxEffect(I)V

    goto :goto_0
.end method

.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public disableTimedText()Z
    .locals 2

    .prologue
    .line 2565
    const/16 v0, 0x3e8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    return v0
.end method

.method public doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1585
    const-string v2, "MediaPlayer"

    const-string v3, "doStart() in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_8

    .line 1589
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1590
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    if-eqz v2, :cond_3

    .line 1591
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    if-nez v2, :cond_2

    .line 1592
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]enable DLNA, release MediaPlayer!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1594
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mReleaseMediaPlayer:Z

    .line 1597
    :try_start_0
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]process DLNA icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_7

    .line 1599
    :cond_0
    const/4 v1, 0x0

    .line 1600
    .local v1, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_4

    .line 1601
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1612
    :goto_0
    if-eqz v1, :cond_1

    .line 1613
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->processDLNAIcon(Landroid/view/Surface;)V

    .line 1614
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    .line 1615
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    .end local v1           #surface:Landroid/view/Surface;
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v2}, Landroid/media/MediaPluginDLNA;->handleStart()V

    .line 1626
    :cond_3
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]doStart() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_2
    return-void

    .line 1602
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_6

    .line 1603
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1604
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 1606
    :cond_5
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurface is valid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1619
    .end local v1           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v0

    .line 1620
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]process DLNA icon failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1609
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #surface:Landroid/view/Surface;
    :cond_6
    :try_start_2
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]no valid surface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v1, 0x0

    goto :goto_0

    .line 1617
    .end local v1           #surface:Landroid/view/Surface;
    :cond_7
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurfaceHolder and mSurface are null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1631
    :cond_8
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v2, v3, :cond_a

    .line 1632
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    if-eqz v2, :cond_9

    .line 1633
    iput-boolean v7, p0, Landroid/media/MediaPlayer;->mNeedSetHDMI:Z

    .line 1634
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1637
    :cond_9
    iget v2, p0, Landroid/media/MediaPlayer;->mMode:I

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->setHDMIResolution(I)V

    .line 1639
    :cond_a
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1642
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    .line 1645
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1646
    iget v2, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_b

    iget v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 1647
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1648
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1665
    :cond_b
    :goto_3
    const-string v2, "MediaPlayer"

    const-string v3, "doStart() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1652
    :cond_c
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v2, :cond_d

    .line 1654
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v2, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1656
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_3

    .line 1659
    :cond_d
    invoke-direct {p0, v7, v6, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1660
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v7, v2, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 1661
    invoke-direct {p0, v7}, Landroid/media/MediaPlayer;->restoreEffect(Z)V

    goto :goto_3
.end method

.method public enableTimedText()Z
    .locals 1

    .prologue
    .line 2556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->enableTimedTextTrackIndex(I)Z

    move-result v0

    return v0
.end method

.method public enableTimedTextTrackIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 2544
    if-gez p1, :cond_0

    .line 2545
    const/4 v0, 0x0

    .line 2547
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2577
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2318
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2320
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1934
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleGetCurrentPosition()I

    move-result v0

    .line 1942
    :goto_0
    return v0

    .line 1938
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1942
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1956
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 1958
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 2470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2471
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2472
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2473
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2474
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1987
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 2003
    :cond_0
    :goto_0
    return-object v0

    .line 1989
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1990
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1992
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1994
    goto :goto_0

    .line 1999
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 2001
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2445
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2446
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 2456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2457
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2459
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    return-object v1
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1867
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x140

    .line 1869
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1847
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e0

    .line 1849
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 6
    .parameter "request"
    .parameter "reply"

    .prologue
    const/4 v2, 0x0

    .line 748
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 763
    :goto_0
    return v1

    .line 750
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-eqz v3, :cond_2

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 752
    .local v0, nID:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]invoke nID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/16 v3, 0x4000

    if-ne v0, v3, :cond_1

    .line 754
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]force disable DLNA mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 757
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 761
    .end local v0           #nID:I
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v1

    .line 762
    .local v1, retcode:I
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 2242
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2244
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1883
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isPlaying()Z

    move-result v0

    .line 1889
    :goto_0
    return v0

    .line 1885
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1889
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 725
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    return-object v0
.end method

.method public onHDMIStateChanged(Z)V
    .locals 2
    .parameter "isPlugin"

    .prologue
    .line 3238
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "onHDMIStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eq v0, p1, :cond_0

    .line 3240
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    .line 3241
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 3243
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1722
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handlePause()V

    .line 1729
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :goto_0
    return-void

    .line 1734
    :cond_1
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1735
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1736
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1737
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1738
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1749
    :cond_2
    :goto_1
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1742
    :cond_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_2

    .line 1744
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_1
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1425
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1427
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 1430
    :goto_0
    return-void

    .line 1429
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepare()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1444
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1446
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1447
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1449
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2067
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    if-ne v2, v7, :cond_0

    .line 2071
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    .line 2072
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInfoFromNative()V

    .line 2078
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_2

    .line 2079
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v2, :cond_1

    .line 2080
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]remove mDLNAAgent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v2}, Landroid/media/MediaPluginDLNA;->handleRelease()V

    .line 2082
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 2084
    :cond_1
    invoke-direct {p0, v7}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    .line 2085
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 2089
    :cond_2
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2090
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 2091
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2092
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2093
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2094
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2095
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2096
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2097
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2099
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnGeoMetadataUpdateListener:Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;

    .line 2102
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-ne v2, v3, :cond_3

    .line 2103
    invoke-direct {p0}, Landroid/media/MediaPlayer;->unregisterHDMINotification()V

    .line 2105
    :cond_3
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 2106
    iget v2, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_5

    iget v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    if-ne v2, v8, :cond_5

    .line 2107
    invoke-static {v8, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2108
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2109
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 2123
    :cond_4
    :goto_0
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 2124
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_5

    .line 2125
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_5
    :goto_1
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    return-void

    .line 2113
    :cond_6
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEventAudioOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v2, :cond_4

    .line 2115
    const-string v2, "MediaPlayer"

    const-string v3, "beats setting trigger in release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v2, v7}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    .line 2117
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    .line 2118
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v6, v2, v7}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_0

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2142
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2146
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDataPoint:Z

    .line 2147
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInfoFromNative()V

    .line 2151
    :cond_0
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 2154
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 2155
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]reset() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :goto_0
    return-void

    .line 2160
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 2161
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2162
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2163
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 2175
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2176
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2167
    :cond_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_2

    .line 2169
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_1
.end method

.method public seekTo(I)V
    .locals 4
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1904
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1905
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, p1}, Landroid/media/MediaPluginDLNA;->handleSeekTo(I)V

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    if-lez p1, :cond_4

    move v1, p1

    :goto_1
    iput v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 1910
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v1, :cond_3

    .line 1911
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-nez v1, :cond_3

    .line 1912
    const/16 v1, 0x514

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1913
    .local v0, contentType:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA][seekTo] contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x386

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v1, :cond_3

    .line 1915
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V

    .line 1920
    .end local v0           #contentType:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_seekTo(I)V

    goto :goto_0

    .line 1909
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 2302
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2304
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 4
    .parameter "streamtype"

    .prologue
    .line 2191
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 2194
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2196
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->nativeSetAudioStreamType(I)V

    .line 2197
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 2199
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 2200
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 2201
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2202
    .end local v1           #service:Landroid/media/IAudioService;
    :catch_0
    move-exception v0

    .line 2203
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .parameter "level"

    .prologue
    .line 2493
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2496
    :goto_0
    return-void

    .line 2495
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 930
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 931
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 985
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 993
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_2

    .line 994
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 995
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 999
    :cond_2
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1000
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1002
    iget-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1003
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNA]unspuuort uri prefix, disable DLNA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1008
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 1009
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :cond_5
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1017
    const/4 v7, 0x0

    .line 1019
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1020
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1021
    if-nez v7, :cond_6

    .line 1038
    if-eqz v7, :cond_1

    .line 1039
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1027
    :cond_6
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 1028
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1038
    :goto_2
    if-eqz v7, :cond_1

    goto :goto_1

    .line 1030
    :cond_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1033
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 1034
    .local v6, ex:Ljava/lang/SecurityException;
    :try_start_2
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1038
    if-eqz v7, :cond_8

    .line 1039
    .end local v6           #ex:Ljava/lang/SecurityException;
    :goto_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1043
    :cond_8
    if-nez p3, :cond_9

    .line 1044
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1049
    .restart local v8       #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v8, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 1050
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 1051
    invoke-direct {p0, v8, p2, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1053
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 1056
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(Context context, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map<String, String> headers) out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1035
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 1036
    .local v6, ex:Ljava/io/IOException;
    :try_start_3
    const-string v0, "MediaPlayer"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1038
    if-eqz v7, :cond_8

    goto :goto_3

    .end local v6           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 1039
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1038
    :cond_a
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1141
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1143
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1147
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 1154
    :goto_0
    return-void

    .line 1150
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) not use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1071
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1072
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1094
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1095
    .local v3, keys:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1097
    .local v5, values:[Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1098
    .local v4, tmpUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1099
    const-string v6, "MediaPlayer"

    const-string v7, "It is not a valid drm content path, setDataSource() fail!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    if-eqz p2, :cond_2

    .line 1104
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1105
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1109
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v1

    .line 1110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 1111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1116
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1117
    iget-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v6, :cond_3

    .line 1118
    iget-object v6, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v6, :cond_0

    .line 1119
    iget-object v6, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v7, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_3
    invoke-direct {p0, p1, v3, v5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "sh"

    .prologue
    .line 781
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]setDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 785
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 787
    if-eqz p1, :cond_1

    .line 788
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 792
    .local v0, surface:Landroid/view/Surface;
    :goto_1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 793
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0

    .line 790
    .end local v0           #surface:Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_1
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 1964
    iput p1, p0, Landroid/media/MediaPlayer;->mDuration:I

    .line 1965
    return-void
.end method

.method public setGeoMetadataUpdateListener(Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3091
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnGeoMetadataUpdateListener:Landroid/media/MediaPlayer$OnGeoMetadataUpdateListener;

    .line 3092
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 2223
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 2224
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1}, Landroid/media/MediaPluginDLNA;->handleSetLooping(Z)V

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2229
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setLooping(Z)V

    goto :goto_0
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2031
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 2037
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 2039
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 2040
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2043
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2045
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 2047
    .end local v3           #t:Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2049
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2051
    .end local v3           #t:Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2844
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2845
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2810
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2811
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2992
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2993
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3083
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3084
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2783
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2784
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2871
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2872
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2932
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2933
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2900
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2901
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2425
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2426
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2408
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2410
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2411
    return v1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1800
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1801
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1802
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1805
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1807
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 817
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 819
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 822
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 823
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 826
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 827
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 2265
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 2266
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPluginDLNA;->handleSetVolume(FF)V

    .line 2272
    :cond_0
    :goto_0
    return-void

    .line 2271
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1772
    const/4 v1, 0x0

    .line 1773
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1774
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1775
    const/4 v1, 0x1

    .line 1776
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1778
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1781
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1782
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1783
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1784
    if-eqz v1, :cond_2

    .line 1785
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1787
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1521
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "start() in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1524
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1525
    .local v1, reply:Landroid/os/Parcel;
    const/16 v3, 0x22e4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 1530
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v3, :cond_5

    .line 1532
    invoke-direct {p0, v6}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1534
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-eqz v3, :cond_0

    .line 1535
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1536
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() out check content type already"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_0
    return-void

    .line 1541
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1542
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]Streaming path, should force enable DLNA if in mirror mode or have usage dongle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getWirelessDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1544
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() streaming enable DLNA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1550
    :goto_1
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1551
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() streaming out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    :cond_1
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() streaming do local playback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_1

    .line 1556
    :cond_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1557
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1572
    :goto_2
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1573
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1559
    :cond_3
    const/16 v3, 0x514

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1560
    .local v0, contentType:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]contentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/16 v3, 0x386

    if-eq v0, v3, :cond_4

    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v3, :cond_4

    .line 1562
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getWirelessDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1563
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]playback local content via DLNA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1565
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1566
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]start() out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1570
    :cond_4
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_2

    .line 1576
    .end local v0           #contentType:I
    :cond_5
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]force disable DLNA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1580
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1581
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "start() out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public native stepFrame(Z)Z
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1677
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1681
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1682
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleStop()V

    .line 1685
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :goto_0
    return-void

    .line 1690
    .line 1691
    :cond_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mIsHDMIPlug:Z

    if-eqz v0, :cond_2

    .line 1692
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->setHDMI(Z)V

    .line 1695
    :cond_2
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1696
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1697
    iget v0, p0, Landroid/media/MediaPlayer;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1698
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1699
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo(Z)V

    .line 1710
    :cond_3
    :goto_1
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1703
    :cond_4
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventAudioOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    if-eqz v0, :cond_3

    .line 1705
    const-string v0, "MediaPlayer"

    const-string v1, "beats setting trigger in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mEventAudioOnly:Z

    invoke-direct {p0, v4, v0, v4}, Landroid/media/MediaPlayer;->triggerBeatsLogo_audio(ZZZ)V

    goto :goto_1
.end method
