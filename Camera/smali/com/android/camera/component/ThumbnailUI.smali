.class public Lcom/android/camera/component/ThumbnailUI;
.super Lcom/android/camera/component/UIComponent;
.source "ThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailUI$18;,
        Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;
    }
.end annotation


# static fields
.field private static final FADEIN_TIMEOUT:I = 0x7d0

.field private static final MSG_CHECK_INITIAL_ROTATION:I = 0x2715

.field static final MSG_DISABLE_THUMB:I = 0x2713

.field static final MSG_ENABLE_THUMB:I = 0x2712

.field private static final MSG_FADEOUT:I = 0x2714

.field static final MSG_THUMB_IMAGE_CREATED:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Thumbnail UI"


# instance fields
.field private m_AnimationDownRatio:F

.field private m_AnimationUpRatio:F

.field private m_HasPendingClickEvent:Z

.field private m_IsAnimating:Z

.field private m_IsEnabled:Z

.field private m_IsFakeRotation:Z

.field private m_IsFakeRotationTimeout:Z

.field private m_IsFirstThumbnail:Z

.field private m_MediaInfo:Lcom/android/camera/MediaInfo;

.field private m_ThumbnailButton:Landroid/view/View;

.field private m_ThumbnailButtonContainer:Landroid/view/View;

.field private m_ThumbnailButtonRotateContainer:Landroid/view/View;

.field private m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

.field private m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Thumbnail UI"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotation:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->hideFakeUIRotation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotationTimeout:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->createThumbnailImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/component/ThumbnailUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailUI;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->showFakeUIRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/component/ThumbnailController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    return-object v0
.end method

.method private clearThumbnailImage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    return-void
.end method

.method private createThumbnailImage()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-nez v1, :cond_0

    const/16 v0, 0x32

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "Thumbnail Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ThumbnailController;

    iput-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/ThumbnailController;->link(Lcom/android/camera/component/ThumbnailUI;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_1
    return-void

    :cond_1
    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "No thumbnail controller to create thumbnail image"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private hideFakeUIRotation()V
    .locals 2

    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotationTimeout:Z

    return-void
.end method

.method private onThumbnailButtonClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/camera/component/ThumbnailUI$18;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    sget-object v3, Lcom/android/camera/component/ThumbnailUI$18;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/RecordingState;

    invoke-virtual {v2}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    instance-of v2, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/camera/actionscreen/CommonActionScreen;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$2;

    invoke-direct {v3, p0, v0}, Lcom/android/camera/component/ThumbnailUI$2;-><init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    iget-object v0, v9, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v11, :cond_3

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v11, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    iput-object p2, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v1, Lcom/android/camera/io/Path;

    invoke-direct {v1, p1}, Lcom/android/camera/io/Path;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    iput-object p3, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5
    sget-object v1, Lcom/android/camera/component/ThumbnailUI$18;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v0, v9, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RecordingState;

    invoke-virtual {v0}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0, v10}, Lcom/android/camera/component/ThumbnailUI;->startThumbnailUpdateAnimation(Z)V

    :cond_7
    iput-boolean v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFirstThumbnail:Z

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v8, v8}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    const/16 v2, 0x2714

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ThumbnailUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    const/4 v10, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->mediaScannerFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$3;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$4;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$5;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$6;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$7;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->stoppingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$8;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$9;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$9;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    new-instance v1, Lcom/android/camera/component/ThumbnailUI$10;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$10;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasPopupBubble:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$11;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$12;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$13;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$13;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$14;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/ThumbnailUI$14;-><init>(Lcom/android/camera/component/ThumbnailUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/ThumbnailUI$15;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailUI$15;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method private showFakeUIRotation()V
    .locals 2

    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsFakeRotationTimeout:Z

    return-void
.end method

.method private showThumbnailButton(ZZ)V
    .locals 3

    const/16 v1, 0x2714

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ThumbnailUI;->removeMessages(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_1
.end method

.method private startAlbum()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/android/camera/ThumbnailButtonEventArgs;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-direct {v1, v2}, Lcom/android/camera/ThumbnailButtonEventArgs;-><init>(Lcom/android/camera/MediaInfo;)V

    :goto_1
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailButtonEventArgs;->isHandled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_MediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->startAlbum(Lcom/android/camera/MediaInfo;)Z

    move-result v2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/camera/ThumbnailButtonEventArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/ThumbnailButtonEventArgs;-><init>(Lcom/android/camera/MediaInfo;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startThumbnailUpdateAnimation(Z)V
    .locals 11

    iget-object v10, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    iget v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    iget v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    iget v5, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$16;

    invoke-direct {v2, p0, v10, v0}, Lcom/android/camera/component/ThumbnailUI$16;-><init>(Lcom/android/camera/component/ThumbnailUI;Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v2, Lcom/android/camera/component/ThumbnailUI$17;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailUI$17;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsAnimating:Z

    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v10, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->clearThumbnailImage()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailController:Lcom/android/camera/component/ThumbnailController;

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z

    iget-boolean v2, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->startAlbum()Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/component/ThumbnailUI;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v1, v0, v4

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/component/ThumbnailUI;->onThumbnailImageCreated(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonRotateContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;-><init>(Lcom/android/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailDrawable:Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    instance-of v0, v0, Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/component/ThumbnailUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$1;-><init>(Lcom/android/camera/component/ThumbnailUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationDownRatio:F

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/camera/component/ThumbnailUI;->m_AnimationUpRatio:F

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->registerListeners()V

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->setupPropertyChangedCallbacks()V

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailUI;->showFakeUIRotation()V

    return-void
.end method
