.class final Lcom/android/camera/property/PropertyUtility$2;
.super Ljava/lang/Object;
.source "PropertyUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/property/PropertyUtility;->removeChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/camera/property/PropertyChangedCallback;

.field final synthetic val$property:Lcom/android/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/property/PropertyUtility$2;->val$property:Lcom/android/camera/property/Property;

    iput-object p2, p0, Lcom/android/camera/property/PropertyUtility$2;->val$callback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/property/PropertyUtility$2;->val$property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/property/PropertyUtility$2;->val$callback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    return-void
.end method
