.class Lcom/htc/music/HtcMusic$11;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/htc/music/HtcMusic$11;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/htc/music/HtcMusic$11;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doPauseResume()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1900(Lcom/htc/music/HtcMusic;)V

    .line 1405
    return-void
.end method
