.class abstract Lcom/htc/opensense2/album/util/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# static fields
.field protected static final INVALID_DATETIME:I = -0x1

.field protected static final INVALID_WIDTH_HEIGHT:I = -0x1


# instance fields
.field protected mBurstBestPhoto:I

.field protected mBurstPhoto:I

.field private mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mDateModified:J

.field protected mDateTaken:J

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFullSizeImageUri:Landroid/net/Uri;

.field protected mGifFrameCount:I

.field protected mHeight:I

.field protected mId:J

.field protected mInked:I

.field protected mMineType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mSelected:Z

.field protected mSize:J

.field private mSortBase:J

.field protected mWidth:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    iput-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    iput-object p6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    iput-wide p4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    iput-object p7, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iput p8, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    return-void
.end method

.method protected constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    iput-wide p9, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    return-void
.end method

.method private initBurst()V
    .locals 13

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    monitor-enter v6

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_0
    if-ne v3, v11, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexFavorite()I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setAsBurstPhoto(IZ)V

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBurstBestPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_0
    monitor-exit v6

    :cond_1
    if-ne v10, v3, :cond_3

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v7

    const/4 v11, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setAsBurstPhoto(IZ)V

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageManager][initBurst]: query mBurstPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBurstBestPhoto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_6
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeBitmap] Got null exception during openFileDescriptor, uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2
    :goto_1
    throw v2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapse(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->removeExpandBurstImages(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    goto :goto_1
.end method

.method public commitChanges()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 11

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v1

    cmp-long v10, v4, v1

    if-nez v10, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move v7, v8

    :cond_1
    :goto_0
    return v7

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    sget v7, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    neg-int v6, v6

    :cond_3
    move v7, v6

    goto :goto_0

    :cond_4
    sget v10, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    if-ne v10, v7, :cond_6

    cmp-long v10, v4, v1

    if-gtz v10, :cond_1

    cmp-long v7, v4, v1

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_0

    :cond_6
    cmp-long v10, v1, v4

    if-gtz v10, :cond_1

    cmp-long v7, v1, v4

    if-nez v7, :cond_7

    move v7, v8

    goto :goto_0

    :cond_7
    move v7, v9

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1

    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/htc/opensense2/album/util/ImageManager$PartialLoadFakeImage;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$Image;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public expand(ILcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12

    const/4 v1, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v11

    :goto_0
    return-object v0

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBestBurstPhoto()Z

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    move-object v0, v11

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isExpanded()Z

    move-result v0

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    if-nez v10, :cond_8

    move-object v0, v11

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[expanded] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_BurstShot_CoverFilePath"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-object v1, v1, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/opensense2/album/util/AlbumObjectManager;->SORT:I

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/opensense2/album/util/ImageManager;->burstImages(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {p2, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->addExpandBurstImages(ILcom/htc/opensense2/album/util/ImageManager$IImageList;)V

    :cond_9
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    goto/16 :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fullSizeImageData] Unable to openInputStream, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mFullSizeImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v8

    :cond_1
    :try_start_1
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getBucketName] Got exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateAdded()J
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateAdded()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDateModified()J
    .locals 6

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateModified()I

    move-result v1

    if-gez v1, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateModified:J

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDateTaken()J
    .locals 6

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mDateTaken:J

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    if-gez v1, :cond_3

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_1
    const-string v7, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDescription] Got exception during query description, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v7, v0

    goto :goto_0

    :cond_4
    monitor-enter v6

    :try_start_3
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageMimeType(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v1

    if-gez v1, :cond_4

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDisplayName] Got exception during querying the display name, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v8, v0

    goto :goto_0

    :cond_5
    monitor-enter v6

    :try_start_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    goto :goto_0
.end method

.method public getIsPrivate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 5

    const-wide v2, 0x406fe00000000000L

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLatitude()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :try_start_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 5

    const-wide v2, 0x406fe00000000000L

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexLongitude()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :try_start_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexMimeType()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const/4 v6, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_3
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_4
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMimeType] Got exception during query mime type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMineType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getSize()J
    .locals 12

    const-wide/16 v10, -0x1

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    iget-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    :goto_0
    return-wide v10

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    monitor-enter v7

    const/4 v9, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :goto_1
    if-ltz v9, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    iget-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_2
    monitor-exit v7

    goto :goto_0

    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v6, 0x0

    const-wide/16 v10, -0x1

    :try_start_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v10

    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    iput-wide v10, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSize:J

    goto :goto_0

    :cond_6
    const-wide/16 v10, -0x1

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_3
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSize] Got exception during query image size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v10, -0x1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getSortBase()J
    .locals 8

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    iget-wide v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->setDimension()V

    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    goto :goto_0
.end method

.method public hasLatLong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public is3D()Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_VIDEO_TYPES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isBestBurstPhoto()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->initBurst()V

    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    if-ne v2, v0, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isBurstPhoto()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_ENABLE_BURSTSHOT_MODE:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->initBurst()V

    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isExpanded()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhotoImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->isReleased()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    instance-of v2, v2, Lcom/htc/opensense2/album/util/ImageManager$BurstPhotoImageList;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isFakeForLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->isFavoriteList()Z

    move-result v8

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_2

    move v8, v10

    :goto_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move v8, v11

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFavorite] Got exception during query favorite, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isInked()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mInked:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPlayable()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mGifFrameCount:I

    if-le v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 15

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mId:J

    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-eqz v0, :cond_1

    cmp-long v0, v4, v1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v13

    invoke-virtual {v0, p0, v3, v13}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()[B

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mMiniThumbMagic:J

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$100(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v14

    invoke-virtual {v0, p0, v3, v14}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->access$100(Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    :cond_3
    if-nez v8, :cond_4

    :cond_4
    if-eqz v8, :cond_6

    const/4 v0, 0x0

    array-length v3, v8

    invoke-static {v8, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_5
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v9

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "miniThumbBitmap got exception "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v11, v6

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_7

    aget-object v12, v6, v10

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "... "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContainer:Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public setAsBestBurstPhoto()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBurstPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->isBestBurstPhoto()Z

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public setAsBurstPhoto(IZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    :goto_1
    return-void

    :cond_0
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstPhoto:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mBurstBestPhoto:I

    goto :goto_1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setDimension()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2
    :goto_1
    throw v4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDisplayImageDimension(II)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mWidth:I

    iput p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mHeight:I

    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "picasa_id"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->mSelected:Z

    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
