.class Lcom/android/camera/component/ThumbnailController$1;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$000(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$200(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$300(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear thumbnail image because UI is showing the latest saved media"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$000(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v1

    const/16 v2, 0x2711

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object v6, v5, v7

    const/4 v4, 0x2

    aput-object v6, v5, v4

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0, v7}, Lcom/android/camera/component/ThumbnailController;->access$402(Lcom/android/camera/component/ThumbnailController;Z)Z

    return-void
.end method
