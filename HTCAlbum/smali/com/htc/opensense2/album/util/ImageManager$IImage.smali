.class public interface abstract Lcom/htc/opensense2/album/util/ImageManager$IImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
.end method

.method public abstract commitChanges()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.end method

.method public abstract fileCorrupted()V
.end method

.method public abstract fullSizeBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract fullSizeImageData()Ljava/io/InputStream;
.end method

.method public abstract fullSizeImageId()J
.end method

.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getBucketName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.end method

.method public abstract getDataPath()Ljava/lang/String;
.end method

.method public abstract getDateAdded()J
.end method

.method public abstract getDateModified()J
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDegreesRotated()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIsPrivate()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPicasaId()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRow()I
.end method

.method public abstract getSize()J
.end method

.method public abstract getSortBase()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasLatLong()Z
.end method

.method public abstract imageId()J
.end method

.method public abstract is3D()Z
.end method

.method public abstract isBestBurstPhoto()Z
.end method

.method public abstract isBurstPhoto()Z
.end method

.method public abstract isCorrupted()Z
.end method

.method public abstract isDrm()Z
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract isFakeForLoading()Z
.end method

.method public abstract isFavorite()Z
.end method

.method public abstract isGif()Z
.end method

.method public abstract isInked()Z
.end method

.method public abstract isReadonly()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isSharable()Z
.end method

.method public abstract isVideo()Z
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract onRemove()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetFileCorrupted()V
.end method

.method public abstract rotateImageBy(I)Z
.end method

.method public abstract setAsBestBurstPhoto()V
.end method

.method public abstract setAsBurstPhoto(IZ)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setInked(I)V
.end method

.method public abstract setIsPrivate(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPicasaId(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract thumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract thumbUri()Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
