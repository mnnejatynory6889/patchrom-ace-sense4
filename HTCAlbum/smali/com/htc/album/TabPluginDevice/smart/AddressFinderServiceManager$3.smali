.class Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;
.super Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;
.source "AddressFinderServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct {p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupBegin(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AddressFinderServiceManager"

    const-string v1, "[HTCAlbum][AddressFinderServiceManager][onLookupBegin]:"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$800(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0xc364

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #calls: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderBegin()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$900(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    return-void
.end method

.method public onLookupEnd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v4, 0xc364

    const/4 v3, 0x0

    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][onLookupEnd] "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;

    if-nez v0, :cond_1

    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][onLookupResult]..task is null..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$800(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$800(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #calls: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderEnd()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1600(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    goto :goto_0
.end method

.method public onLookupError(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessErrorWarning:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1502(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z

    const-string v0, "AddressFinderServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][onLookupError]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLookupResult(I[Lcom/htc/AddressFinderService/interfaces/AddressData;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v6, 0x13a5

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    const-string v2, "isBeginNetworkAccess"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v5, v0, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mEnableNetworkAccessWarning:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1100(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1200(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onRemoveMessage(I)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mMessageHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v6, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    const-string v2, "AddressFinderServiceManager"

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][onLookupResult]: MSG_SHOW_ADDRESS_RETRIEVE_TOAST"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mLockNetworkAccessWarning:Z
    invoke-static {v2, v5}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1202(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mTaskList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$500(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;

    if-nez v1, :cond_2

    const-string v2, "AddressFinderServiceManager"

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][onLookupResult]: skip 1"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #calls: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onUpdateFinderResult([Lcom/htc/AddressFinderService/interfaces/AddressData;)Z
    invoke-static {v2, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1300(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;[Lcom/htc/AddressFinderService/interfaces/AddressData;)Z

    move-result v2

    if-ne v5, v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$3;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #calls: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDispatchFinderResults([Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    invoke-static {v2, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$1400(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;[Lcom/htc/AddressFinderService/interfaces/AddressData;)V

    goto :goto_0
.end method
