.class public Lcom/android/camera/effect/EffectPanelUI;
.super Lcom/android/camera/component/UIComponent;
.source "EffectPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectPanelUI$19;
    }
.end annotation


# static fields
.field private static final EFFECT_PANEL_TIMEOUT:I = 0x1388

.field private static final MSG_CHECK_INITIAL_ROTATION:I = 0x2712

.field private static final MSG_CLOSE_EFFECT_PANEL:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Effect Panel"


# instance fields
.field private final effectPanelState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field

.field private m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private m_EffectButton:Landroid/view/View;

.field private m_EffectButtonContainer:Landroid/view/View;

.field private m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

.field private m_EffectListView:Landroid/widget/ListView;

.field private m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_EffectManager:Lcom/android/camera/effect/EffectManager;

.field private m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

.field private m_IsFakeRotation:Z

.field private m_IsFakeRotationTimeout:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Effect Panel"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const-string v0, "EffectPanelUI.EffectPanelState"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->onEffectButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->openUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/effect/EffectPanelUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotation:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IJ)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p8}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->hideFakeUIRotation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/effect/EffectPanelUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotationTimeout:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IJZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/effect/EffectPanelUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/effect/EffectPanelUI;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p8}, Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->closeUI()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/android/camera/MediaInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->showFakeUIRotation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/actionscreen/CommonActionScreen;)Lcom/android/camera/actionscreen/CommonActionScreen;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/effect/EffectPanelUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/effect/EffectPanelUI;Landroid/view/View;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonContent()V

    return-void
.end method

.method private closeUI()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    :cond_0
    return-void
.end method

.method private hideFakeUIRotation()V
    .locals 2

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotationTimeout:Z

    return-void
.end method

.method private initializeUI()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v0}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    const v2, 0x7f0b0136

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/EffectPanelUI;->getDimension(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v2, Lcom/android/camera/effect/EffectPanelUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectPanelUI$13;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v2, Lcom/android/camera/effect/EffectPanelUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectPanelUI$14;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/PopupBubble;->setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v2, Lcom/android/camera/effect/EffectPanelUI$15;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectPanelUI$15;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getEffectList()Lcom/android/camera/effect/EffectList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    new-instance v1, Lcom/android/camera/effect/EffectPanelAdapter;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/effect/EffectPanelAdapter;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V

    iput-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectPanelAdapter;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTrackBallFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/effect/EffectPanelUI$16;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectPanelUI$16;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/camera/effect/EffectPanelUI$17;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/EffectPanelUI$17;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/effect/EffectPanelUI;->updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method

.method private onEffectButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/effect/EffectPanelUI;->togglePanel(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    new-instance v1, Lcom/android/camera/effect/EffectPanelUI$18;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectPanelUI$18;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "No action screen to perform action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openUI()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    :pswitch_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/camera/effect/EffectPanelUI$19;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/android/camera/effect/EffectPanelUI$19;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/effect/EffectPanelUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private showFakeUIRotation()V
    .locals 2

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    check-cast v0, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/DisplayRotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_IsFakeRotationTimeout:Z

    return-void
.end method

.method private startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPhotoEnhancer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.htc.photoenhancer"

    const-string v3, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "filePath"

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "degree"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private startVideoTrimmer(Lcom/android/camera/MediaInfo;)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoTrimmer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start photo enhancer"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method private togglePanel(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isAutoFocusing:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v1}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateEffectButtonAvailability()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/camera/effect/AutoScene;

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEffectButtonContent()V
    .locals 5

    const v4, 0x7f020047

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v0, v1, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIconButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/camera/effect/EffectPanelUI$19;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcIconButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v1, v1, Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    check-cast v1, Lcom/htc/widget/HtcIconButton;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEffectListOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectPanelAdapter;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectListViewContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->InverseLandscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f08006f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButtonContainer:Landroid/view/View;

    const v3, 0x7f080070

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    instance-of v2, v2, Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI;->m_EffectButton:Landroid/view/View;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$1;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$1;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelUI;->showFakeUIRotation()V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectListUpdatedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$2;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->restartingCameraEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$3;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$4;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v1, Lcom/android/camera/effect/EffectPanelUI$5;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/EffectPanelUI$5;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$6;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$6;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$7;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$7;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$8;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$8;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$9;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/effect/EffectPanelUI$9;-><init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$10;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/effect/EffectPanelUI$10;-><init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$11;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$11;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/effect/EffectPanelUI$12;

    invoke-direct {v3, p0}, Lcom/android/camera/effect/EffectPanelUI$12;-><init>(Lcom/android/camera/effect/EffectPanelUI;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
