.class Lcom/android/camera/component/ObjectTrackingUI$1;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$1;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$1;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #getter for: Lcom/android/camera/component/ObjectTrackingUI;->m_IsStarted:Z
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$000(Lcom/android/camera/component/ObjectTrackingUI;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$1;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #getter for: Lcom/android/camera/component/ObjectTrackingUI;->m_OTEnabled:Z
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$100(Lcom/android/camera/component/ObjectTrackingUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$1;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ObjectTrackingUI;->access$200(Lcom/android/camera/component/ObjectTrackingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_OTEnabled is false or not supportCAF, do not set OT ROI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
