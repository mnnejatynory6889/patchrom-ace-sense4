.class Lcom/htc/music/MiniPlayer$2;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 396
    const-string v0, "[MiniPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 400
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    iget-object v0, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$000(Lcom/htc/music/MiniPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "[MiniPlayer]"

    const-string v1, "mIsServiceBinded already be true when service connected!! somebody could call bind twice!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/MiniPlayer;->mIsServiceBinded:Z
    invoke-static {v0, v1}, Lcom/htc/music/MiniPlayer;->access$002(Lcom/htc/music/MiniPlayer;Z)Z

    .line 409
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    #getter for: Lcom/htc/music/MiniPlayer;->isReleased:Z
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$100(Lcom/htc/music/MiniPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->unBindMediaPlayer()V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->refreshInfo()V

    .line 415
    const-string v0, "[MiniPlayer]"

    const-string v1, "onServiceConnected finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 419
    const-string v0, "[MiniPlayer]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/htc/music/MiniPlayer$2;->this$0:Lcom/htc/music/MiniPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/music/MiniPlayer;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 421
    return-void
.end method
