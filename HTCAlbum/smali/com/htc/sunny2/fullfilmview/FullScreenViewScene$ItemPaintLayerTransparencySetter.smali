.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemPaintLayerTransparencySetter"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field transparency:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->index:I

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getFrameIndexFromItemIndex(I)I
    invoke-static {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ItemPaintLayerTransparencySetter;->transparency:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setItemPaintLayerTransparency(I)V

    goto :goto_0
.end method
