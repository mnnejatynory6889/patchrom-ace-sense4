.class Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcMusicRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 8323
    iput-object p1, p0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->this$0:Lcom/htc/music/HtcMusic;

    .line 8324
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 8325
    return-void
.end method


# virtual methods
.method public activityPopup(Z)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 8337
    iget-object v0, p0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->this$0:Lcom/htc/music/HtcMusic;

    iput-boolean p1, v0, Lcom/htc/music/HtcMusic;->mActivityPopup:Z

    .line 8338
    return-void
.end method

.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 8333
    iget-object v0, p0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 8334
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 8329
    iget-object v0, p0, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 8330
    return-void
.end method
