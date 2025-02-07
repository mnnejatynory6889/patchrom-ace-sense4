.class public Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;
.super Lcom/htc/sunny2/slideshow/SlideAnimator;
.source "SlideAnimator_KenBums.java"


# static fields
.field public static ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunnyCore/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final DEBUG_REPLOG:Ljava/lang/String;

.field public final LOG_TAG:Ljava/lang/String;

.field private isKenBumsInit:Z

.field private mEndX:F

.field private mEndY:F

.field private mFadeInAlpha:F

.field private mFadeOutAlpha:F

.field private mScale:F

.field private mStartX:F

.field private mStartY:F

.field private mXDisplacement:F

.field private mYDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/sunnyCore/ObjectRecycler;

    const-string v1, "SlideAnimator_PanAndZoom"

    invoke-direct {v0, v1}, Lcom/htc/sunnyCore/ObjectRecycler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/slideshow/SlideAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->LOG_TAG:Ljava/lang/String;

    const-string v0, "AnimatorLog "

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->DEBUG_REPLOG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->isKenBumsInit:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mFadeInAlpha:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mFadeOutAlpha:F

    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;
    .locals 2

    sget-object v1, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static Recycle(Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->free()V

    sget-object v0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->ObjectRecycler:Lcom/htc/sunnyCore/ObjectRecycler;

    invoke-virtual {v0, p0}, Lcom/htc/sunnyCore/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getPositionForPan(FFF)F
    .locals 2

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->isKenBumsInit:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    mul-float v1, p3, p2

    add-float v0, p1, v1

    goto :goto_0
.end method

.method public getcaleOnTime(F)F
    .locals 4

    const/high16 v3, 0x3f80

    iget-boolean v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->isKenBumsInit:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    sub-float v1, v3, v1

    mul-float/2addr v1, p1

    sub-float v0, v3, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    sub-float v1, v3, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    sub-float v2, v3, v2

    mul-float/2addr v2, p1

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public initKenBums(Landroid/graphics/Point;Landroid/graphics/Point;F)V
    .locals 3

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndX:F

    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndY:F

    iput p3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndX:F

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mXDisplacement:F

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndY:F

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mYDisplacement:F

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatorLog initKenBums: ScaleRating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatorLog initKenBums: Start( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) -> End( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mEndY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimatorLog initKenBums: mXDisplacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mXDisplacement:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYDisplacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mYDisplacement:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->isKenBumsInit:Z

    return-void
.end method

.method public onAnimatePhaseInTransition(FF)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getcaleOnTime(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageSize(FF)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mXDisplacement:F

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mYDisplacement:F

    invoke-virtual {p0, v2, v3, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageCenterPosition(FF)V

    return-void
.end method

.method public onAnimatePhaseOutTransition(FF)V
    .locals 4

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mFadeOutAlpha:F

    sub-float/2addr v1, p2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getcaleOnTime(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageSize(FF)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mXDisplacement:F

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mYDisplacement:F

    invoke-virtual {p0, v2, v3, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageCenterPosition(FF)V

    return-void
.end method

.method public onAnimateSlide(FF)V
    .locals 4

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageAlpha(F)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getcaleOnTime(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportWidth:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator;->viewportHeight:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageSize(FF)V

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartX:F

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mXDisplacement:F

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mStartY:F

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->mYDisplacement:F

    invoke-virtual {p0, v2, v3, p1}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->getPositionForPan(FFF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->setImageCenterPosition(FF)V

    return-void
.end method

.method public recycle()V
    .locals 0

    invoke-static {p0}, Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;->Recycle(Lcom/htc/sunny2/slideshow/SlideAnimator_KenBums;)V

    return-void
.end method
