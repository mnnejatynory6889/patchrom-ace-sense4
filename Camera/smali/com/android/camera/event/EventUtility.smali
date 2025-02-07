.class public final Lcom/android/camera/event/EventUtility;
.super Ljava/lang/Object;
.source "EventUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHandlerAsync(Lcom/android/camera/event/Event;Landroid/os/Handler;Lcom/android/camera/event/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/event/Event;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/event/EventHandler;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "eventThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "event"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/camera/event/EventUtility$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/event/EventUtility$1;-><init>(Lcom/android/camera/event/Event;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static addHandlersAsync([Lcom/android/camera/event/Event;Landroid/os/Handler;[Lcom/android/camera/event/EventHandler;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "eventThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    array-length v0, p2

    array-length v1, p0

    if-ge v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Lcom/android/camera/event/EventUtility$2;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/event/EventUtility$2;-><init>([Lcom/android/camera/event/Event;[Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
