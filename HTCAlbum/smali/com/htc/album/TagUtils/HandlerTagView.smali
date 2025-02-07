.class public Lcom/htc/album/TagUtils/HandlerTagView;
.super Ljava/lang/Object;
.source "HandlerTagView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandlerTagView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mPhotoH:I

.field private mPhotoW:I

.field private mPhotoX:I

.field private mPhotoY:I

.field private mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iput v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return-void
.end method

.method private decodeWebp(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v5, 0x0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/album/TagUtils/HandlerTagView;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, p3, p4}, Lcom/htc/album/TagUtils/HandlerTagView;->setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    move-object v5, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v6, "HandlerTagView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decode tag view decodeWebp():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeWithScalado(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v7, 0x1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {v6, v3, p3, p4}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const-string v7, "media"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v4

    :cond_2
    :goto_1
    if-nez v4, :cond_4

    :cond_3
    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v3, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v7

    if-eqz v7, :cond_3

    :cond_4
    invoke-virtual {v6, v3}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "HandlerTagView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decode tag view "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static doImageDecode(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    const-string v12, "window"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeBegin()I

    move-result v6

    if-nez v6, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v11, v6, v8, v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->setPreferSize(III)I

    const/4 v12, 0x1

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setScaleType(II)I

    const/4 v12, 0x1

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->setLoadFromSPMOFirst(IZ)I

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/4 v9, 0x0

    if-eqz v0, :cond_8

    const-string v12, "media"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getDataPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFilePath(ILjava/lang/String;)I

    move-result v9

    :cond_5
    :goto_1
    if-nez v9, :cond_7

    :cond_6
    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeIterate(IJ)I

    move-result v12

    if-eqz v12, :cond_6

    :cond_7
    invoke-virtual {v11, v6}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeEnd(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    const-string v13, "r"

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-eqz v10, :cond_5

    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v6, v12, v13}, Lcom/htc/opensense/album/util/ScaladoLib2;->loadFromFileDescriptor(ILjava/io/FileDescriptor;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v12, "HandlerTagView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][HandlerTagView][getViewBitmap]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v12

    :try_start_3
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private setupBitmapOption(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 9

    const-wide/high16 v7, 0x3fe0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v3, v5, v6

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    int-to-float v6, p3

    div-float v4, v5, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v1, v5

    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v0, v5

    invoke-static {p1, v1, v0}, Lcom/htc/sunny2/common/ImageDecoder;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method


# virtual methods
.method public getPhotoViewHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    return v0
.end method

.method public getPhotoViewWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    return v0
.end method

.method public getPhotoViewX()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    return v0
.end method

.method public getPhotoViewY()I
    .locals 1

    iget v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return v0
.end method

.method public getTagViewManager(Landroid/content/Context;)Lcom/htc/album/TagUtils/TagViewManager;
    .locals 5

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/TagUtils/TagViewManager;

    invoke-direct {v0, p1}, Lcom/htc/album/TagUtils/TagViewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    iget v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iget v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    iget v3, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/album/TagUtils/TagViewManager;->init(IIII)Z

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mTagViewManager:Lcom/htc/album/TagUtils/TagViewManager;

    return-object v0
.end method

.method public prepareTaggableView(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;Landroid/view/View$OnTouchListener;)Z
    .locals 8

    const/4 v0, 0x0

    const-string v5, "HandlerTagView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][LocalTagView][prepareTaggableView] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    const-string v5, "image/webp"

    invoke-virtual {p2}, Lcom/htc/album/TagUtils/TagPhotoInfo;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/album/TagUtils/HandlerTagView;->decodeWebp(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    const-string v5, "HandlerTagView"

    const-string v6, "[HTCAlbum][LocalTagView][prepareTaggableView]: bitmap decode NG !!"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/album/TagUtils/HandlerTagView;->decodeWithScalado(Landroid/content/Context;Lcom/htc/album/TagUtils/TagPhotoInfo;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    iget v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iget v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    const-string v5, "HandlerTagView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo dimen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HandlerTagView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][LocalTagView][prepareTaggableView] Photo Padding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBitmapToView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/view/View$OnTouchListener;)V
    .locals 6

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoW:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    iget v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoH:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    iget-object v4, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPhotoViewX(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoX:I

    return-void
.end method

.method public setPhotoViewY(I)V
    .locals 0

    iput p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mPhotoY:I

    return-void
.end method

.method public setTaggableView(Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->destroyDrawingCache()V

    :cond_0
    iput-object v2, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/album/TagUtils/HandlerTagView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
