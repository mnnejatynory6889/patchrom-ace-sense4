.class Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;
.super Landroid/os/Handler;
.source "MfFragmentSceneMainBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase$1;->this$0:Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->onMessage(Landroid/os/Message;)Z

    return-void
.end method
