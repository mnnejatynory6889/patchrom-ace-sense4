.class Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
.super Landroid/os/Handler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5863
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 5867
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 5880
    :cond_0
    :goto_0
    return-void

    .line 5869
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 5870
    .local v0, listview:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 5871
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 5875
    .end local v0           #listview:Lcom/htc/widget/HtcListView;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5876
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    .line 5867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
