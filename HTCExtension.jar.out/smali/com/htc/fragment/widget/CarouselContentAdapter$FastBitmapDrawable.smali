.class Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CarouselContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDrawLeft:I

.field private mDrawTop:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mHeight:I

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mWidth:I

    iget v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->setBounds(IIII)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Lcom/htc/fragment/widget/CarouselContentAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mDrawLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mDrawTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBounds(IIII)V
    .locals 2

    sub-int v0, p3, p1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mDrawLeft:I

    sub-int v0, p4, p2

    iget v1, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselContentAdapter$FastBitmapDrawable;->mDrawTop:I

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDither(Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterBitmap(Z)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported with this drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
