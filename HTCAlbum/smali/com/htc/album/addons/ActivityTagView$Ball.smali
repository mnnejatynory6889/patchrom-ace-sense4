.class public Lcom/htc/album/addons/ActivityTagView$Ball;
.super Landroid/view/View;
.source "ActivityTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/ActivityTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ball"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private r:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    iput p3, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    iput p4, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->r:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    iget v1, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    iget v2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBallPos(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->x:F

    iput p2, p0, Lcom/htc/album/addons/ActivityTagView$Ball;->y:F

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityTagView$Ball;->invalidate()V

    return-void
.end method
