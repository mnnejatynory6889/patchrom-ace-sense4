.class public Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;
.super Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;
.source "GridItem4CarMode.java"


# static fields
.field private static CARMODE_GRID_SIZE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GridItem4CarMode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-virtual {v3, p3}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    :cond_1
    sget v3, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-static {p1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->getScreenShort(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->CARMODE_ACTION_BAR_HEIGHT_DIMEN:I

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    div-int/lit8 v2, v3, 0x2

    sput v2, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    const-string v3, "GridItem4CarMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GridItem4CarMode] Griditem size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    sget v4, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    sget v4, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    iput v4, v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    return-void
.end method

.method public static final getScreenShort(Landroid/content/Context;)I
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "GridItem4CarMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getScreenShort]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v3, "GridItem4CarMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getScreenShort] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x500

    goto :goto_0
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunnyCore/IMediaData;)V
    .locals 7

    if-nez p2, :cond_0

    const-string v4, "GridItem4CarMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Sunny2Framework][GridItem4CarMode][bindMediaData]: null:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    const/4 v1, 0x0

    instance-of v4, v0, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSprite:Lcom/htc/sunnyCore/Sprite;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/sunnyCore/Sprite;->getLayer(I)Lcom/htc/sunnyCore/Sprite$Layer;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/Sprite$Layer;->setAlpha(I)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    invoke-interface {v4, p1, p0, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;->onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V

    :cond_1
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setCorrupted(Z)V

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    invoke-interface {v4, p1, v0}, Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;->getThumbnailImage(ILcom/htc/sunnyCore/IMediaData;)Lcom/htc/sunnyCore/Texture;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setThumbTexture(Lcom/htc/sunnyCore/Texture;)V

    :cond_2
    invoke-interface {v1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    if-gez v2, :cond_3

    add-int/lit16 v2, v2, 0x168

    :cond_3
    invoke-virtual {v3, v2}, Lcom/htc/sunnyCore/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_0

    :cond_4
    const-string v4, "GridItem4CarMode"

    const-string v5, "[Sunny2Framework][GridItem4CarMode][bindMediaData]: not instance of IMediaDataGallery"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public create()Lcom/htc/sunnyCore/ViewItem;
    .locals 4

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemParam:Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    move-result-object v1

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mSunnyContext:Lcom/htc/sunnyCore/SunnyContext;

    invoke-direct {v0, v2, v3, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContentGetter:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemContentGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mItemDataBindListener:Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return v0
.end method

.method protected getSharedTexture()Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
    .locals 2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode$TextureThumbnail4CarMode;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode$TextureThumbnail4CarMode;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    sget v0, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    sget v1, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->CARMODE_GRID_SIZE:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItem4CarMode;->setMeasuredDimension(II)V

    return-void
.end method
