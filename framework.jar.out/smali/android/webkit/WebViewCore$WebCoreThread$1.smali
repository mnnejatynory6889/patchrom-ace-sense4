.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 854
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 856
    :sswitch_0
    iget-object v2, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebViewCore;

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v2, v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Landroid/webkit/WebViewCore$WebCoreThread;Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewCore;

    .line 857
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 861
    :sswitch_1
    sget-boolean v1, Landroid/webkit/WebView;->mbUseScrollingPatch:Z

    if-eqz v1, :cond_2

    .line 863
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextureGeneratorThreadID()I
    invoke-static {}, Landroid/webkit/WebViewCore;->access$800()I

    move-result v2

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$WebCoreThread;->access$702(Landroid/webkit/WebViewCore$WebCoreThread;I)I

    .line 865
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    if-lez v1, :cond_1

    .line 867
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_1
    :goto_1
    const/16 v1, 0xa

    :try_start_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 882
    :goto_2
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$900()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 896
    :goto_3
    invoke-static {}, Landroid/webkit/WebViewCore;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    const-string v1, "WebCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increasing values:: CPU Set options.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$1000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$1100()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 899
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$1100()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, ex:Ljava/lang/Exception;
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadPriority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 878
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 879
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadPriority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 888
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x3

    :try_start_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 891
    :catch_2
    move-exception v0

    .line 892
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadPriority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 905
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_2
    sget-boolean v1, Landroid/webkit/WebView;->mbUseScrollingPatch:Z

    if-eqz v1, :cond_3

    .line 907
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextureGeneratorThreadID()I
    invoke-static {}, Landroid/webkit/WebViewCore;->access$800()I

    move-result v2

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$WebCoreThread;->access$702(Landroid/webkit/WebViewCore$WebCoreThread;I)I

    .line 908
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    if-lez v1, :cond_3

    .line 910
    :try_start_3
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 918
    :cond_3
    :goto_4
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 925
    :goto_5
    sget-boolean v1, Landroid/webkit/WebView;->mbUseScrollingPatch:Z

    if-eqz v1, :cond_4

    .line 927
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 929
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore;->sendPriorityMessageToWebView()V
    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$1200(Landroid/webkit/WebViewCore;)V

    .line 933
    :cond_4
    invoke-static {}, Landroid/webkit/WebViewCore;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    const-string v1, "WebCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increasing values:: CPU Set options.. flag is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$1000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$1100()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 936
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$1100()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto/16 :goto_0

    .line 911
    :catch_3
    move-exception v0

    .line 912
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadPriority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 921
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 922
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThreadPriority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 942
    .end local v0           #ex:Ljava/lang/Exception;
    :sswitch_3
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_5

    .line 943
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_5
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 950
    :sswitch_4
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_6

    .line 951
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 954
    :cond_6
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    :sswitch_5
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_7

    .line 959
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 962
    :cond_7
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyProperties;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
    .end sparse-switch
.end method
