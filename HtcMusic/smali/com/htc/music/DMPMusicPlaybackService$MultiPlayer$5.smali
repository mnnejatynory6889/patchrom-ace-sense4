.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2230
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!!! onPrepared()...prepare complete... !!!!!, mIsInitialized = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->initErrorRetryHandle()V
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$300(Lcom/htc/music/DMPMusicPlaybackService;)V

    .line 2234
    const/4 v0, 0x0

    .line 2236
    .local v0, prepared:Z
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    monitor-enter v3

    .line 2237
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsInitialized:Z
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5000(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5100(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 2238
    :goto_0
    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    const/4 v5, 0x1

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mIsPrepared:Z
    invoke-static {v4, v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5102(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;Z)Z

    .line 2239
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    if-eqz v0, :cond_3

    .line 2243
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDefaultPos:J
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5200(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 2244
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared()...prepare complete...seek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDefaultPos:J
    invoke-static {v5}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5200(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mDefaultPos:J
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$5200(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    .line 2248
    :cond_0
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsPlayPressed:Z
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$5300(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2249
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "onPrepared()...prepare complete...mMediaPlayer.start()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3, v1}, Lcom/htc/music/DMPMusicPlaybackService;->access$3702(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    .line 2253
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v3, v3, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$4700(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v4, v4, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$4600(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2254
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #setter for: Lcom/htc/music/DMPMusicPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$102(Lcom/htc/music/DMPMusicPlaybackService;Z)Z

    .line 2255
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 2256
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.statechanged"

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$3200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 2258
    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$5;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-string v2, "com.htc.music.plugin.metachanged"

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$3200(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;)V

    .line 2262
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 2237
    goto/16 :goto_0

    .line 2239
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2261
    :cond_3
    const-string v1, "[DMPMusicPlaybackService]"

    const-string v2, "!!!!! onPrepared()...prepare complete...Do nothing...!!!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
