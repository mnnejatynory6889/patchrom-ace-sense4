.class Lcom/htc/music/browserlayer/TrackBrowserActivity$30;
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
    .line 5932
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 5934
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$30;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->onClickMusicStore()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 5935
    return-void
.end method
