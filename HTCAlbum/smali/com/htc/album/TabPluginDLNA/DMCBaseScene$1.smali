.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const v1, 0x220010

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->onPostMessage(I)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onServiceError()V
    .locals 0

    return-void
.end method
