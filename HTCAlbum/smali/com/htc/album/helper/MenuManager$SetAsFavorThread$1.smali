.class Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;->this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;->this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    #getter for: Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mStopSign:Z
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->access$1300(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;->this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->FAVORITE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "count"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;->this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    #getter for: Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->access$1400(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0083

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$SetAsFavorThread$1;->this$1:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->access$1402(Lcom/htc/album/helper/MenuManager$SetAsFavorThread;Landroid/app/Activity;)Landroid/app/Activity;

    return-void
.end method
