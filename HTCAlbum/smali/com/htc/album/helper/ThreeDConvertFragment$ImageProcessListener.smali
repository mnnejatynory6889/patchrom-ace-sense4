.class Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;
.super Ljava/lang/Object;
.source "ThreeDConvertFragment.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDConvertFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDConvertFragment;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/ThreeDConvertFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/ThreeDConvertFragment;Lcom/htc/album/helper/ThreeDConvertFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;-><init>(Lcom/htc/album/helper/ThreeDConvertFragment;)V

    return-void
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public OnCancelProcessing()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public OnProcessBegin()V
    .locals 0

    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ImageProcessListener][OnProcessEnd] Result Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ImageProcessListener][OnProcessEnd] Result MimeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    #getter for: Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/htc/album/helper/ThreeDConvertFragment;->access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v4}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    #getter for: Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDConvertFragment;->access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5, v3, v2}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v4}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    invoke-virtual {v4}, Lcom/htc/album/helper/ThreeDConvertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    #getter for: Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDConvertFragment;->access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    #getter for: Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/htc/album/helper/ThreeDConvertFragment;->access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvertFragment$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvertFragment;

    #getter for: Lcom/htc/album/helper/ThreeDConvertFragment;->mShareIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/album/helper/ThreeDConvertFragment;->access$100(Lcom/htc/album/helper/ThreeDConvertFragment;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method
