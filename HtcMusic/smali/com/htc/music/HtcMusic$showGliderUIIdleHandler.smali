.class Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "showGliderUIIdleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 2331
    iput-object p1, p0, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    const/16 v1, 0x3a9c

    .line 2334
    iget-object v0, p0, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2336
    iget-object v0, p0, Lcom/htc/music/HtcMusic$showGliderUIIdleHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1200(Lcom/htc/music/HtcMusic;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
