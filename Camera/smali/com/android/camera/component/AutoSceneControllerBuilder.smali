.class final Lcom/android/camera/component/AutoSceneControllerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "AutoSceneControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/AutoSceneController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Auto-Scene Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/AutoSceneController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/AutoSceneController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/AutoSceneController;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/AutoSceneControllerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/AutoSceneController;

    move-result-object v0

    return-object v0
.end method
