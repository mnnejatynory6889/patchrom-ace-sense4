.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->finish()V

    .line 177
    return-void
.end method
