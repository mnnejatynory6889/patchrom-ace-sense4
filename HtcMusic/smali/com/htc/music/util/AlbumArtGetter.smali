.class public Lcom/htc/music/util/AlbumArtGetter;
.super Ljava/lang/Object;
.source "AlbumArtGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[AlbumArtSqlHandler]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 1
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "imageDecodeListener"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    .line 194
    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 195
    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 23
    iput-object p4, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    .line 24
    iput-object p1, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/util/AlbumArtGetter;->initImageDecoder(Landroid/content/Context;II)V

    .line 27
    return-void
.end method

.method private initImageDecoder(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v2, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 199
    return-void
.end method

.method private releaseImageDecoder()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 204
    iget-object v0, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstArtistAlbumArtId(I)V
    .locals 9
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v8, where:Ljava/lang/StringBuffer;
    const-string v1, "artist_id"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, " = (select artist_id FROM artists where artist IS NOT NULL AND artist != \""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "<unknown>"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "\" ORDER BY "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "artist"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, " LIMIT 0,1) AND "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "is_music>=1"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "album_id"

    aput-object v3, v4, v1

    const/4 v1, 0x2

    const-string v3, "album"

    aput-object v3, v4, v1

    const/4 v1, 0x3

    const-string v3, "album_key"

    aput-object v3, v4, v1

    const/4 v1, 0x4

    const-string v3, "\'\' as album_art"

    aput-object v3, v4, v1

    .line 71
    .local v4, mCols:[Ljava/lang/String;
    new-instance v0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;-><init>(Landroid/content/ContentResolver;ZLcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder;)V

    .line 77
    .local v0, queryHandler:Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public getFirstPlaylistAlbumArtId(I)V
    .locals 9
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v8, where:Ljava/lang/StringBuffer;
    const-string v1, "_id"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, " = (select audio_id FROM audio_playlists_map order by playlist_id, play_order) "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "album_id"

    aput-object v3, v4, v1

    const/4 v1, 0x2

    const-string v3, "album"

    aput-object v3, v4, v1

    const/4 v1, 0x3

    const-string v3, "album_key"

    aput-object v3, v4, v1

    const/4 v1, 0x4

    const-string v3, "\'\' as album_art"

    aput-object v3, v4, v1

    .line 96
    .local v4, mCols:[Ljava/lang/String;
    new-instance v0, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;

    iget-object v1, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/util/AlbumArtGetter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v3

    iget-object v5, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecodeListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iget-object v6, p0, Lcom/htc/music/util/AlbumArtGetter;->mImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;-><init>(Landroid/content/ContentResolver;ZLcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;Lcom/htc/music/util/AsyncImageDecoder;)V

    .line 102
    .local v0, queryHandler:Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/AlbumArtGetter$InnerQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/music/util/AlbumArtGetter;->releaseImageDecoder()V

    .line 31
    return-void
.end method
