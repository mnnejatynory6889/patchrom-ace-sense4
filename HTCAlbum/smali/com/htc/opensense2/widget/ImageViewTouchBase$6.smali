.class Lcom/htc/opensense2/widget/ImageViewTouchBase$6;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomAnimationByTime(FIIIIIIFF)V
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

.field final synthetic val$durationMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J

.field final synthetic val$zoomRatio:F


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FFJIIIIFFII)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$oldScale:F

    iput p3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    iput-wide p4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$startTime:J

    iput p6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cx2:I

    iput p7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cx:I

    iput p8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cy2:I

    iput p9, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cy:I

    iput p10, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$currScale:F

    iput p11, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$zoomRatio:F

    iput p12, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$atx:I

    iput p13, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$aty:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_0
    const-string v17, "ImageViewTouchBase"

    const-string v18, "base matrix or supply matrix or bitmap is recycled, may be it already back to previous view?"

    invoke-static/range {v17 .. v18}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$oldScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getScale()F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->beginZoomAnimation()V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$startTime:J

    move-wide/from16 v18, v0

    sub-long v18, v11, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cx2:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cx:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    move/from16 v18, v0

    div-float v18, v6, v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cy2:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$cy:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    move/from16 v18, v0

    div-float v18, v6, v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$currScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$zoomRatio:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$currScale:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    move/from16 v19, v0

    div-float v19, v6, v19

    mul-float v18, v18, v19

    add-float v7, v17, v18

    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v2, v17, v7

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v3, v17, v7

    sub-int v17, v4, v15

    move/from16 v0, v17

    int-to-float v8, v0

    sub-int v17, v5, v16

    move/from16 v0, v17

    int-to-float v9, v0

    sub-float v17, v8, v2

    move/from16 v0, v17

    neg-float v13, v0

    sub-float v17, v9, v3

    move/from16 v0, v17

    neg-float v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    neg-float v0, v13

    move/from16 v18, v0

    neg-float v0, v14

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$durationMs:F

    move/from16 v17, v0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static/range {v17 .. v18}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$002(Lcom/htc/opensense2/widget/ImageViewTouchBase;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$atx:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/widget/ImageViewTouchBase$6;->val$aty:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto/16 :goto_0
.end method
