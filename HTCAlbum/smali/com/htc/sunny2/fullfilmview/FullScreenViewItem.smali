.class public abstract Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;
.super Ljava/lang/Object;
.source "FullScreenViewItem.java"

# interfaces
.implements Lcom/htc/sunnyCore/ViewItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunnyCore/ViewItem",
        "<",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
        ">;"
    }
.end annotation


# instance fields
.field protected imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

.field protected sunnyEnvironment:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->sunnyEnvironment:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    return-void
.end method


# virtual methods
.method public abstract allocateShareResources()V
.end method

.method public abstract freeShareResources()V
.end method

.method public abstract getImageRotateDegrees()I
.end method

.method public abstract getSourceImageHeight()I
.end method

.method public abstract getSourceImageWidth()I
.end method

.method public abstract isZoomable()Z
.end method

.method public abstract onFrameSizeUpdate(FF)V
.end method

.method public abstract onImageGeometryUpdate(FFFF)V
.end method

.method public abstract onImageTextureExpired()V
.end method

.method public abstract onImageTextureReady(Lcom/htc/sunnyCore/Texture;)V
.end method
