.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 4765
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Lcom/htc/music/browserlayer/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4765
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 4768
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 4771
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 4773
    if-lez v0, :cond_1

    .line 4774
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->hideEmptyErrorView()V

    .line 4778
    :goto_1
    return-void

    .line 4768
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4776
    .restart local v0       #count:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-result-object v1

    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 4784
    return-void
.end method
