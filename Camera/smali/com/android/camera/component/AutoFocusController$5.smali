.class Lcom/android/camera/component/AutoFocusController$5;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->initializeOverride()V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusing:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$402(Lcom/android/camera/component/AutoFocusController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$500(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset ModeAssigned"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_ModeAssigned:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$602(Lcom/android/camera/component/AutoFocusController;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$700(Lcom/android/camera/component/AutoFocusController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$800(Lcom/android/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unlock auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocked:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$702(Lcom/android/camera/component/AutoFocusController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #setter for: Lcom/android/camera/component/AutoFocusController;->m_IsFocusLocking:Z
    invoke-static {v0, v2}, Lcom/android/camera/component/AutoFocusController;->access$902(Lcom/android/camera/component/AutoFocusController;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$5;->this$0:Lcom/android/camera/component/AutoFocusController;

    #calls: Lcom/android/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V
    invoke-static {v0}, Lcom/android/camera/component/AutoFocusController;->access$1000(Lcom/android/camera/component/AutoFocusController;)V

    :cond_0
    return-void
.end method
