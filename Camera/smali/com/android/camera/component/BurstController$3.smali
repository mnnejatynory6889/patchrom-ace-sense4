.class Lcom/android/camera/component/BurstController$3;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->initializeOverride()V
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
        "Lcom/android/camera/RequestTakingPictureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/RequestTakingPictureEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/RequestTakingPictureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/RequestTakingPictureEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$500(Lcom/android/camera/component/BurstController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$3;->this$0:Lcom/android/camera/component/BurstController;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v2, p3, Lcom/android/camera/RequestTakingPictureEventArgs;->camera:Landroid/hardware/Camera;

    #calls: Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/BurstController;->access$700(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    invoke-virtual {p3}, Lcom/android/camera/RequestTakingPictureEventArgs;->setHandled()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/RequestTakingPictureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/BurstController$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/RequestTakingPictureEventArgs;)V

    return-void
.end method
