.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;
.super Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineSearchItem"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "itemName"

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 832
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;->setPrimaryText(Ljava/lang/String;)V

    .line 833
    return-void
.end method
