.class public final Lcom/scalado/caps/filter/photoart/RGBColorAdjust;
.super Lcom/scalado/caps/Filter;
.source "RGBColorAdjust.java"


# instance fields
.field private b:F

.field private g:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;FFF)V
.end method


# virtual methods
.method public getB()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    return v0
.end method

.method public getG()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    return v0
.end method

.method public getR()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    iget v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    iget v2, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeSet(Lcom/scalado/caps/Decoder;FFF)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(FFF)V
    .locals 3

    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_1

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    cmpg-float v0, p3, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeSet(Lcom/scalado/caps/Decoder;FFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    iput p2, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    iput p3, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    return-void
.end method