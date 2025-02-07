.class public Lcom/htc/sunny2/common/VideoDecodeItem;
.super Lcom/htc/sunny2/common/MediaDecodeItem;
.source "VideoDecodeItem.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoDecodeItem"


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/htc/sunny2/common/MediaDecodeItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V

    return-void
.end method


# virtual methods
.method public decode()V
    .locals 15

    const/high16 v14, 0x3f80

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v9, "VideoDecodeItem"

    const-string v10, "[VideoDecodeItem][decode]- data source is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const-string v9, "VideoDecodeItem"

    const-string v12, "[VideoDecodeItem][decode]- Unknown Data Source"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    if-eqz v4, :cond_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_3
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_3
    const-wide/16 v12, -0x1

    invoke-virtual {v7, v12, v13}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :try_start_4
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    const/4 v4, 0x0

    :cond_2
    if-nez v0, :cond_4

    const-string v9, "VideoDecodeItem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[VideoDecodeItem][decode] bmp is null, item file path  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    :try_start_6
    iget-object v4, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_7
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_6
    if-eqz v4, :cond_2

    :try_start_8
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :pswitch_3
    :try_start_9
    iget-object v9, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    :try_start_a
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    :goto_7
    if-eqz v4, :cond_2

    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v9

    :try_start_c
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    :goto_8
    if-eqz v4, :cond_3

    :try_start_d
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :goto_9
    const/4 v4, 0x0

    :cond_3
    throw v9

    :cond_4
    iput-boolean v10, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v8, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v2, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iget-boolean v9, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const-string v10, "video/mp4-3d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v9, v8, 0x2

    invoke-direct {v5, v11, v11, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v0

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v8, v2, v9}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/common/VideoDecodeItem;->resizeBitmapByRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget v10, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    if-ne v9, v10, :cond_6

    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget v10, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    invoke-static {v0, v9, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->cropCenterByWidthHeight(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :cond_7
    const/4 v6, 0x0

    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iget v12, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    if-le v9, v12, :cond_8

    move v9, v10

    :goto_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_9

    :goto_c
    xor-int/2addr v9, v10

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_d
    invoke-virtual {p0, v0, v6}, Lcom/htc/sunny2/common/VideoDecodeItem;->resizeBitmapByRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    :cond_8
    move v9, v11

    goto :goto_b

    :cond_9
    move v10, v11

    goto :goto_c

    :cond_a
    iget v9, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_d

    :catch_4
    move-exception v9

    goto/16 :goto_6

    :catch_5
    move-exception v9

    goto/16 :goto_7

    :catch_6
    move-exception v10

    goto/16 :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_8
    move-exception v9

    goto/16 :goto_4

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_a
    move-exception v9

    goto/16 :goto_1

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public resizeBitmapByRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/htc/opensense2/album/util/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method
