.class Lcom/htc/music/browserlayer/TrackBrowserActivity$22;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3728
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$22;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->doPauseResume()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 3731
    return-void
.end method
