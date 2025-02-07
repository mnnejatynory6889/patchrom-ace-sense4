.class public Lcom/htc/graphics/drawable/UrlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;,
        Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;,
        Lcom/htc/graphics/drawable/UrlDrawable$Dimension;,
        Lcom/htc/graphics/drawable/UrlDrawable$Options;
    }
.end annotation


# static fields
.field public static final ACTION_REDRAW_IMAGE:Ljava/lang/String; = "urldrawable_redraw_image"

.field private static final BLACK_LIST_KEEP_DURATION:J = 0x927c0L

.field protected static final CACHE_PATH:Ljava/lang/String; = ""

.field private static final CORE_POOL_SIZE:I = 0x2

.field public static DEBUG_LOG_ENABLED:Z = false

.field public static DEBUT_LOG_ENABLED:Z = false

.field private static final DEFAULT_HEIGHT:I = 0x17

.field private static final DEFAULT_WIDTH:I = 0x17

.field public static final EXTRA_LIST_POS:Ljava/lang/String; = "urldrawable_redraw_image_in_list_pos"

.field public static final EXTRA_URL:Ljava/lang/String; = "urldrawable_redraw_image_url"

.field private static final KEEP_ALIVE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "UrlDrawable"

.field private static final MAXIMUM_POOL_SIZE:I = 0x2

.field private static final MAX_RETRY_DUPLICATE:I = 0x64

.field private static final MAX_RETRY_GENERAL:I = 0x3

.field public static final MSG_REDRAW_IMAGE:I = 0x101

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x2710

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x2710

.field private static final RETRY_DUPLICATE_DELAY_TIMEOUT:I = 0xc8

.field private static final RETRY_GENERAL_DELAY_TIMEOUT:I

