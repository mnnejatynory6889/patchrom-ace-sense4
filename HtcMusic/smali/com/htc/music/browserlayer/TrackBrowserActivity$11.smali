.class Lcom/htc/music/browserlayer/TrackBrowserActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1883
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1884
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1885
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 1886
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateQueueTitle()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1892
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDeletedOneRow:Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Z)Z

    goto :goto_0

    .line 1895
    :cond_2
    new-instance v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1896
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1897
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1900
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
