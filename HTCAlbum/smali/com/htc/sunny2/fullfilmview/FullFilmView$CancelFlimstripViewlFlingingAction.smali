.class Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelFlimstripViewlFlingingAction"
.end annotation


# instance fields
.field private DELAYED_TIME:J

.field private eventX:I

.field private pushedTime:J

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->DELAYED_TIME:J

    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->eventX:I

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 4

    iget-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->pushedTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->DELAYED_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->reset()V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mAnimator:Lcom/htc/sunny2/fullfilmview/Animator;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/Animator;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/Animator;->cancelTransition(I)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFilmstripScroller:Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$CancelFlimstripViewlFlingingAction;->eventX:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScroller;->onTouchDown(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method
