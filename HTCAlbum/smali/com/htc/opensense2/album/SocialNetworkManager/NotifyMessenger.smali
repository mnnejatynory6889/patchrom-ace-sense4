.class public Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.super Ljava/lang/Object;
.source "NotifyMessenger.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# instance fields
.field private mHandlerData:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method
