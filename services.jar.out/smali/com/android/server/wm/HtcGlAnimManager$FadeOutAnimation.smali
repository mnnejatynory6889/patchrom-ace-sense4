.class Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;
.super Landroid/view/animation/Animation;
.source "HtcGlAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HtcGlAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeOutAnimation"
.end annotation


# instance fields
.field mIsEnter:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "isEnter"

    .prologue
    .line 1269
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1270
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1271
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;->setDuration(J)V

    .line 1272
    iput-boolean p1, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;->mIsEnter:Z

    .line 1273
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 1292
    move v0, p1

    .line 1293
    .local v0, x:F
    iget-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;->mIsEnter:Z

    if-nez v1, :cond_0

    .line 1294
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4000

    div-float v2, v0, v2

    sub-float v0, v1, v2

    .line 1295
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1300
    :cond_0
    return-void
.end method

.method public getZAdjustment()I
    .locals 1

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;->mIsEnter:Z

    if-nez v0, :cond_0

    .line 1305
    const/4 v0, 0x1

    .line 1307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scaleCurrentDuration(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1285
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1286
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1288
    :cond_0
    return-void
.end method
