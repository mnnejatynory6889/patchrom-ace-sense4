.class Lcom/htc/music/NowPlayingViewHelper$16;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 2595
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2598
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2599
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2600
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    .line 2614
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$400(Lcom/htc/music/NowPlayingViewHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2615
    :cond_1
    return-void

    .line 2601
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2602
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1, v3}, Lcom/htc/music/NowPlayingViewHelper;->showSpinner(Z)V

    goto :goto_0

    .line 2603
    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2606
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2609
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-virtual {v1}, Lcom/htc/music/NowPlayingViewHelper;->hideHtcContextMenu()V

    .line 2610
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 2611
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$16;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method
