.class Lcom/htc/music/MediaPlaybackService$9;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 3094
    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 3097
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPlayer:Lcom/htc/music/MediaPlaybackService$MultiPlayer;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$2100(Lcom/htc/music/MediaPlaybackService;)Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3098
    const-string v0, "[MediaPlaybackService]"

    const-string v1, "handleMessage: mPlayer==null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    :cond_0
    :goto_0
    return-void

    .line 3102
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$4600(Lcom/htc/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mServiceInUse:I
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$6400(Lcom/htc/music/MediaPlaybackService;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$1900(Lcom/htc/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #calls: Lcom/htc/music/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$6500(Lcom/htc/music/MediaPlaybackService;Z)V

    .line 3110
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->stopForeground(Z)V

    .line 3111
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackService$9;->this$0:Lcom/htc/music/MediaPlaybackService;

    #getter for: Lcom/htc/music/MediaPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackService;->access$6600(Lcom/htc/music/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
