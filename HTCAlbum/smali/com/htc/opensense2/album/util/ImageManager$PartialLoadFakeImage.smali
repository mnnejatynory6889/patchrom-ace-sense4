.class public Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;
.super Lcom/htc/opensense2/album/util/ImageManager$Image;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PartialLoadFakeImage"
.end annotation


# instance fields
.field private mBase:J

.field private mParentList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;JI)V
    .locals 10

    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;II)V

    iput-object p3, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->mParentList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    iput-wide p4, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->mBase:J

    return-void
.end method


# virtual methods
.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 0

    return-void
.end method

.method public commitChanges()V
    .locals 0

    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 8

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, p0, :cond_1

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->mBase:J

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    sget v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    if-ne v7, v4, :cond_3

    cmp-long v7, v2, v0

    if-gtz v7, :cond_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fileCorrupted()V
    .locals 0

    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->mParentList:Lcom/htc/opensense2/album/util/ImageManager$PartialImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;->mBase:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public is3D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBestBurstPhoto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBurstPhoto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFakeForLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGif()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public resetFileCorrupted()V
    .locals 0

    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAsBestBurstPhoto()V
    .locals 0

    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setInked(I)V
    .locals 0

    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
