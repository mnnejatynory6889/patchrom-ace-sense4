.class Lcom/htc/opensense2/widget/ImageViewTouchBase$5;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomAnimationByFrame(FIIIIIIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

.field final synthetic val$atx:I

.field final synthetic val$aty:I

.field final synthetic val$currScale:F

.field final synthetic val$cx:I

.field final synthetic val$cx2:I

.field final synthetic val$cy:I

.field final synthetic val$cy2:I

.field final synthetic val$stepFlow:I

.field final synthetic val$zoomRatio:F


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;IIIIIFFII)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cx2:I

    iput p3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cx:I

    iput p4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$stepFlow:I

    iput p5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cy2:I

    iput p6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cy:I

    iput p7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$currScale:F

    iput p8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$zoomRatio:F

    iput p9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$atx:I

    iput p10, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$aty:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const-string v11, "ImageViewTouchBase"

    const-string v12, "base matrix or supply matrix or bitmap is recycled, may be it already back to previous view?"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    invoke-static {v11}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$008(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v12, v12, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v11

    float-to-int v2, v11

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v12, v12, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v11

    float-to-int v3, v11

    iget v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cx2:I

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cx:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v12}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$stepFlow:I

    div-int v9, v11, v12

    iget v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cy2:I

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$cy:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v12}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$stepFlow:I

    div-int v10, v11, v12

    iget v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$currScale:F

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$zoomRatio:F

    iget v13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$currScale:F

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v13}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget v13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$stepFlow:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-float v4, v11, v12

    int-to-float v11, v2

    mul-float v0, v11, v4

    int-to-float v11, v3

    mul-float v1, v11, v4

    sub-int v11, v2, v9

    int-to-float v5, v11

    sub-int v11, v3, v10

    int-to-float v6, v11

    sub-float v11, v5, v0

    neg-float v7, v11

    sub-float v11, v6, v1

    neg-float v8, v11

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    neg-float v12, v7

    neg-float v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    invoke-virtual {v11}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v11}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v11

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$stepFlow:I

    if-ge v11, v12, :cond_2

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    invoke-virtual {v11, p0}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    const/4 v12, 0x0

    #setter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v11, v12}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$002(Lcom/htc/opensense2/widget/ImageViewTouchBase;I)I

    iget-object v11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget v12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$atx:I

    int-to-float v12, v12

    iget v13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$5;->val$aty:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto/16 :goto_0
.end method
