.class Lcom/htc/music/HtcMusic$8;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .parameter "arg0"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 1302
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v4, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x33

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)I

    move-result v4

    if-gez v4, :cond_0

    .line 1310
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1311
    .local v2, now:J
    const/16 v4, 0x3e8

    if-eq p2, v4, :cond_3

    if-nez p2, :cond_6

    :cond_3
    const/4 v1, 0x1

    .line 1315
    .local v1, isBoundary:Z
    :goto_1
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1000(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1316
    :cond_4
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v5, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$1400(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    int-to-long v7, p2

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$1302(Lcom/htc/music/HtcMusic;J)J

    .line 1318
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1319
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, v4, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v5, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J

    .line 1321
    :cond_5
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v4, p2}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_2
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    .line 1333
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v5, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$1302(Lcom/htc/music/HtcMusic;J)J

    .line 1336
    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v4, v5, v6}, Lcom/htc/music/HtcMusic;->access$1002(Lcom/htc/music/HtcMusic;J)J

    goto :goto_0

    .line 1311
    .end local v1           #isBoundary:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 1323
    .restart local v1       #isBoundary:Z
    :catch_0
    move-exception v0

    .line 1324
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mLastSeekEventTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$1002(Lcom/htc/music/HtcMusic;J)J

    .line 1289
    iget-object v0, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$1102(Lcom/htc/music/HtcMusic;I)I

    .line 1293
    iget-object v0, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .parameter "bar"

    .prologue
    .line 1344
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 1345
    .local v1, progress:I
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_0

    .line 1346
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTrackingTouch()...mService is null, mProgressPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :goto_0
    return-void

    .line 1352
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1353
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1400(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$1302(Lcom/htc/music/HtcMusic;J)J

    .line 1354
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    const-wide/16 v4, -0x1

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$1302(Lcom/htc/music/HtcMusic;J)J

    .line 1366
    const/4 v2, 0x0

    .line 1367
    .local v2, repeatUpdate:Z
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    .line 1369
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1373
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 1374
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1375
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1355
    .end local v2           #repeatUpdate:Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressPos:I
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1100(Lcom/htc/music/HtcMusic;)I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_1

    .line 1356
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDuration:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1400(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    int-to-long v6, v1

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    #setter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v3, v4, v5}, Lcom/htc/music/HtcMusic;->access$1302(Lcom/htc/music/HtcMusic;J)J

    .line 1357
    const-string v3, "[HtcMusic]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStopTrackingTouch seek to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v5}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v3, v3, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mPosOverride:J
    invoke-static {v4}, Lcom/htc/music/HtcMusic;->access$1300(Lcom/htc/music/HtcMusic;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IMediaPlaybackService;->seek(J)J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1378
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #repeatUpdate:Z
    :cond_4
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 1381
    :cond_5
    iget-object v3, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    goto/16 :goto_0

    .line 1370
    :catch_1
    move-exception v3

    goto :goto_2
.end method
