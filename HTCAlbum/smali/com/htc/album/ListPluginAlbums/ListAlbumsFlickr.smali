.class public Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;
.super Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;
.source "ListAlbumsFlickr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListAlbumsFlickr][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "service_name"

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;->setDataRequest(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/htc/album/ListPluginAlbums/ListAlbumsFlickr;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListAlbumsFlickr][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
