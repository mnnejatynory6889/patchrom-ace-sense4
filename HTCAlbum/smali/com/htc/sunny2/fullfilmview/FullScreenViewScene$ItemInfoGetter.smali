.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;
.super Lcom/htc/sunnyCore/RenderThreadInterruption;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemInfoGetter"
.end annotation


# instance fields
.field public itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->itemsCount:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iput v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getItemInfo(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iput v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v1, v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    if-eq v0, v1, :cond_0

    const-string v0, "FullScreenViewScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemInfoGetter NG - index error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iget v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemInfoGetter;->itemInfo:Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;

    iput v3, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemInfo;->index:I

    goto :goto_0
.end method
