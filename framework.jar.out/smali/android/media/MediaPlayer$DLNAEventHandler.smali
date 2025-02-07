.class Landroid/media/MediaPlayer$DLNAEventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAEventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 3323
    iput-object p1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3324
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3325
    iput-object p2, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3326
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 3330
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3358
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    :cond_0
    :goto_0
    return-void

    .line 3332
    :sswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3333
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 3336
    :sswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3337
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3338
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 3342
    :sswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3343
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 3347
    :sswitch_3
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3348
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 3352
    :sswitch_4
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3353
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 3354
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer$DLNAEventHandler;->this$0:Landroid/media/MediaPlayer;

    #calls: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;Z)V

    goto :goto_0

    .line 3330
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
