.class Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParentDataSetObserver"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

.field mUiRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 853
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    .line 850
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    .line 851
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 871
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onChanged+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mActivity:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;->mUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 873
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 877
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "ParentDataSetObserver.onInvalidated-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method
