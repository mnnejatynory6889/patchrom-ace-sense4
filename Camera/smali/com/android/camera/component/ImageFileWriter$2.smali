.class Lcom/android/camera/component/ImageFileWriter$2;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter;->initializeOverride()V
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
        "Lcom/android/camera/QueryEventArgs",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageFileWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$2;->this$0:Lcom/android/camera/component/ImageFileWriter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x2000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/camera/QueryEventArgs;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/QueryEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ImageFileWriter$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/QueryEventArgs;)V

    return-void
.end method
