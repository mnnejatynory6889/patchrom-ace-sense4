.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;
.super Ljava/lang/Object;
.source "CarAlbumBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunny2/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 416
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 410
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 404
    return-void
.end method
