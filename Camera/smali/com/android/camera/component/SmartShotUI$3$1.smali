.class Lcom/android/camera/component/SmartShotUI$3$1;
.super Ljava/lang/Object;
.source "SmartShotUI.java"

# interfaces
.implements Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/SmartShotUI$3;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/SmartShotUI$3;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotUI$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotUI$3$1;->this$1:Lcom/android/camera/component/SmartShotUI$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotUI$3$1;->this$1:Lcom/android/camera/component/SmartShotUI$3;

    iget-object v0, v0, Lcom/android/camera/component/SmartShotUI$3;->this$0:Lcom/android/camera/component/SmartShotUI;

    #calls: Lcom/android/camera/component/SmartShotUI;->updateToastRotation(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/SmartShotUI;->access$400(Lcom/android/camera/component/SmartShotUI;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
