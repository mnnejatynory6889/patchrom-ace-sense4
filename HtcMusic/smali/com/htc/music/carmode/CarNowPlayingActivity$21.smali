.class Lcom/htc/music/carmode/CarNowPlayingActivity$21;
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
    .line 2348
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$21;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarNowPlayingActivity;->finish()V

    .line 2353
    return-void
.end method
