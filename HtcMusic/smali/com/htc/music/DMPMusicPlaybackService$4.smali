.class Lcom/htc/music/DMPMusicPlaybackService$4;
.super Landroid/os/Handler;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMPMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 967
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 970
    :pswitch_0
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, ">> Receive SERVER_DIED <<"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$3700(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 973
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->requestUpperDoNext(Z)V
    invoke-static {v3, v5}, Lcom/htc/music/DMPMusicPlaybackService;->access$1600(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    goto :goto_0

    .line 979
    :cond_1
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$2300(Lcom/htc/music/DMPMusicPlaybackService;)V

    goto :goto_0

    .line 985
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mRepeatMode:I
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$3800(Lcom/htc/music/DMPMusicPlaybackService;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 988
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->openCurrent()V
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$2300(Lcom/htc/music/DMPMusicPlaybackService;)V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const/4 v4, 0x0

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->requestUpperDoNext(Z)V
    invoke-static {v3, v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$1600(Lcom/htc/music/DMPMusicPlaybackService;Z)V

    goto :goto_0

    .line 995
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$3900(Lcom/htc/music/DMPMusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1000
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mCurrentState:Lcom/htc/music/DMPMusicPlaybackService$DMPState;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$2200(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    move-result-object v3

    sget-object v4, Lcom/htc/music/DMPMusicPlaybackService$DMPState;->READY:Lcom/htc/music/DMPMusicPlaybackService$DMPState;

    if-ne v3, v4, :cond_5

    .line 1002
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%% case DLNA_ERROR_HANDLE: show error %%% isPlaying() => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v5}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", if true => pause() and seek(0)..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1004
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v3}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    .line 1005
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    .line 1008
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1010
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1011
    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, errorReason:Ljava/lang/String;
    const-string v3, "[DMPMusicPlaybackService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%%% case DLNA_ERROR_HANDLE: errorReason => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    const-string v4, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v3, v2, v4}, Lcom/htc/music/IPluginIPCNotify;->onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1018
    :catch_0
    move-exception v1

    .line 1020
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1025
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #errorReason:Ljava/lang/String;
    :cond_4
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "%%% case DLNA_ERROR_HANDLE: no error cause got here...don\'t show Toast!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1030
    .end local v0           #data:Landroid/os/Bundle;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1031
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->getDLNAErrorString()Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/DMPMusicPlaybackService;->access$4000(Lcom/htc/music/DMPMusicPlaybackService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IPluginIPCNotify;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1032
    :catch_1
    move-exception v1

    .line 1034
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1041
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1043
    :try_start_2
    iget-object v3, p0, Lcom/htc/music/DMPMusicPlaybackService$4;->this$0:Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNotify:Lcom/htc/music/IPluginIPCNotify;
    invoke-static {v3}, Lcom/htc/music/DMPMusicPlaybackService;->access$900(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/IPluginIPCNotify;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "notify"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.music.DMPMusicPlaybackService"

    invoke-interface {v3, v4, v5}, Lcom/htc/music/IPluginIPCNotify;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1044
    :catch_2
    move-exception v1

    .line 1045
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1049
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v3, "[DMPMusicPlaybackService]"

    const-string v4, "case NOTIFY_UPPER:...mNotify is null??!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
