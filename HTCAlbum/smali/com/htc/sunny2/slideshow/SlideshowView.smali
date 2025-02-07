.class public Lcom/htc/sunny2/slideshow/SlideshowView;
.super Lcom/htc/sunnyCore/common/CommonView;
.source "SlideshowView.java"


# static fields
.field private static final LTAG:Ljava/lang/String; = "SlideshowView"


# instance fields
.field private controller:Lcom/htc/sunny2/slideshow/SlideshowController;

.field private imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

.field private mPlayIndex:I

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

.field private slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x400

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/sunnyCore/common/CommonView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    new-instance v0, Lcom/htc/sunny2/slideshow/ImagePreparator;

    const-string v1, "ImagePreparator"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v2, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v3, v3}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0x400

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunnyCore/common/CommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    new-instance v0, Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-direct {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    new-instance v0, Lcom/htc/sunny2/slideshow/ImagePreparator;

    const-string v1, "ImagePreparator"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/slideshow/ImagePreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v2, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, v3, v3}, Lcom/htc/sunny2/slideshow/ImagePreparator;->setFaceDetectDecodeSize(II)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doNextImageIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPreviousImageIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPauseIRT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/slideshow/SlideshowView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->doPlayIRT()Z

    move-result v0

    return v0
.end method

.method private doNextImageIRT()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doNextImage()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPauseIRT()Z
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "doPauseIRT()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPause()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPlayIRT()Z
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "doPlayIRT()"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPlay()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doPreviousImageIRT()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->doPreviousImage()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private initControllerWhenConditionReadyIRT()Z
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    if-gtz v0, :cond_3

    :cond_2
    move v0, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    if-nez v0, :cond_5

    move v0, v9

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mMediaList:Lcom/htc/sunnyCore/IMediaList;

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    iget-object v4, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iget-object v5, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-object v6, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    iget v7, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    iget v8, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/slideshow/SlideshowController;->init(Lcom/htc/sunnyCore/RenderThread;Lcom/htc/sunnyCore/IMediaList;ILcom/htc/sunny2/slideshow/ImagePreparator;Lcom/htc/sunny2/slideshow/SlideshowScene;Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;II)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SlideshowView"

    const-string v1, "controller.init() NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v0, v9

    goto :goto_0
.end method


# virtual methods
.method public doNextImage()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doNextImage]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1NextImage;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1NextImage;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SlideshowView"

    const-string v1, "NextImage NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPause()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPause]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1Pause;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1Pause;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SlideshowView"

    const-string v1, "doPause NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPlay()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPlay]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SlideshowView"

    const-string v1, "doPlay NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doPreviousImage()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    if-nez v0, :cond_0

    const-string v0, "SlideshowView"

    const-string v1, "[HTCAlbum][SlideshowView][doPreviousImage]: mRenderThread is NG"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    new-instance v1, Lcom/htc/sunny2/slideshow/SlideshowView$1PreviousImage;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/slideshow/SlideshowView$1PreviousImage;-><init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/RenderThread;->pushEventIHT(Lcom/htc/sunnyCore/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SlideshowView"

    const-string v1, "PreviousImage NG - pushEventIHT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public layoutIRT(II)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "SlideshowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutIRT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mGLViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->initControllerWhenConditionReadyIRT()Z

    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/slideshow/SlideshowController;->setViewPort(II)V

    goto :goto_0
.end method

.method public onBindMediaListIRT(Lcom/htc/sunnyCore/IMediaList;I)Z
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "onBindMediaListIRT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/slideshow/ImagePreparator;->bindMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->deinit()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->initControllerWhenConditionReadyIRT()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateIHT(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "onCreateIHT +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SlideshowView"

    const-string v1, "onCreateIHT -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyIHT()V
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "onDestroyIHT +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SlideshowView"

    const-string v1, "onDestroyIHT -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRenderStartIRT()Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT +"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/sunnyCore/common/CommonView;->onRenderStartIRT()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mEnv:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/slideshow/ImagePreparator;->init(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT() NG - imagePreparator.init()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRenderThread:Lcom/htc/sunnyCore/RenderThread;

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mEnv:I

    iget v4, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mRootNode:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/slideshow/SlideshowScene;->init(Lcom/htc/sunnyCore/RenderThread;II)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SlideshowView"

    const-string v2, "onRenderStartIRT() NG - scene.init()"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowView;->onRenderStopIRT()V

    goto :goto_0

    :cond_2
    const-string v0, "SlideshowView"

    const-string v1, "onRenderStartIRT -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRenderStopIRT()V
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "onRenderStopIRT +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->deinit()V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->scene:Lcom/htc/sunny2/slideshow/SlideshowScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->deinit()V

    invoke-super {p0}, Lcom/htc/sunnyCore/common/CommonView;->onRenderStopIRT()V

    const-string v0, "SlideshowView"

    const-string v1, "onRenderStopIRT -"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderToWindowIRT(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunnyCore/common/CommonView;->onRenderToWindowIRT(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUnBindMediaListIRT()V
    .locals 2

    const-string v0, "SlideshowView"

    const-string v1, "onUnBindMediaListIRT"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->imagePreparator:Lcom/htc/sunny2/slideshow/ImagePreparator;

    invoke-virtual {v0}, Lcom/htc/sunny2/slideshow/ImagePreparator;->unbindMediaList()V

    return-void
.end method

.method public setEventListener(Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/slideshow/SlideshowController;->setSlideshowControlEventListener(Landroid/content/Context;Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;)V

    :cond_0
    return-void
.end method

.method public setPlayIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mPlayIndex:I

    return-void
.end method

.method public setSlideAnimatorsFactory(Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->slideAnimatorsFactory:Lcom/htc/sunny2/slideshow/SlideAnimatorsFactory;

    return-void
.end method

.method public setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->controller:Lcom/htc/sunny2/slideshow/SlideshowController;

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowView;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->setSlideshowSetingManager(Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V

    return-void
.end method
