.class Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;
.super Ljava/lang/Object;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver$2;->this$0:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;->mIsProcessing:Z

    .line 724
    return-void
.end method
