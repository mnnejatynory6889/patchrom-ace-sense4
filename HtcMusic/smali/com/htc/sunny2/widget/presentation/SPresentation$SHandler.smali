.class Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SHandler"
.end annotation


# static fields
.field public static final EVENT_ANIMATING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V
    .locals 0
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "thread"

    .prologue
    .line 2775
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    .line 2776
    invoke-direct {p0, p2, p3, p4}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    .line 2777
    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2779
    iget v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2786
    :goto_0
    return-void

    .line 2781
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->applyAnimation()V

    goto :goto_0

    .line 2779
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
