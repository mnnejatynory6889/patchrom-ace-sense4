.class Lcom/htc/music/HtcMusic$19;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Lcom/htc/music/widget/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 3
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 1611
    if-nez p4, :cond_1

    .line 1613
    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$3002(Lcom/htc/music/HtcMusic;Z)Z

    .line 1614
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1616
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    const-string v1, "command"

    const-string v2, "ffstart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1626
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->refreshNow()J
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$1500(Lcom/htc/music/HtcMusic;)J

    .line 1627
    return-void

    .line 1620
    :cond_1
    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    const-string v2, "ffstop"

    #calls: Lcom/htc/music/HtcMusic;->stopFFRWScan(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$2900(Lcom/htc/music/HtcMusic;Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/htc/music/HtcMusic$19;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mIsFFScanOn:Z
    invoke-static {v1, v2}, Lcom/htc/music/HtcMusic;->access$3002(Lcom/htc/music/HtcMusic;Z)Z

    goto :goto_0
.end method
