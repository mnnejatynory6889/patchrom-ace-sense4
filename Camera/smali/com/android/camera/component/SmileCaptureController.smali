.class final Lcom/android/camera/component/SmileCaptureController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "SmileCaptureController.java"


# static fields
.field static final MSG_LINK:I = 0x2711

.field static final MSG_SET_SMILE_CAPTURE:I = 0x2712

.field static final NAME:Ljava/lang/String; = "Smile-Capture Controller"


# instance fields
.field private m_IsEnabled:Z

.field private m_UI:Lcom/android/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Smile-Capture Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmileCaptureController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/SmileCaptureController;->m_IsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmileCaptureController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/SmileCaptureController;->updateSmileCaptureState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmileCaptureController;)Lcom/android/camera/component/SmileCaptureUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmileCaptureController;->m_UI:Lcom/android/camera/component/SmileCaptureUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmileCaptureController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateSmileCaptureState(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/camera/component/SmileCaptureController;->m_IsEnabled:Z

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const-string v1, "ola-sbd-options"

    const-string v2, "120"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable smile-capturer"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_blink detection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ola-sbd-options"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable blink"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "ola-sbd-options"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - None"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - No camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureController;->m_UI:Lcom/android/camera/component/SmileCaptureUI;

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/SmileCaptureUI;

    iput-object v0, p0, Lcom/android/camera/component/SmileCaptureController;->m_UI:Lcom/android/camera/component/SmileCaptureUI;

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/SmileCaptureController;->updateSmileCaptureState(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/SmileCaptureController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/SmileCaptureController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureController$1;-><init>(Lcom/android/camera/component/SmileCaptureController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/SmileCaptureController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmileCaptureController$2;-><init>(Lcom/android/camera/component/SmileCaptureController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method
