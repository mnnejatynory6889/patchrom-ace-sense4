.class Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;
.super Ljava/lang/Object;
.source "GifPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/TabPluginDevice/GifPlayer;->mPlayDone:Z
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/GifPlayer;->access$1402(Lcom/htc/album/TabPluginDevice/GifPlayer;Z)Z

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$2;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer;->finish()V

    return-void
.end method
