.class Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Lcom/htc/album/processor/BaseProcessor$OnProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/processor/ImageProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Lcom/htc/album/processor/ImageProcessorManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;-><init>(Lcom/htc/album/processor/ImageProcessorManager;)V

    return-void
.end method


# virtual methods
.method public OnProcessBegin()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$500(Lcom/htc/album/processor/ImageProcessorManager;)Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnProcessBegin()V

    :cond_0
    return-void
.end method

.method public OnProcessEnd()V
    .locals 2

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    #getter for: Lcom/htc/album/processor/ImageProcessorManager;->mOnImageProcessListener:Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;
    invoke-static {v1}, Lcom/htc/album/processor/ImageProcessorManager;->access$500(Lcom/htc/album/processor/ImageProcessorManager;)Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/processor/ImageProcessorManager$ProcessorListener;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-interface {v0, v1}, Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;->OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V

    :cond_0
    return-void
.end method
