.class Lcom/htc/album/addons/slideshow/Slideshow3D$3;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;->onRepeatPause(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

.field final synthetic val$nDelayTime:I


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iput p2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;->val$nDelayTime:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideshowBase;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    iget v2, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$3;->val$nDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
