.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanAction"
.end annotation


# instance fields
.field private hadProcessedMovement:Z

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement:Z

    return-void
.end method


# virtual methods
.method public hadProcessedMovement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement:Z

    return v0
.end method

.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v8, v9, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_x:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v0

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    int-to-float v9, v0

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panX(F)F

    move-result v2

    int-to-float v8, v0

    sub-float v3, v8, v2

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v8

    if-eqz v8, :cond_3

    cmpl-float v8, v3, v10

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    add-float/2addr v8, v3

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    neg-float v3, v8

    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v8

    if-eqz v8, :cond_4

    cmpg-float v8, v3, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    add-float/2addr v8, v3

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    neg-float v3, v8

    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnLeftBorder:Z
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v8

    if-eqz v8, :cond_5

    cmpg-float v8, v3, v10

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    add-float/2addr v8, v3

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnLeftBorder:Z
    invoke-static {v8, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1302(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mIsStartPanningOnRightBorder:Z
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1600(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v8

    if-eqz v8, :cond_6

    cmpl-float v8, v3, v10

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v8

    add-float/2addr v8, v3

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunnyCore/IMediaList;
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1700(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunnyCore/IMediaList;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/sunnyCore/IMediaList;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mShouldLockPanningOnRightBorder:Z
    invoke-static {v8, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1402(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    :cond_6
    float-to-double v8, v3

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_7

    const/4 v4, 0x1

    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doFramesOffset(F)V
    invoke-static {v8, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;F)V

    :cond_8
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getStatus()Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    move-result-object v8

    sget-object v9, Lcom/htc/sunnyCore/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunnyCore/view/IViewScroller$STATUS;

    if-ne v8, v9, :cond_a

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->update()V

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scroller_y:Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScroller;->getRelativeMovement()I

    move-result v8

    neg-int v1, v8

    if-eqz v1, :cond_9

    const/4 v5, 0x1

    :cond_9
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v8}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v9

    aget-object v8, v8, v9

    int-to-float v9, v1

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->panY(F)F

    :cond_a
    iget-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement:Z

    if-nez v8, :cond_d

    if-nez v4, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    move v6, v7

    :cond_c
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement:Z

    :cond_d
    move v6, v7

    goto/16 :goto_0
.end method

.method public resetHadProcessedMovement()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$PanAction;->hadProcessedMovement:Z

    return-void
.end method