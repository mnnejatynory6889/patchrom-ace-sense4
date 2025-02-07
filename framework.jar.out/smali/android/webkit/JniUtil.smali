.class Landroid/webkit/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final memThreshold:J = 0x4000000L

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;

.field private static sLowMemory:Z

.field private static sUseChromiumHttpStack:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const-string v0, "chromium_net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/JniUtil;->sLowMemory:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSatisfyMemoryAllocation(J)Z
    .locals 10
    .parameter "bytesRequested"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 190
    sget-boolean v6, Landroid/webkit/JniUtil;->sLowMemory:Z

    if-nez v6, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    sget-object v6, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 196
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 197
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 198
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v8, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long v0, v6, v8

    .line 199
    .local v0, leftToAllocate:J
    const-wide/32 v6, 0x4000000

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 200
    const-string/jumbo v6, "webkit"

    const-string v7, "left memories are enough, disable Memory checking"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sput-boolean v5, Landroid/webkit/JniUtil;->sLowMemory:Z

    .line 203
    :cond_2
    iget-boolean v6, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v6, :cond_3

    cmp-long v6, p0, v0

    if-ltz v6, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private static checkInitialized()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call CookieSyncManager::createInstance() or create a webview before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .locals 14
    .parameter "url"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v13, -0x1

    .line 102
    const-class v10, Landroid/webkit/JniUtil;

    monitor-enter v10

    :try_start_0
    const-string v11, "content:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    if-eqz v11, :cond_1

    .line 108
    const/16 v11, 0x3f

    :try_start_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 109
    .local v3, mimeIndex:I
    if-eq v3, v13, :cond_0

    .line 110
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 112
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 113
    .local v7, uri:Landroid/net/Uri;
    sget-object v11, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 114
    .local v2, is:Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .local v0, buffer:[B
    const-wide/16 v5, 0x0

    .line 118
    .local v5, size:J
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .local v4, n:I
    if-eq v4, v13, :cond_2

    .line 119
    int-to-long v11, v4

    add-long/2addr v5, v11

    goto :goto_0

    .line 122
    .end local v4           #n:I
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #mimeIndex:I
    .end local v5           #size:J
    .end local v7           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, "webkit"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v5, v8

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    monitor-exit v10

    return-wide v5

    :cond_1
    move-wide v5, v8

    goto :goto_1

    .line 102
    :catchall_1
    move-exception v8

    monitor-exit v10

    throw v8

    .line 122
    .restart local v0       #buffer:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #mimeIndex:I
    .restart local v4       #n:I
    .restart local v5       #size:J
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 142
    const-class v4, Landroid/webkit/JniUtil;

    monitor-enter v4

    :try_start_0
    const-string v5, "content:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    const/16 v5, 0x3f

    :try_start_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 149
    .local v1, mimeIndex:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 150
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 152
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, uri:Landroid/net/Uri;
    sget-object v5, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 159
    .end local v1           #mimeIndex:I
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "webkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized getAutofillQueryUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 180
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "web_autofill_query_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const-class v2, Landroid/webkit/JniUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 82
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 83
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 84
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_1

    .line 85
    const-string v1, ""

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 87
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static declared-synchronized getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 58
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 68
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeUseChromiumHttpStack()Z
.end method

.method public static onLowMemory()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "webkit"

    const-string/jumbo v1, "onLowMemory, enable Memory checking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/JniUtil;->sLowMemory:Z

    .line 213
    return-void
.end method

.method protected static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static useChromiumHttpStack()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Landroid/webkit/JniUtil;->nativeUseChromiumHttpStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    .line 173
    :cond_0
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
