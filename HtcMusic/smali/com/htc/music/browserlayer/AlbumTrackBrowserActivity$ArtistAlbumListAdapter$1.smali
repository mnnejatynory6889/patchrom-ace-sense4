.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x1

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 957
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "groupPos"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 958
    .local v2, groupPos:I
    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 959
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAudioId:I
    invoke-static {v4, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$402(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I

    .line 960
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget v4, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 961
    .local v1, data2:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v5, "AlbumId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumId:I
    invoke-static {v4, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$502(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;I)I

    .line 962
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v5, "AlbumName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedAlbumName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$602(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v5, "ArtistName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mSelectedArtistName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$702(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-result-object v4

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->showTrackOptions(Ljava/lang/String;III)V
    invoke-static {v4, v3, v2, v6, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;III)V

    .line 965
    return-void
.end method
