.class Lcom/htc/music/browserlayer/TrackBrowserActivity$23;
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
    .line 3734
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 3736
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3737
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3738
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3739
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-class v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3740
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3741
    const-string v1, "KeepHistory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3742
    const-string v1, "RemoveStoreHistory"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3743
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$23;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3745
    return-void
.end method
