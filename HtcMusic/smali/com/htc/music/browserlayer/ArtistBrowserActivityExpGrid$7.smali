.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDeleteDialog()V
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
    .line 857
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 859
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    move-result-object v1

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    .line 883
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    if-nez v1, :cond_1

    .line 865
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3102(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 867
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3202(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I

    .line 868
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 871
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "go delete : type 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3802(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 873
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$3902(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I

    .line 874
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 880
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 881
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 882
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$4600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
