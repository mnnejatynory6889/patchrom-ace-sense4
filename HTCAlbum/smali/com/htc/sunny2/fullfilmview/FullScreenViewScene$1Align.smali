.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Align"
.end annotation


# instance fields
.field private frameDuration:J

.field private isInSpeedyFu:Z

.field private movementConstant:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private xBegin:F

.field private xEnd:F


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->isInSpeedyFu:Z

    const-wide/16 v1, 0x2e

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignBeginIRT()V

    :cond_1
    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I
    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportHeight:I
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    if-lt v1, v2, :cond_2

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    div-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->movementConstant:I

    :goto_0
    return-void

    :cond_2
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    div-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->movementConstant:I

    goto :goto_0
.end method

.method private easeFunction(FFF)F
    .locals 4

    div-float/2addr p1, p3

    mul-float v1, p1, p1

    mul-float v0, v1, p1

    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    return v2
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollBeginIRT()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    int-to-long v4, p1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v10, v10}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "FullScreenViewScene"

    const-string v5, "Align NG - layoutSceneAndBindItem"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    int-to-long v4, p1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_a

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollEndIRT()V

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    :cond_4
    move v2, v3

    :goto_1
    return v2

    :cond_5
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->isInSpeedyFu:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->movementConstant:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    cmpl-float v4, v0, v10

    if-lez v4, :cond_6

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_7

    :cond_6
    cmpg-float v4, v0, v10

    if-gez v4, :cond_8

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_8

    :cond_7
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    :cond_8
    :goto_2
    float-to-int v4, v1

    int-to-float v1, v4

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    sub-float/2addr v6, v7

    iget-wide v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    long-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->easeFunction(FFF)F

    move-result v5

    add-float v1, v4, v5

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2802(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    goto :goto_1
.end method

.method public overrideParameters(FFZ)V
    .locals 5

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    iput-boolean p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->isInSpeedyFu:Z

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->isInSpeedyFu:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->movementConstant:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    :goto_0
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->isInSpeedyFu:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemInterval:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$2000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameTimeMillis:J

    return-void

    :cond_1
    const-wide/16 v1, 0x2e

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    goto :goto_0
.end method
