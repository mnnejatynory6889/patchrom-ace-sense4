.class Lcom/htc/music/MiniPlayer$3;
.super Landroid/os/Handler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1025
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1026
    .local v0, albumArtPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1027
    .local v2, bundle:Landroid/os/Bundle;
    const-string v3, "DECODED_BITMAP"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1029
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 1030
    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    .line 1041
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1040
    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumbForOnline(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
    .end packed-switch
.end method
