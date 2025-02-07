.class public abstract Lcom/android/camera/component/CameraCompoment;
.super Lcom/android/camera/component/Component;
.source "CameraCompoment.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_Resources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraActivity\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    const-string v0, "cameraThread"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraThread\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p4, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    invoke-super {p0}, Lcom/android/camera/component/Component;->deinitializeOverride()V

    return-void
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method protected abstract getCameraMode()Lcom/android/camera/CameraMode;
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method protected final getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCameraType()Lcom/android/camera/CameraType;
.end method

.method protected final getDimension(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected final getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method protected final getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
