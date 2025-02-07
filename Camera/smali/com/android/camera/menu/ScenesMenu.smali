.class public Lcom/android/camera/menu/ScenesMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ScenesMenu$SubItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenesMenu"


# instance fields
.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;

.field private m_Settings:Lcom/android/camera/Settings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method private static getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f02008d

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_people_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "smartshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_3
    const-string v1, "sports"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    :cond_4
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_5
    instance-of v1, p0, Lcom/android/camera/effect/ContinuousBurstScene;

    if-eqz v1, :cond_6

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_6
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_7
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_8
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_9
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_a
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_b
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    :cond_c
    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v6, v1, v3

    aput-object v6, v1, v4

    goto/16 :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 15

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v2, "pref_fast_fps"

    const v3, 0x7f0a00b3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    iget-boolean v1, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/menu/SeparatorMenuItem;

    const v1, 0x7f0a00bc

    invoke-direct {v0, v1}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v7

    :goto_0
    if-ge v9, v7, :cond_1

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, v9}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v13

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/menu/ScenesMenu$SubItem;

    invoke-direct {v2, p0, v13}, Lcom/android/camera/menu/ScenesMenu$SubItem;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectList;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    :goto_1
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    :goto_2
    if-ltz v9, :cond_5

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/menu/ScenesMenu$SubItem;

    if-nez v1, :cond_3

    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/menu/ScenesMenu$SubItem;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v11}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$200(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eq v1, v8, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_3

    :cond_4
    const/4 v10, 0x1

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_3

    :cond_5
    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v12, 0x2

    :goto_4
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/ScenesMenu$SubItem;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$200(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    :cond_6
    return-void

    :cond_7
    const/4 v12, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    return-void
.end method

.method public updateItemContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->beginUpdate()V

    invoke-direct {p0}, Lcom/android/camera/menu/ScenesMenu;->updateCameraSceneItem()V

    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->endUpdate()V

    return-void
.end method
