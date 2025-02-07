.class Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropAnimationRunnable"
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mIsRunning:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 4

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    const/16 v2, 0x5dd

    const-string v3, "CAROUSEL_REARRANGE"

    invoke-static {v1, p1, v2, v3}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    return-void
.end method

.method private endFling(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1800(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/htc/fragment/widget/DragSource;->onDropAnimationEnd(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1200(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->executeQueuedActions()V

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    :cond_2
    return-void
.end method

.method private startCommon()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isStillRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v5, 0x0

    #setter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1902(Lcom/htc/fragment/widget/CarouselHost;Z)Z

    iput-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    int-to-float v5, v2

    int-to-float v6, v3

    #calls: Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V
    invoke-static {v4, v5, v6}, Lcom/htc/fragment/widget/CarouselHost;->access$2000(Lcom/htc/fragment/widget/CarouselHost;FF)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost;->access$1900(Lcom/htc/fragment/widget/CarouselHost;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v4, p0}, Lcom/htc/fragment/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v7}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingPositions(IIII)V
    .locals 6

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->startCommon()V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->access$1602(Lcom/htc/fragment/widget/CarouselHost;Z)Z

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    return-void
.end method
