.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initButtonsPanel()V
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
    .line 536
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 539
    return-void
.end method
