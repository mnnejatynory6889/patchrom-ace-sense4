.class Lcom/htc/album/SocialNetwork/ListViewSearch$4;
.super Ljava/lang/Object;
.source "ListViewSearch.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    iget v0, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    iput p2, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$300(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    iput p2, v0, Lcom/htc/album/SocialNetwork/ListViewSearch;->mLastScrollState:I

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewSearch$4;->this$0:Lcom/htc/album/SocialNetwork/ListViewSearch;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ISocialView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->access$400(Lcom/htc/album/SocialNetwork/ListViewSearch;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setScrollState(II)V

    goto :goto_0
.end method
