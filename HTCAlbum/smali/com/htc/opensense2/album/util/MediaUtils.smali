.class public Lcom/htc/opensense2/album/util/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x60

    invoke-static {p0, p1, v0}, Lcom/htc/opensense2/album/util/MediaUtils;->compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static compressToMiniThumbnail(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    :goto_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    invoke-static {v1, p0, v0, v0, v4}, Lcom/htc/opensense2/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    goto :goto_1
.end method

.method public static getExifDateTime(Ljava/lang/String;)J
    .locals 7

    :try_start_0
    invoke-static {p0}, Lcom/htc/opensense2/album/util/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "DateTime"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DateTime"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    const/16 v5, 0x11

    const/16 v6, 0x13

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    return-wide v4

    :catch_0
    move-exception v3

    const-string v4, "Album"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error when get date from EXIF data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7

    const-class v6, Lcom/htc/opensense2/album/util/MediaUtils;

    monitor-enter v6

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 28

    const-class v27, Lcom/htc/opensense2/album/util/MediaUtils;

    monitor-enter v27

    if-nez p5, :cond_0

    :try_start_0
    sget-object p5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_0
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "source "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deltaX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deltaY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_3

    if-ltz v16, :cond_1

    if-gez v18, :cond_3

    :cond_1
    const/4 v11, 0x0

    :try_start_1
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    :try_start_2
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    new-instance v25, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v27

    return-object v11

    :catch_0
    move-exception v23

    :try_start_3
    const-string v3, "Camera_Util"

    const-string v4, "memory is not enough to alloc bitmap"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    div-float v12, v14, v13

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v26, v3, v4

    cmpl-float v3, v12, v26

    if-lez v3, :cond_6

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v24, v3, v13

    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_4

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz p0, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v10

    :goto_2
    :try_start_5
    const-string v3, "Camera_Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v22

    const/4 v11, 0x0

    :try_start_6
    div-int/lit8 v3, v21, 0x2

    div-int/lit8 v4, v22, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v11

    :goto_3
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_2

    :try_start_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v27

    throw v3

    :cond_5
    const/16 p0, 0x0

    goto :goto_1

    :cond_6
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v24, v3, v14

    const v3, 0x3f666666

    cmpg-float v3, v24, v3

    if-ltz v3, :cond_7

    const/high16 v3, 0x3f80

    cmpl-float v3, v24, v3

    if-lez v3, :cond_8

    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_1

    :cond_8
    const/16 p0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v23

    const-string v3, "Camera_Util"

    const-string v4, "out of memory when create scaler one"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v10, p1

    goto/16 :goto_2

    :catch_2
    move-exception v23

    const-string v3, "Camera_Util"

    const-string v4, "final tune image in transform cause oome"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method
