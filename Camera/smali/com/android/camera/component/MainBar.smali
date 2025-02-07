.class Lcom/android/camera/component/MainBar;
.super Lcom/android/camera/component/UIComponent;
.source "MainBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/MainBar$24;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_POPUP:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Main-bar"

.field private static final POPUP_TIMEOUT:I = 0x1f40


# instance fields
.field private m_CurrentAnchor:Landroid/view/View;

.field private m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

.field private m_FlashButton:Lcom/htc/widget/HtcIconButton;

.field private m_FlashButtonContainter:Landroid/widget/RelativeLayout;

.field private m_FunctionBar:Landroid/view/View;

.field private final m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

.field private final m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

.field private m_ScenesButton:Lcom/htc/widget/HtcIconButton;

.field private m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

.field private m_SettingsButton:Lcom/htc/widget/HtcIconButton;

.field private m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

.field private m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

.field private final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Main-bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/MainBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$1;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    new-instance v0, Lcom/android/camera/component/MainBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$2;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    const-string v0, "MainBar.SettingsMenuState"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/MainBar;)Lcom/android/camera/property/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateButtonStates()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/MainBar;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/MainBar;Lcom/android/camera/UIState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->resetCloseMenuTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/MainBar;)Lcom/android/camera/widget/PopupBubble;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/MainBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/MainBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showScenePanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->switchFlashMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/MainBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->toggleSettingsPanel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/MainBar;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method private closePopup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private initializeSettingsPanel()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SettingsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ScenesMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/camera/component/MainBar$18;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$18;-><init>(Lcom/android/camera/component/MainBar;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/ScenesMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$19;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$20;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/SettingsMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$21;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$22;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$22;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    goto :goto_0
.end method

.method private isCurrentAnchor(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureModeItemClicked() - Unknown item ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/HdrScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/PanoramaScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/SmartShotScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 12

    const/16 v8, 0x2711

    const/high16 v7, 0x43b4

    const/16 v4, 0x190

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    sub-float v0, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x4334

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    cmpl-float v0, v2, v1

    if-lez v0, :cond_5

    sub-float/2addr v2, v7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0, v8}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v9, 0x1f40

    move-object v6, p0

    move-object v7, p0

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    :cond_4
    return-void

    :cond_5
    sub-float/2addr v1, v7

    goto :goto_0
.end method

.method private onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    return-void
.end method

.method private onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3

    sparse-switch p2, :sswitch_data_0

    :goto_0
    instance-of v0, p1, Lcom/android/camera/menu/CheckBoxMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/CameraIsoMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method private onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v3}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private resetCloseMenuTimer()V
    .locals 6

    const/16 v2, 0x2711

    invoke-virtual {p0, v2}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    return-void
.end method

.method private setButtonVisibility(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v5, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    const v0, 0x7f020034

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f020034

    :cond_0
    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f02003e

    :cond_1
    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f02003a

    :cond_2
    const-string v2, "smartshot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f020042

    :cond_3
    const-string v2, "sports"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f020042

    :cond_4
    const-string v2, "panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v0, 0x7f02003d

    :cond_5
    const-string v2, "hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v0, 0x7f020039

    :cond_6
    const-string v2, "B_whiteboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f020043

    :cond_7
    const-string v2, "flowers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v0, 0x7f02003c

    :cond_8
    const-string v2, "backlight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v0, 0x7f02003b

    :cond_9
    const-string v2, "night"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v0, 0x7f02003b

    :cond_a
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    :cond_b
    return-void
.end method

.method private setupModesMenu()V
    .locals 9

    const/4 v4, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_fast_fps"

    const v3, 0x7f0a00b3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00b4

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const-string v1, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00bb

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v7}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00ba

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v7}, Lcom/android/camera/component/SmartShotController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00b5

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private showPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    new-instance v0, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v1, Lcom/android/camera/component/MainBar$23;

    invoke-direct {v1, p0}, Lcom/android/camera/component/MainBar$23;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V

    iput-object p2, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    const/16 v0, 0x2711

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    return-void
.end method

.method private showScenePanel()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/ScenesMenu;->updateItemContents()V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0
.end method

.method private showSettingsPanel()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->initializeMenuItems()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->updateItemContents()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->collapseAllItems()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setSelectedGroup(I)V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0
.end method

.method private switchFlashMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/camera/component/MainBar$24;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/android/camera/component/MainBar$24;->$SwitchMap$com$android$camera$FlashMode:[I

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/FlashMode;

    invoke-virtual {v2}, Lcom/android/camera/FlashMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    goto :goto_1

    :pswitch_3
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toggleSettingsPanel()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    goto :goto_0
.end method

.method private updateButtonStates()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    return-void
.end method

.method private updateFlashIcon()V
    .locals 13

    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v11, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v12, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v11, v12}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v11, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_2

    :cond_1
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const v12, 0x7f020037

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/FlashMode;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x3

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    const v11, 0x7f07000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v2, -0x1

    array-length v11, v5

    add-int/lit8 v8, v11, -0x1

    :goto_1
    if-ltz v8, :cond_3

    iget-object v11, v4, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    aget-object v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v2, v8

    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    sget-object v4, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    :cond_4
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    aget v12, v3, v2

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    :goto_2
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_6
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v12, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {v11, v12}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const v1, 0x7f020037

    const v6, 0x7f0a021c

    :goto_3
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_2

    :cond_7
    const v1, 0x7f020038

    const v6, 0x7f0a021b

    goto :goto_3

    nop

    :array_0
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private updateModesMenu()V
    .locals 0

    return-void
.end method

.method private updateSceneButtonStates()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 8

    const v7, 0x7f0b0056

    const v5, 0x7f0b0055

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    const/4 v1, -0x2

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-static {v4, v3, v1}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    iget-object v4, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v4, v6, v6}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    iget-object v4, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v4, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1
.end method

.method private updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7

    const v6, 0x7f0b0054

    const v5, 0x7f0b0053

    const/4 v4, -0x2

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-static {v3, v2, v0}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, v4, v4}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f08009d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v4, 0x7f08009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v4, 0x7f0800a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcIconButton;

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcIconButton;

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v4, 0x7f0800a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcIconButton;

    iput-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x31

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x32

    if-ne v3, v4, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButtonContainter:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButtonContainter:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    new-instance v4, Lcom/android/camera/component/MainBar$3;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$3;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    new-instance v4, Lcom/android/camera/component/MainBar$4;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$4;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    new-instance v4, Lcom/android/camera/component/MainBar$5;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$5;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/MainBar$6;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$6;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/MainBar$7;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$7;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/component/MainBar$8;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$8;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v1, Lcom/android/camera/component/MainBar$9;

    invoke-direct {v1, p0}, Lcom/android/camera/component/MainBar$9;-><init>(Lcom/android/camera/component/MainBar;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/MainBar$10;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/MainBar$10;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/camera/component/MainBar$11;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/camera/component/MainBar$11;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$12;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$12;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$13;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$13;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$14;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$14;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$15;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$15;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$16;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$16;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/MainBar$17;

    invoke-direct {v4, p0}, Lcom/android/camera/component/MainBar$17;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
