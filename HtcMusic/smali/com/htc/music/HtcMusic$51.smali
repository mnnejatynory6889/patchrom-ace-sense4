.class Lcom/htc/music/HtcMusic$51;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createEqualizerDialog()Landroid/app/Dialog;
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
    .line 8263
    iput-object p1, p0, Lcom/htc/music/HtcMusic$51;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 8266
    iget-object v0, p0, Lcom/htc/music/HtcMusic$51;->this$0:Lcom/htc/music/HtcMusic;

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/HtcMusic$51;->this$0:Lcom/htc/music/HtcMusic;

    iget v2, v2, Lcom/htc/music/HtcMusic;->mSelectEQIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$10800(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    .line 8269
    return-void
.end method
