.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    .line 1587
    const/4 v0, 0x1

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1588
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1592
    const-string v1, "[LocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ TrackQueryHandler, onQueryComplete(), token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 1622
    :goto_0
    return-void

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1598
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1599
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1600
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1602
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1603
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iput-boolean v4, v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1605
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1607
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 1608
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 1609
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 1610
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "album_art"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 1613
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1614
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1615
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1617
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V
    invoke-static {v1, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Z)V

    goto/16 :goto_0
.end method
