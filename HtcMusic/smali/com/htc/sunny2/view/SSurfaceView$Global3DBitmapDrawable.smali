.class public Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global3DBitmapDrawable"
.end annotation


# instance fields
.field mBitmapSrcHeight:I

.field mBitmapSrcWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter "res"
    .parameter "bitmap"
    .parameter "srcWidth"
    .parameter "srcHeight"

    .prologue
    .line 1270
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1271
    iput p3, p0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcWidth:I

    .line 1272
    iput p4, p0, Lcom/htc/sunny2/view/SSurfaceView$Global3DBitmapDrawable;->mBitmapSrcHeight:I

    .line 1273
    return-void
.end method
