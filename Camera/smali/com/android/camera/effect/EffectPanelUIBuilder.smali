.class public final Lcom/android/camera/effect/EffectPanelUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "EffectPanelUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/effect/EffectPanelUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Effect Panel"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectPanelUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectPanelUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectPanelUI;
    .locals 1

    new-instance v0, Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/EffectPanelUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
