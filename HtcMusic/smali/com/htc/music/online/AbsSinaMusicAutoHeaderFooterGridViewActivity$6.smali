.class Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;
.super Ljava/lang/Object;
.source "AbsSinaMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickIRT(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/view/SView;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 352
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 353
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 354
    iget-object v1, p0, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity$6;->this$0:Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;

    iget-object v1, v1, Lcom/htc/music/online/AbsSinaMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    return-void
.end method
