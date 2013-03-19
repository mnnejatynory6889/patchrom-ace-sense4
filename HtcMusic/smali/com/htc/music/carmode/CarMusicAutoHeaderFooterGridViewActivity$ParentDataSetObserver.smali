.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentDataSetObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

.field mIsViewEmpty:Z


# direct methods
.method public constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 764
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mIsViewEmpty:Z

    .line 765
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    .line 766
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 770
    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "ParentDataSetObserver.onChanged+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    move v0, v1

    .line 772
    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 774
    if-lez v0, :cond_2

    .line 775
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mIsViewEmpty:Z

    if-eqz v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 777
    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mIsViewEmpty:Z

    .line 783
    :cond_0
    :goto_1
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "ParentDataSetObserver.onChanged-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void

    .line 771
    .end local v0           #count:I
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    .line 780
    .restart local v0       #count:I
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 781
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mIsViewEmpty:Z

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 788
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method
