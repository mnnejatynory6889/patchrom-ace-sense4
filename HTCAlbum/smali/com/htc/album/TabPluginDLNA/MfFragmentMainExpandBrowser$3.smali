.class Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;
.super Ljava/lang/Object;
.source "MfFragmentMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    const-string v2, "2"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "MfFragmentMainExpandBrowser"

    const-string v3, "onChildClick: virtual Gallery folder"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->onLaunchMediaListPage()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;->access$300(Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;)V

    goto :goto_0
.end method
