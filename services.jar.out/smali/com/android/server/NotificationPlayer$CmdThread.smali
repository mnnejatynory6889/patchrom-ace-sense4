.class final Lcom/android/server/NotificationPlayer$CmdThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CmdThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 310
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 314
    :goto_0
    const/4 v1, 0x0

    .line 316
    .local v1, cmd:Lcom/android/server/NotificationPlayer$Command;
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$900(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 317
    :try_start_0
    invoke-static {}, Lcom/android/server/NotificationPlayer;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "RemoveFirst"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$900(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/NotificationPlayer$Command;

    move-object v1, v0

    .line 319
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget v4, v1, Lcom/android/server/NotificationPlayer$Command;->code:I

    packed-switch v4, :pswitch_data_0

    .line 364
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$900(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 365
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$900(Lcom/android/server/NotificationPlayer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 370
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/NotificationPlayer;->mThread:Lcom/android/server/NotificationPlayer$CmdThread;
    invoke-static {v4, v6}, Lcom/android/server/NotificationPlayer;->access$1202(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$CmdThread;)Lcom/android/server/NotificationPlayer$CmdThread;

    .line 371
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #calls: Lcom/android/server/NotificationPlayer;->releaseWakeLock()V
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$1300(Lcom/android/server/NotificationPlayer;)V

    .line 372
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 319
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 323
    :pswitch_0
    invoke-static {}, Lcom/android/server/NotificationPlayer;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PLAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #calls: Lcom/android/server/NotificationPlayer;->startSound(Lcom/android/server/NotificationPlayer$Command;)V
    invoke-static {v4, v1}, Lcom/android/server/NotificationPlayer;->access$1000(Lcom/android/server/NotificationPlayer;Lcom/android/server/NotificationPlayer$Command;)V

    goto :goto_1

    .line 327
    :pswitch_1
    invoke-static {}, Lcom/android/server/NotificationPlayer;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/NotificationPlayer$Command;->requestTime:J

    sub-long v2, v4, v6

    .line 330
    .local v2, delay:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 331
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification stop delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msecs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_4
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 334
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$400(Lcom/android/server/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 335
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4, v8}, Lcom/android/server/NotificationPlayer;->access$402(Lcom/android/server/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 337
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$1100(Lcom/android/server/NotificationPlayer;)Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 338
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mCompletionThread:Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$1100(Lcom/android/server/NotificationPlayer;)Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/NotificationPlayer$CreationAndCompletionThread;->setOriVolume()V

    .line 343
    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$300(Lcom/android/server/NotificationPlayer;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 344
    invoke-static {}, Lcom/android/server/NotificationPlayer;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 345
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP setIgnoreNotificationMuteSetting false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_6
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mVzwCMAS:Z
    invoke-static {v4, v9}, Lcom/android/server/NotificationPlayer;->access$302(Lcom/android/server/NotificationPlayer;Z)Z

    .line 347
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$500(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/media/AudioManager;->setIgnoreNotificationMuteSetting(Z)I

    .line 351
    :cond_7
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$500(Lcom/android/server/NotificationPlayer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 352
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #setter for: Lcom/android/server/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4, v8}, Lcom/android/server/NotificationPlayer;->access$502(Lcom/android/server/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 353
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v4, v5, :cond_1

    .line 355
    invoke-static {}, Lcom/android/server/NotificationPlayer;->access$100()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quit looper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_8
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$000(Lcom/android/server/NotificationPlayer;)Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    .line 359
    .end local v2           #delay:J
    :cond_9
    iget-object v4, p0, Lcom/android/server/NotificationPlayer$CmdThread;->this$0:Lcom/android/server/NotificationPlayer;

    #getter for: Lcom/android/server/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/NotificationPlayer;->access$200(Lcom/android/server/NotificationPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "STOP command without a player"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 374
    :cond_a
    :try_start_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
