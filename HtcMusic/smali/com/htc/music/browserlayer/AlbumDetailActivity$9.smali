.class Lcom/htc/music/browserlayer/AlbumDetailActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2132
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2133
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2135
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2137
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 2138
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto :goto_0

    .line 2139
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2141
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2142
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->removeDialog(I)V

    .line 2143
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->removeDialog(I)V

    .line 2144
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->removeDialog(I)V

    .line 2146
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2147
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2148
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$4000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 2150
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 2151
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto :goto_0
.end method
