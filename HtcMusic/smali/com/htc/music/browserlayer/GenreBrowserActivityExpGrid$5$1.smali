.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->onCollapseChildViewEndIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 555
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getFirstChildId(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 557
    .local v0, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 559
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5$1;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 563
    return-void
.end method
