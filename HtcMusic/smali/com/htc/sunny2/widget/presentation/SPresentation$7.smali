.class Lcom/htc/sunny2/widget/presentation/SPresentation$7;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$7;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$7;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToLeftW()V

    .line 1352
    return-void
.end method
