.class Lcom/android/camera/component/HdrController$5;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$5;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$5;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$5;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->endTakePicture()V

    new-instance v6, Lcom/android/camera/imaging/SaveImageTask;

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v6, v0, p1}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HdrController$5;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/HdrController;->access$500(Lcom/android/camera/component/HdrController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
