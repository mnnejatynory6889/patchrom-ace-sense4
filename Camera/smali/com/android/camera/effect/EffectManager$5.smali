.class Lcom/android/camera/effect/EffectManager$5;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
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
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/IScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/effect/AutoScene;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/effect/EffectManager;->access$300(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/EffectManager$5;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