.field private static final WHITE_LIST:[Ljava/lang/String;

.field private static final blackListMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected static final sFileReadLock:Ljava/util/concurrent/locks/Lock;

.field private static final sFileUtilLock:Ljava/lang/Object;

.field protected static final sFileWriteLock:Ljava/util/concurrent/locks/Lock;

.field private static sMaxFetchedImageDimension:I

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRamCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

.field private final mHandler:Landroid/os/Handler;

.field protected mImageId:Ljava/lang/String;

.field public mListPos:I

.field private mNeverDrawn:Z

.field protected mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

.field private mRedrawHandler:Landroid/os/Handler;

.field private mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 85
    sput-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUT_LOG_ENABLED:Z

    .line 87
    sput-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "com.htc.deals"

    aput-object v2, v0, v3

    const-string v2, "com.htc.dealswidget"

    aput-object v2, v0, v9

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .line 545
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x226

    :goto_0
    sput v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 570
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 573
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    .line 575
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    .line 577
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$1;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$1;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 586
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v7, Lcom/htc/graphics/drawable/UrlDrawable;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    .line 674
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$2;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$2;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 702
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 704
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    .line 705
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 1391
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    .line 1654
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    .line 1656
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1657
    return-void

    .line 545
    :cond_0
    const/16 v0, 0x96

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 985
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 707
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 987
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 8
    .parameter "hostContext"
    .parameter "pluginContext"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 877
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 668
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 707
    new-instance v5, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 926
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 879
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v5, :cond_0

    .line 880
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, pkgName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 882
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->WHITE_LIST:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 883
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 884
    iget v5, p4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    sput v5, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 885
    sget-boolean v5, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v5, :cond_0

    .line 886
    const-string v5, "UrlDrawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sMaxFetchedImageDimension:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 896
    return-void

    .line 882
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    .line 857
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 707
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 859
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    if-lez v0, :cond_0

    sget v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    iget v1, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    if-eq v0, v1, :cond_0

    .line 861
    iget v0, p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxFetchedImageDim:I

    sput v0, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    .line 862
    const-string v0, "UrlDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch dimension:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    sget-boolean v0, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 864
    const-string v0, "UrlDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 868
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "options"
    .parameter "state"

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 707
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/graphics/drawable/UrlDrawable$3;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    .line 926
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 992
    iput-object p4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 994
    return-void
.end method

.method static synthetic access$000(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/graphics/drawable/UrlDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromRemote()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    return-object p1
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/graphics/drawable/UrlDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getFromLocal()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/graphics/drawable/UrlDrawable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->blackListMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$900()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method private canLoadToRamCache()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1284
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    if-nez v1, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bmSrc"
    .parameter "bmMask"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1893
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1927
    .end local p0
    :goto_0
    return-object p0

    .line 1896
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1897
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1899
    .local v1, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1900
    .local v3, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 1902
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p0, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1917
    :cond_1
    :goto_1
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1918
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1920
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1923
    if-eqz v0, :cond_2

    .line 1924
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1925
    const/4 v0, 0x0

    :cond_2
    move-object p0, v1

    .line 1927
    goto :goto_0

    .line 1906
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1908
    .local v2, bmScaleSrc:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 1909
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1913
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private getBitmapFromRamCache()Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1592
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1593
    const-string v2, "UrlDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Bitmap from Ram by ImageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1597
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_3

    .line 1598
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1599
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1600
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1601
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable found in RAM cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 1607
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_2
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 1609
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->isEnqueued()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1610
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->enqueue()Z

    .line 1614
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 2045
    invoke-static {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2046
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 2047
    .local v0, c:Landroid/graphics/Bitmap$Config;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2063
    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 2050
    .restart local v0       #c:Landroid/graphics/Bitmap$Config;
    .restart local p0
    :cond_1
    move-object v4, p0

    .line 2051
    .local v4, temp_bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2053
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2054
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2055
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2056
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2059
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2060
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v0           #c:Landroid/graphics/Bitmap$Config;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #temp_bitmap:Landroid/graphics/Bitmap;
    :cond_2
    move-object p0, v5

    .line 2063
    goto :goto_0
.end method

.method private static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "extraPath"

    .prologue
    .line 1394
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileUtilLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1395
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1396
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1397
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    const-string v1, "UrlDrawable"

    const-string v3, "Unable to create cache directory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v0, 0x0

    monitor-exit v2

    .line 1403
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 1404
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 2035
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 2039
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2040
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2041
    return-object v0
.end method

.method private getFromLocal()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1584
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1577
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1578
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromDiskCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1579
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1580
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 1581
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v0

    .line 1584
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getFromRemote()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1498
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1499
    .local v3, image_hash:Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 1500
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, "%s.tmp"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1503
    .local v2, f:Ljava/io/File;
    :try_start_0
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->useApacheHttpClient:Z

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->checkDefaultProxy:Z

    invoke-static {v5, v6, v7}, Lcom/htc/graphics/drawable/UrlDrawable;->getInputStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;

    move-result-object v4

    .line 1507
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4, v2}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 1509
    if-eqz v4, :cond_0

    .line 1510
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1512
    :cond_0
    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v5, :cond_1

    .line 1513
    invoke-direct {p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1521
    :cond_1
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    if-eqz v2, :cond_2

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1526
    .end local v4           #is:Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v0

    .line 1517
    :catch_0
    move-exception v1

    .line 1518
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UrlDrawable"

    const-string v6, "[%s][%s] Unable to fetch remotely!"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    if-eqz v2, :cond_2

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1521
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sPoolImageIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    if-eqz v2, :cond_3

    .line 1523
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    throw v5
.end method

.method private static getInputStream(Ljava/lang/String;ZZ)Ljava/io/InputStream;
    .locals 14
    .parameter "url"
    .parameter "useApacheHttpClient"
    .parameter "checkDefaultProxy"

    .prologue
    .line 1452
    const/4 v5, 0x0

    .line 1454
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v10, url_url:Ljava/net/URL;
    const/4 v8, 0x0

    .line 1456
    .local v8, proxy:Lorg/apache/http/HttpHost;
    if-eqz p2, :cond_0

    .line 1457
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v8

    .line 1459
    :cond_0
    if-eqz p1, :cond_2

    .line 1460
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1461
    .local v6, params:Lorg/apache/http/params/HttpParams;
    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 1462
    const-string v11, "UTF-8"

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1464
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 1465
    const/16 v11, 0x2710

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1467
    const/16 v11, 0x2710

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1468
    if-eqz v8, :cond_1

    .line 1469
    const-string v11, "http.route.default-proxy"

    invoke-interface {v6, v11, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1471
    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1472
    .local v4, getRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1473
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1474
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 1475
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 1493
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v8           #proxy:Lorg/apache/http/HttpHost;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #url_url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 1477
    .restart local v8       #proxy:Lorg/apache/http/HttpHost;
    .restart local v10       #url_url:Ljava/net/URL;
    :cond_2
    if-eqz v8, :cond_3

    .line 1478
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 1479
    .local v7, prop:Ljava/util/Properties;
    const-string v11, "http.proxyHost"

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    const-string v11, "http.proxyPort"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    .end local v7           #prop:Ljava/util/Properties;
    :cond_3
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1483
    .local v1, conn:Ljava/net/URLConnection;
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1484
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1485
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1486
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 1487
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1489
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v8           #proxy:Lorg/apache/http/HttpHost;
    .end local v10           #url_url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 1490
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "UrlDrawable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInputStream failed! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getProxy()Lorg/apache/http/HttpHost;
    .locals 6

    .prologue
    .line 1434
    const/4 v2, 0x0

    .line 1435
    .local v2, proxy:Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, defaultHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 1438
    .local v1, defaultPort:I
    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1439
    new-instance v2, Lorg/apache/http/HttpHost;

    .end local v2           #proxy:Lorg/apache/http/HttpHost;
    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 1440
    .restart local v2       #proxy:Lorg/apache/http/HttpHost;
    sget-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v3, :cond_0

    .line 1441
    const-string v3, "UrlDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use proxy : defaultHost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultPort:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    return-object v2
.end method

.method private static getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"
    .parameter "forceDim"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v4, 0x1

    .line 817
    invoke-static {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    .line 820
    .local v0, default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {p1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    invoke-virtual {p1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    iget v2, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, p1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 835
    .end local v0           #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_0
    :goto_0
    return-object p0

    .line 827
    .restart local v0       #default_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v1

    .line 828
    .local v1, scaled_dim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    iget v2, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v3, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "bitmapConfig"

    .prologue
    .line 1936
    if-nez p0, :cond_1

    .line 1937
    const/4 v3, 0x0

    .line 1980
    :cond_0
    :goto_0
    return-object v3

    .line 1938
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1939
    .local v10, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 1940
    .local v9, nSrcH:I
    int-to-float v14, v10

    move/from16 v0, p1

    int-to-float v15, v0

    div-float v5, v14, v15

    .line 1941
    .local v5, fXratio:F
    int-to-float v14, v9

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v6, v14, v15

    .line 1942
    .local v6, fYratio:F
    if-nez p3, :cond_2

    .line 1943
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    .line 1945
    :cond_2
    cmpg-float v14, v5, v6

    if-gtz v14, :cond_3

    .line 1946
    move v8, v10

    .line 1947
    .local v8, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v5

    float-to-int v7, v14

    .line 1948
    .local v7, nSrcDrawH:I
    sub-int v14, v9, v7

    div-int/lit8 v12, v14, 0x2

    .line 1950
    .local v12, nYoffset:I
    move-object/from16 v0, p3

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1952
    .local v2, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1953
    .local v4, canvasDst:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1954
    .local v13, paintDefault:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v12, v7

    move/from16 v0, v16

    invoke-direct {v14, v15, v12, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1957
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1959
    .local v3, bmRet:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1960
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1964
    .end local v2           #bmDst:Landroid/graphics/Bitmap;
    .end local v3           #bmRet:Landroid/graphics/Bitmap;
    .end local v4           #canvasDst:Landroid/graphics/Canvas;
    .end local v7           #nSrcDrawH:I
    .end local v8           #nSrcDrawW:I
    .end local v12           #nYoffset:I
    .end local v13           #paintDefault:Landroid/graphics/Paint;
    :cond_3
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v6

    float-to-int v8, v14

    .line 1965
    .restart local v8       #nSrcDrawW:I
    move v7, v9

    .line 1966
    .restart local v7       #nSrcDrawH:I
    sub-int v14, v10, v8

    div-int/lit8 v11, v14, 0x2

    .line 1968
    .local v11, nXoffset:I
    move-object/from16 v0, p3

    invoke-static {v8, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1970
    .restart local v2       #bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1971
    .restart local v4       #canvasDst:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 1972
    .restart local v13       #paintDefault:Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    add-int v16, v11, v8

    move/from16 v0, v16

    invoke-direct {v14, v11, v15, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1975
    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1977
    .restart local v3       #bmRet:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1978
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private static getScaledDimension(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    .locals 3
    .parameter "original"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 781
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    .line 812
    :cond_0
    :goto_0
    return-object v0

    .line 782
    :cond_1
    if-gtz p1, :cond_2

    if-gtz p2, :cond_2

    .line 783
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 784
    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-le p1, p2, :cond_3

    .line 785
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>()V

    goto :goto_0

    .line 788
    :cond_3
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->clone()Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    move-result-object v0

    .line 790
    .local v0, scaled:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;
    if-lez p1, :cond_4

    .line 791
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-ge v1, p1, :cond_5

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_5

    .line 792
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 793
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 801
    :cond_4
    :goto_1
    if-lez p2, :cond_0

    .line 802
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-le v1, p2, :cond_6

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-lt v1, v2, :cond_6

    .line 803
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 804
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    goto :goto_0

    .line 794
    :cond_5
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-ge v1, p1, :cond_4

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_4

    .line 796
    iput p1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 797
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto :goto_1

    .line 805
    :cond_6
    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    if-lt v1, v2, :cond_0

    .line 807
    iput p2, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 808
    iget v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    goto/16 :goto_0
.end method

.method public static final isValidBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 775
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "name"

    .prologue
    .line 1408
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1409
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 1411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a path separator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "bitmap"
    .parameter "recycleOriginal"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x4100

    .line 1299
    const/high16 v0, 0x4100

    .line 1307
    .local v0, ROUND_RADIUS:F
    invoke-static {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1308
    move-object v5, p1

    .line 1309
    .local v5, temp_bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1311
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1312
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1313
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1314
    const v7, -0xbdbdbe

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1315
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1322
    .local v3, rect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1323
    .local v4, rectf:Landroid/graphics/RectF;
    invoke-virtual {v1, v4, v10, v10, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1324
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1326
    invoke-virtual {v1, v5, v6, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1327
    if-eqz p2, :cond_0

    .line 1328
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object v6, p1

    .line 1332
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #paint:Landroid/graphics/Paint;
    .end local v3           #rect:Landroid/graphics/Rect;
    .end local v4           #rectf:Landroid/graphics/RectF;
    .end local v5           #temp_bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v6
.end method

.method private writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v4, 0x0

    .line 1336
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getApplyMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-static {p1, v0, v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable;->getScaledBitmap(Landroid/graphics/Bitmap;Lcom/htc/graphics/drawable/UrlDrawable$Dimension;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1342
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->roundify:Z

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/htc/graphics/drawable/UrlDrawable;->roundifyBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1346
    :cond_1
    sget-object v0, Lcom/htc/graphics/drawable/UrlDrawable;->sRamCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-boolean v0, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_2

    .line 1349
    const-string v0, "UrlDrawable"

    const-string v1, "[%s][%s] Bitmap stored to RAM cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_2
    return-object p1
.end method

.method private writeToCaches(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    sget v3, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1418
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1423
    invoke-virtual {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V

    .line 1428
    invoke-direct {p0, v0}, Lcom/htc/graphics/drawable/UrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1430
    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1670
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_5

    move-object v0, v4

    .line 1672
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->drawOnScroll:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v3

    if-nez v3, :cond_8

    .line 1676
    :cond_0
    sget-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v3, :cond_1

    .line 1677
    const-string v3, "UrlDrawable"

    const-string v5, "[%d][%s] Draw real avatar"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_1
    iput-boolean v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 1681
    invoke-virtual {p1, v0, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1682
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1683
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1684
    const/4 v1, 0x0

    .local v1, transX:F
    const/4 v2, 0x0

    .line 1685
    .local v2, transY:F
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x10

    if-lez v3, :cond_6

    .line 1686
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v2, v3

    .line 1692
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_7

    .line 1693
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v1, v3

    .line 1699
    :cond_3
    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1700
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1703
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1739
    .end local v1           #transX:F
    .end local v2           #transY:F
    :cond_4
    :goto_3
    return-void

    .line 1670
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v0, v3

    goto/16 :goto_0

    .line 1688
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #transX:F
    .restart local v2       #transY:F
    :cond_6
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x20

    if-lez v3, :cond_2

    .line 1689
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v2, v3, v10

    goto :goto_1

    .line 1695
    :cond_7
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_3

    .line 1696
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v1, v3, v10

    goto :goto_2

    .line 1705
    .end local v1           #transX:F
    .end local v2           #transY:F
    :cond_8
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1706
    sget-boolean v3, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v3, :cond_9

    .line 1707
    const-string v3, "UrlDrawable"

    const-string v5, "[%d][%s] Draw default avatar"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_9
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1711
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1712
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1713
    const/4 v1, 0x0

    .restart local v1       #transX:F
    const/4 v2, 0x0

    .line 1714
    .restart local v2       #transY:F
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x10

    if-lez v3, :cond_c

    .line 1715
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v2, v3

    .line 1721
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_d

    .line 1722
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v1, v3

    .line 1728
    :cond_b
    :goto_5
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1729
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v6, v6, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v7, v7, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/graphics/drawable/UrlDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 1717
    :cond_c
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x20

    if-lez v3, :cond_a

    .line 1718
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v2, v3, v10

    goto :goto_4

    .line 1724
    :cond_d
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayPos:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_b

    .line 1725
    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v5, v5, Lcom/htc/graphics/drawable/UrlDrawable$Options;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float v1, v3, v10

    goto :goto_5

    .line 1735
    .end local v1           #transX:F
    .end local v2           #transY:F
    :cond_e
    const-string v3, "UrlDrawable"

    const-string v4, "[%d][%s] Nothing can be drawn"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public getAvatarOptions()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmapFromDiskCache()Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1624
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 1625
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1627
    :try_start_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "%s.png"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1629
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1632
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1633
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1634
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable found in Disk cache"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :cond_0
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1651
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1643
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #f:Ljava/io/File;
    :cond_1
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1645
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #f:Ljava/io/File;
    :goto_1
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_2

    .line 1646
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] Drawable NOT found in Disk cache"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1640
    :catch_0
    move-exception v2

    .line 1643
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/htc/graphics/drawable/UrlDrawable;->sFileReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 1795
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1797
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1798
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    .line 1813
    :cond_0
    :goto_1
    return v1

    .line 1795
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    goto :goto_0

    .line 1799
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1800
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1801
    :cond_3
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_5

    .line 1802
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 1804
    .local v1, height:I
    if-gtz v1, :cond_4

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1805
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1808
    :cond_4
    if-gtz v1, :cond_0

    .line 1809
    const/16 v1, 0x17

    goto :goto_1

    .line 1813
    .end local v1           #height:I
    :cond_5
    const/16 v1, 0x17

    goto :goto_1
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 1822
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1824
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1825
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    .line 1840
    :cond_0
    :goto_1
    return v1

    .line 1822
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    goto :goto_0

    .line 1826
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1827
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    .line 1828
    :cond_3
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v2, :cond_5

    .line 1829
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    .line 1831
    .local v1, width:I
    if-gtz v1, :cond_4

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1832
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1835
    :cond_4
    if-gtz v1, :cond_0

    .line 1836
    const/16 v1, 0x17

    goto :goto_1

    .line 1840
    .end local v1           #width:I
    :cond_5
    const/16 v1, 0x17

    goto :goto_1
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 1853
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1748
    const/4 v0, -0x3

    return v0
.end method

.method protected getOptions()Lcom/htc/graphics/drawable/UrlDrawable$Options;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    return-object v0
.end method

.method public getRedrawHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDimChanged()Z
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v0, v0, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "path"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1538
    invoke-static {p1}, Lcom/htc/graphics/drawable/ImageUtil;->getOriginalSize(Ljava/lang/String;)[I

    move-result-object v6

    .line 1539
    .local v6, originalSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9, p2, p3}, Lcom/htc/graphics/drawable/ImageUtil;->countNewSize(IIII)[I

    move-result-object v5

    .line 1541
    .local v5, newSize:[I
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    const/4 v10, 0x0

    aget v10, v5, v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/graphics/drawable/ImageUtil;->countSampleValue(IIII)I

    move-result v7

    .line 1544
    .local v7, sampleValue:I
    invoke-static {}, Lcom/htc/graphics/drawable/UrlDrawable;->getDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 1545
    .local v4, bopts:Landroid/graphics/BitmapFactory$Options;
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1547
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1548
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 1549
    const-string v8, "UrlDrawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap could not be decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v8, 0x0

    .line 1568
    :goto_0
    return-object v8

    .line 1553
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1554
    .local v1, afterSameplWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1555
    .local v0, afterSameplHeight:I
    const/4 v8, 0x0

    aget v8, v5, v8

    if-gt v1, v8, :cond_1

    const/4 v8, 0x1

    aget v8, v5, v8

    if-le v0, v8, :cond_2

    .line 1556
    :cond_1
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1558
    .local v3, bitmap2:Landroid/graphics/Bitmap;
    if-eq v3, v2, :cond_2

    .line 1559
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1560
    move-object v2, v3

    .line 1563
    .end local v3           #bitmap2:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    if-gt v8, v9, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Lcom/htc/graphics/drawable/UrlDrawable;->sMaxFetchedImageDimension:I

    if-gt v8, v9, :cond_3

    move-object v8, v2

    .line 1565
    goto :goto_0

    .line 1566
    :cond_3
    const-string v8, "UrlDrawable"

    const-string v9, "bitmap too large"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1568
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected redrawImage()V
    .locals 4

    .prologue
    .line 1988
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->needSendRedrawMsg:Z

    if-eqz v1, :cond_2

    .line 1991
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 1992
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1993
    const-string v1, "UrlDrawable"

    const-string v2, "sendbroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "urldrawable_redraw_image"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1996
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "urldrawable_redraw_image_url"

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1997
    const-string/jumbo v1, "urldrawable_redraw_image_in_list_pos"

    iget v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1998
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v2, "htc.opensense.permission.USE_BROADCAST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2003
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 2004
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    const/16 v2, 0x101

    iget v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2008
    :cond_2
    return-void
.end method

.method public resetParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 972
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 973
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->reset()V

    .line 976
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 978
    :cond_0
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mNeverDrawn:Z

    .line 980
    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 982
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1759
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 1882
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1769
    return-void
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 966
    return-void
.end method

.method protected setHeight(Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 0
    .parameter "option"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 950
    return-void
.end method

.method protected setHeight(Ljava/lang/String;)V
    .locals 0
    .parameter "imageId"

    .prologue
    .line 941
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    .line 942
    return-void
.end method

.method public setListPos(I)V
    .locals 0
    .parameter "listPos"

    .prologue
    .line 933
    iput p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mListPos:I

    .line 934
    return-void
.end method

.method public setRedrawHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2021
    :cond_0
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mRedrawHandler:Landroid/os/Handler;

    .line 2023
    :cond_1
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 844
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 845
    return-void
.end method

.method public setStart()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1000
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1001
    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v6}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 1002
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1003
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    const/4 v0, 0x0

    .line 1011
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1016
    :goto_0
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1017
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v3, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 1018
    sget-object v2, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1019
    sget-boolean v2, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1020
    const-string v2, "UrlDrawable"

    const-string v3, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    :goto_1
    return-void

    .line 1012
    :catch_0
    move-exception v1

    .line 1013
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1034
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method setStart(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V
    .locals 9
    .parameter "context"
    .parameter "url"
    .parameter "options"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1040
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v5}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;->cancel(Z)Z

    .line 1042
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1043
    const-string v1, "UrlDrawable"

    const-string v2, "[%s][%s] setStart begins, cancelling previous FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->resetParams()V

    .line 1051
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    .line 1052
    iput-object p2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 1053
    if-eqz p3, :cond_2

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .line 1055
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    const-string v1, "UrlDrawable"

    const-string v2, "Url is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_1
    :goto_1
    return-void

    .line 1053
    .restart local p3
    :cond_2
    new-instance p3, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    .end local p3
    invoke-direct {p3}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    goto :goto_0

    .line 1060
    :cond_3
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 1061
    const-string v1, "UrlDrawable"

    const-string v2, "Context is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1065
    :cond_4
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-ge v1, v2, :cond_5

    .line 1068
    const-string v1, "UrlDrawable"

    const-string v2, "Options.minDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1073
    :cond_5
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-virtual {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->isSet()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_6

    .line 1076
    const-string v1, "UrlDrawable"

    const-string v2, "Options.maxDim is not within the valid range set by Options.forceDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1081
    :cond_6
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    if-le v1, v2, :cond_7

    .line 1083
    const-string v1, "UrlDrawable"

    const-string v2, "Options.minDim should not exceed Options.maxDim!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1087
    :cond_7
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->preferImageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    .line 1097
    :goto_2
    iget-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v1, v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1098
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$4;

    invoke-direct {v1, p0}, Lcom/htc/graphics/drawable/UrlDrawable$4;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;)V

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v3, v3, Lcom/htc/graphics/drawable/UrlDrawable$Options;->defaultBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1128
    :cond_8
    const/4 v0, 0x0

    .line 1130
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->getBitmapFromRamCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1135
    :goto_3
    invoke-static {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1136
    invoke-direct {p0}, Lcom/htc/graphics/drawable/UrlDrawable;->canLoadToRamCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/graphics/drawable/UrlDrawable$WorkerCallable;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Lcom/htc/graphics/drawable/UrlDrawable$1;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;-><init>(Lcom/htc/graphics/drawable/UrlDrawable;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    .line 1138
    sget-object v1, Lcom/htc/graphics/drawable/UrlDrawable;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1139
    sget-boolean v1, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1140
    const-string v1, "UrlDrawable"

    const-string v2, "[%s][%s] setStart begins, dispatching new FutureTask %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mFutureTask:Lcom/htc/graphics/drawable/UrlDrawable$MyFutureTask;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1092
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-object v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->forceDim:Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->minDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget v2, v2, Lcom/htc/graphics/drawable/UrlDrawable$Options;->maxDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    goto/16 :goto_2

    .line 1147
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_a
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mBitmap:Ljava/lang/ref/SoftReference;

    goto/16 :goto_1

    .line 1131
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method protected setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    .line 958
    return-void
.end method

.method public writeBitmapToDiskCache(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mOptions:Lcom/htc/graphics/drawable/UrlDrawable$Options;

    iget-boolean v4, v4, Lcom/htc/graphics/drawable/UrlDrawable$Options;->writeDisk:Z

    if-eqz v4, :cond_2

    .line 1364
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 1365
    const/4 v2, 0x0

    .line 1366
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 1368
    :try_start_0
    iget-object v4, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "%s.png"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mImageId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/graphics/drawable/UrlDrawable;->makeFilename(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1370
    .local v1, f:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1372
    sget-boolean v4, Lcom/htc/graphics/drawable/UrlDrawable;->DEBUG_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 1373
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s] Bitmap stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1382
    :cond_0
    if-eqz v3, :cond_1

    .line 1383
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1385
    :cond_1
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1389
    .end local v1           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 1377
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1378
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "UrlDrawable"

    const-string v5, "[%s][%s] Bitmap NOT stored to Disk cache"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/graphics/drawable/UrlDrawable;->mUrl:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1382
    if-eqz v2, :cond_3

    .line 1383
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1385
    :cond_3
    sget-object v4, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1382
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_4

    .line 1383
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1385
    :cond_4
    sget-object v5, Lcom/htc/graphics/drawable/UrlDrawable;->sFileWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 1382
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1377
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
