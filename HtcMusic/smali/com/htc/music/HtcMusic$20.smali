.class Lcom/htc/music/HtcMusic$20;
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
    .line 1637
    iput-object p1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;)V

    .line 1642
    iget-object v0, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->showDialog(I)V

    .line 1643
    return-void
.end method
