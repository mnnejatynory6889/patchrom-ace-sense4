.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mNowPlaying:[I

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 2934
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2935
    iput-object p3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 2936
    iput-object p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 2937
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 2938
    return-void
.end method

.method private dump()V
    .locals 4

    .prologue
    .line 3088
    const-string v1, "("

    .line 3089
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 3090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3091
    iget v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 3092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3089
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3095
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3096
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 2941
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2942
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2943
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2946
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2947
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 2948
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "NowPlayingCursor, makeNowPlayingCursor with Null Context!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    :cond_1
    :goto_0
    return-void

    .line 2953
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getNowplaying()[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2957
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    if-nez v1, :cond_3

    .line 2958
    const-string v1, "[TrackBrowserFragment]"

    const-string v2, "now playing list is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2954
    :catch_0
    move-exception v9

    .line 2955
    .local v9, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_1

    .line 2961
    .end local v9           #ex:Landroid/os/RemoteException;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    .line 2962
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    if-eqz v1, :cond_1

    .line 2966
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2967
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    if-ge v10, v1, :cond_5

    .line 2969
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v1, v10

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2970
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_4

    .line 2971
    const-string v1, ","

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2974
    :cond_5
    const-string v1, ")"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2979
    .local v6, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, v6}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2980
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsEnhancerExist:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2981
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 2983
    :cond_6
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_7

    .line 2984
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    goto/16 :goto_0

    .line 2987
    :cond_7
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 2988
    .local v12, size:I
    new-array v1, v12, [I

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I

    .line 2989
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2990
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2991
    .local v7, colidx:I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v12, :cond_8

    .line 2992
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v1, v10

    .line 2993
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2991
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3000
    :cond_8
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mPos:I

    .line 3001
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mRowIdColumnIndex:I

    .line 3002
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 3003
    invoke-super {p0}, Landroid/database/AbstractCursor;->moveToFirst()Z

    .line 3004
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurPos:I

    .line 3011
    const/4 v11, 0x0

    .line 3012
    .local v11, removed:I
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    add-int/lit8 v10, v1, -0x1

    :goto_4
    if-ltz v10, :cond_a

    .line 3013
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v13, v1, v10

    .line 3014
    .local v13, trackid:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v1, v13}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    .line 3015
    .local v8, crsridx:I
    if-gez v8, :cond_9

    .line 3018
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    move-result v1

    add-int/2addr v11, v1

    .line 3012
    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 3021
    .end local v8           #crsridx:I
    .end local v13           #trackid:I
    :cond_a
    if-lez v11, :cond_1

    .line 3022
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    .line 3023
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    array-length v1, v1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    .line 3024
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    if-nez v1, :cond_1

    .line 3025
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3029
    :catch_1
    move-exception v9

    .line 3030
    .restart local v9       #ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_0
.end method

.method private moveQueueItem(II)V
    .locals 6
    .parameter "index1"
    .parameter "index2"

    .prologue
    .line 3203
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v3

    .line 3204
    .local v0, PlayListLen:I
    if-lt p1, v0, :cond_0

    .line 3205
    add-int/lit8 p1, v0, -0x1

    .line 3207
    :cond_0
    if-lt p2, v0, :cond_1

    .line 3208
    add-int/lit8 p2, v0, -0x1

    .line 3210
    :cond_1
    if-ge p1, p2, :cond_4

    .line 3211
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3212
    .local v2, tmp:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 3213
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3215
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    .line 3224
    .end local v1           #i:I
    .end local v2           #tmp:I
    :cond_3
    :goto_1
    return-void

    .line 3216
    :cond_4
    if-ge p2, p1, :cond_3

    .line 3217
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v2, v3, p1

    .line 3218
    .restart local v2       #tmp:I
    move v1, p1

    .restart local v1       #i:I
    :goto_2
    if-le v1, p2, :cond_5

    .line 3219
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 3218
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3221
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aput v2, v3, p2

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3169
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 3162
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 3163
    :cond_0
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 3190
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3193
    :goto_0
    return v1

    .line 3191
    :catch_0
    move-exception v0

    .line 3192
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "idx"

    .prologue
    .line 3180
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3183
    :goto_0
    return-object v1

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3183
    const-string v1, ""

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3036
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 3122
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3125
    :goto_0
    return v1

    .line 3123
    :catch_0
    move-exception v0

    .line 3124
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 3132
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3135
    :goto_0
    return-wide v1

    .line 3133
    :catch_0
    move-exception v0

    .line 3134
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3135
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getNowPlayingQueue()[I
    .locals 1

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    return-object v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 3112
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3115
    :goto_0
    return v1

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 3102
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3105
    :goto_0
    return-object v1

    .line 3103
    :catch_0
    move-exception v0

    .line 3104
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onChange(Z)V

    .line 3105
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 3151
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3083
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->moveQueueItem(II)V

    .line 3084
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onMove(II)Z

    .line 3085
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v2, 0x1

    .line 3041
    if-ne p1, p2, :cond_0

    .line 3057
    :goto_0
    return v2

    .line 3044
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v3, :cond_2

    .line 3045
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3052
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v3, p2

    .line 3053
    .local v1, newid:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 3054
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3055
    iput p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 3062
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 3063
    const/4 v1, 0x0

    .line 3074
    :goto_0
    return v1

    .line 3065
    :cond_0
    move v0, p1

    .line 3066
    .local v0, i:I
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    .line 3067
    :goto_1
    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 3068
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 3069
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3071
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 3072
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 3173
    invoke-direct {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 3174
    const/4 v0, 0x1

    return v0
.end method
