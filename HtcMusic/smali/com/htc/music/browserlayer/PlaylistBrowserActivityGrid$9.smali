.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showOnlineMusicLoadingDialog(Z)V
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
    .line 879
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/online/OnlineMusicGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/online/OnlineMusicGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/online/OnlineMusicGetter;->stopFetch()V

    .line 886
    :cond_0
    return-void
.end method
