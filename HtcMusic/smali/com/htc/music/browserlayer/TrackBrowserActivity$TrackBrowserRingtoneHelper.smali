.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackBrowserRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 5838
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5839
    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    .line 5840
    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    .prologue
    .line 5848
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 5849
    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->showDialog(I)V

    .line 5845
    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "contactResultCode"

    .prologue
    .line 5852
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    .line 5853
    return-void
.end method
