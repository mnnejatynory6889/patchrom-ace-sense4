.class Lcom/htc/music/carmode/CarNowPlayingActivity$20;
.super Landroid/content/BroadcastReceiver;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2326
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2329
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->isPluginMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2333
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2334
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    .line 2335
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2337
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2340
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$20;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
