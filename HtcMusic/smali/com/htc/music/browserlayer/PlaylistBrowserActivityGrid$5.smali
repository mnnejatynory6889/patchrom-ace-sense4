.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "index"
    .parameter "mediaData"
    .parameter "container"

    .prologue
    .line 585
    if-nez p3, :cond_1

    .line 586
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 587
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 588
    const v2, 0x7f080047

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 589
    .local v1, textView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 590
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 591
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 592
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 597
    .end local v0           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_0
    return-object p3

    .line 594
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
