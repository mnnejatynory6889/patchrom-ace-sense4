.class Lcom/htc/music/HtcMusic$33;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 5793
    iput-object p1, p0, Lcom/htc/music/HtcMusic$33;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5796
    iget-object v0, p0, Lcom/htc/music/HtcMusic$33;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->finish()V

    .line 5797
    return-void
.end method
