.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "xxxid"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, p1, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "xxxid"

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, p1, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 477
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 479
    const-string v2, "album_art"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    const/4 v0, 0x0

    .line 483
    :cond_0
    return-object v1
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 506
    return-void
.end method
