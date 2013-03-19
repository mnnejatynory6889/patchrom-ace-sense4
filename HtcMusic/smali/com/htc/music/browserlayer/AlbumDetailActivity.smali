.class public Lcom/htc/music/browserlayer/AlbumDetailActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;,
        Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_AUDIO_ID:Ljava/lang/String; = "audioid"

.field private static final BUNDLE_KEY_POSITION:Ljava/lang/String; = "position"

.field private static final BUNDLE_KEY_TRACK_NAME:Ljava/lang/String; = "trackname"

.field private static final DIALOG_ALBUM_CREATE_PLAYLIST:I = 0xb

.field private static final DIALOG_CREATE_PLAYLIST:I = 0xa

.field private static final DIALOG_DRM_CONFIRM:I = 0x2

.field private static final DIALOG_DRM_ERROR:I = 0x1

.field private static final DIALOG_FOR_DELETE:I = 0x0

.field private static final DIALOG_NO_NETWORK:I = 0x9

.field private static final DIALOG_SET_AS_RINGTONE:I = 0x3

.field private static final DIALOG_SET_AS_RINGTONE_NO_NOTIFICATION:I = 0x4

.field private static final DIALOG_SHARETEXT:I = 0x5

.field private static final DIALOG_SHARETYPE:I = 0x6

.field private static final DIALOG_SHARE_DRM_FILE:I = 0x8

.field private static final DIALOG_SHARE_NORMAL_FILE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "[AlbumDetailActivity]"

.field private static final TYPE_COUNT:I = 0x4

.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_SEPARATOR:I = 0x1

.field private static final TYPE_TEXT:I = 0x3

.field private static final TYPE_TRACK_LIST_ITEM:I = 0x2

.field private static final mAlbumCols:[Ljava/lang/String;

.field private static final mCursorCols:[Ljava/lang/String;

.field private static final mGenreCols:[Ljava/lang/String;


# instance fields
.field private final PLAY_ALL:I

.field private final SETTING:I

.field private final UPLOAD:I

.field private mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mAlbumArtOffectX:I

.field private mAlbumArtOffectY:I

.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumArtSize:I

.field private mAlbumGenre:Ljava/lang/String;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mCategory:Lcom/htc/music/NpCategory;

.field private mComposer:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDbTable:I

.field private mDefaultAlbumArt:Landroid/graphics/Bitmap;

.field private mEmptyViewMsg:I

.field mFirstPlaylistCreateType:I

.field private mGenre:Ljava/lang/String;

.field private mLG:Landroid/graphics/Shader;

.field private mMode:Landroid/graphics/Xfermode;

.field private mMsg:Ljava/lang/CharSequence;

.field private volatile mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mNumberOfTracks:I

.field private mOrientation:I

.field private mReflectionHeight:I

.field private mReleaseYear:Ljava/lang/String;

.field private mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedData:Landroid/os/Bundle;

.field private mServiceBound:Z

.field private mShareBundle:Landroid/os/Bundle;

.field private mShowError:Z

.field private mStopping:Z

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;

.field private volatile mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private volatile nonUIThread:Landroid/os/HandlerThread;

.field private queryingCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "album_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    .line 159
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenreCols:[Ljava/lang/String;

    .line 161
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "numsongs"

    aput-object v1, v0, v6

    const-string v1, "album_art"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "minyear"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 108
    const/16 v0, 0x1b

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->PLAY_ALL:I

    .line 110
    const/16 v0, 0x1c

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->UPLOAD:I

    .line 112
    const/16 v0, 0x1d

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->SETTING:I

    .line 165
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 167
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 169
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 171
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 173
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 175
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 177
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 179
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I

    .line 181
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I

    .line 183
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I

    .line 185
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I

    .line 187
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 189
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 191
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    .line 193
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 195
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 199
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 203
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 205
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 207
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    .line 209
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 213
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 215
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 217
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 219
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 223
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    .line 226
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 234
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 236
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 240
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 241
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    .line 243
    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    .line 245
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    .line 247
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 2121
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$8;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 2128
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$9;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 2311
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$10;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    return v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownAlbum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showTrackOptions()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenreCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicFile()V

    return-void
.end method

.method private chooseShareType()V
    .locals 1

    .prologue
    .line 2163
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 2164
    return-void
.end method

.method private clearData()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 485
    iput v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 491
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 499
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 500
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 501
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    .line 502
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 503
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 504
    iput v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 505
    iput v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I

    .line 506
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_3

    .line 508
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    :cond_2
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 512
    :cond_3
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 513
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    .line 514
    iput v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I

    .line 515
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 516
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 517
    iput-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 518
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->clearData()V

    .line 519
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "Exception when unregister content observer."

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 499
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private clearQueryingCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2297
    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2298
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 2299
    return-void
.end method

.method private decreaseQueryingCount()V
    .locals 2

    .prologue
    .line 2292
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2293
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 2294
    return-void

    .line 2293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 2159
    .local v0, rootContext:Landroid/app/Activity;
    invoke-static {v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    return-void
.end method

.method private increaseQueryingCount()V
    .locals 2

    .prologue
    .line 2287
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    .line 2288
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showSpinnerUI(Z)V

    .line 2289
    return-void

    .line 2288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnknownAlbum(Ljava/lang/String;)Z
    .locals 1
    .parameter "album"

    .prologue
    .line 2304
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnknownArtist(Ljava/lang/String;)Z
    .locals 1
    .parameter "artist"

    .prologue
    .line 2308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shareMusicFile()V
    .locals 7

    .prologue
    .line 2167
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v6, "position"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2168
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "_data"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "audioid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2171
    .local v0, audioId:I
    invoke-static {p0, v3, v0}, Lcom/htc/music/util/MusicUtils;->canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 2173
    .local v1, canShare:I
    packed-switch v1, :pswitch_data_0

    .line 2185
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2186
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2188
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 2175
    :pswitch_0
    const-string v4, "[AlbumDetailActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normal file case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2180
    :pswitch_1
    const-string v4, "[AlbumDetailActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SD DRM case, Audio Path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    goto :goto_0

    .line 2173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 2198
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    .line 2201
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showNewDialog(I)V

    .line 2202
    return-void
.end method

.method private showAlbumOptions()V
    .locals 9

    .prologue
    const v8, 0x204020f

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2258
    const/4 v2, 0x0

    .line 2259
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2260
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2263
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2266
    new-array v2, v7, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 2270
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 2278
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    .line 2279
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2280
    return-void

    .line 2273
    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2276
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v4, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 2270
    :array_0
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 2276
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showTrackOptions()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x7

    .line 2207
    const/4 v2, 0x0

    .line 2208
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2209
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 2210
    .local v0, dlnaMode:I
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2213
    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2216
    const/16 v3, 0x9

    new-array v2, v3, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x204020f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x204014d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2221
    .restart local v2       #items:[Ljava/lang/CharSequence;
    const/16 v3, 0x9

    new-array v1, v3, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 2253
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideHtcContextMenu()V

    .line 2254
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "trackname"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 2255
    return-void

    .line 2225
    :cond_0
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x204020f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2229
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 2235
    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2238
    new-array v2, v6, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x204020f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x2040216

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 2242
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v6, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_2

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 2246
    :cond_2
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const v3, 0x204020f

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x2040214

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const v4, 0x204014d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x2040216

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2250
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v5, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_3

    .restart local v1       #ids:[I
    goto/16 :goto_0

    .line 2221
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2229
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2242
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 2250
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getQueryingCount()I
    .locals 1

    .prologue
    .line 2283
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->queryingCount:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 865
    sparse-switch p1, :sswitch_data_0

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 867
    :sswitch_0
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 871
    const/4 v11, 0x1

    new-array v6, v11, [I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v13, "audioid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v6, v11

    .line 872
    .local v6, list:[I
    const-string v11, "playlist"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    int-to-long v11, v11

    invoke-static {p0, v6, v11, v12}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 877
    .end local v6           #list:[I
    :sswitch_1
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 878
    const-string v11, "[AlbumDetailActivity]"

    const-string v12, "receive set contact ringtone activity result"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    const-string v12, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->handleContactRingtoneResult(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 885
    :sswitch_2
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 886
    const-string v11, "selectedlist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 887
    .local v8, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 890
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 891
    .local v5, iCount:I
    new-array v2, v5, [Ljava/lang/String;

    .line 892
    .local v2, dataPathArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 893
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {p0, v11}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 894
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 895
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 896
    const-string v11, "_data"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 897
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 892
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 901
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    new-instance v9, Ljava/lang/String;

    const-string v11, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 903
    .local v9, szAction:Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "upload"

    invoke-virtual {v11, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 904
    :catch_0
    move-exception v3

    .line 905
    .local v3, ex:Ljava/lang/SecurityException;
    const-string v11, "[AlbumDetailActivity]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "We do not have permission to start the service :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 910
    .end local v2           #dataPathArray:[Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/SecurityException;
    .end local v4           #i:I
    .end local v5           #iCount:I
    .end local v8           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #szAction:Ljava/lang/String;
    :sswitch_3
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 911
    if-eqz p3, :cond_3

    .line 912
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 914
    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 919
    :sswitch_4
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 920
    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    iget-object v14, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-static {v11, v12, v13, v14}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 922
    .local v10, where:Ljava/lang/String;
    invoke-static {p0, v10}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v6

    .line 923
    .restart local v6       #list:[I
    const-string v11, "playlist"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 924
    .local v7, playlist:I
    int-to-long v11, v7

    invoke-static {p0, v6, v11, v12}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 865
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x17 -> :sswitch_4
        0x1c -> :sswitch_2
        0xc351 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 396
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 417
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 401
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 403
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 404
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 405
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 406
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 407
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 251
    const-string v0, "[AlbumDetailActivity]"

    const-string v2, "== onCreate() =="

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setVolumeControlStream(I)V

    .line 258
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 259
    .local v11, res:Landroid/content/res/Resources;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 260
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I

    .line 262
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I

    .line 267
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 268
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setContentView(I)V

    .line 278
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "albumid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "artistid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "genreid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "composer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "dbTable"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDbTable:I

    .line 306
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 310
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 311
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 323
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 324
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 325
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 328
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 330
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 333
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    if-nez v0, :cond_3

    .line 334
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Lcom/htc/music/browserlayer/AlbumDetailActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    .line 340
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "[AlbumDetailActivity]"

    invoke-direct {v0, v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    .line 341
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 342
    new-instance v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    .line 344
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 346
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 382
    :goto_2
    return-void

    .line 270
    :cond_4
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setContentView(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 313
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 314
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_1

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 316
    new-instance v0, Lcom/htc/music/NpCategory;

    invoke-direct {v0, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 317
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto/16 :goto_1

    .line 319
    :cond_7
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    goto/16 :goto_1

    .line 350
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->enableSearch()V

    .line 352
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 353
    .local v12, resources:Landroid/content/res/Resources;
    const v0, 0x7f0a0013

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I

    .line 354
    const v0, 0x7f0a0014

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I

    .line 355
    const v0, 0x7f0a0015

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I

    .line 356
    const v0, 0x7f0a0016

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I

    .line 358
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 359
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    const v0, 0x7f020042

    invoke-static {v12, v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 362
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;

    .line 363
    const-string v0, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "options.outHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v3

    const/high16 v5, -0x100

    const/high16 v6, 0x5f00

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;

    .line 367
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.music.metachanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 380
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 646
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 647
    move-object v1, p0

    .line 648
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 783
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    :goto_0
    return-object v8

    .line 651
    :pswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 652
    const v9, 0x7f070015

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 657
    .local v3, f:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    if-nez v9, :cond_3

    .line 658
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 654
    .end local v3           #f:Ljava/lang/String;
    :cond_2
    const v9, 0x7f070014

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #f:Ljava/lang/String;
    goto :goto_1

    .line 661
    :cond_3
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v12, "trackname"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, desc:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x2040214

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$3;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto :goto_0

    .line 674
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    :pswitch_1
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f070068

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$4;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 683
    :pswitch_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_5

    .line 684
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 687
    :cond_5
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$6;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    new-instance v11, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;

    invoke-direct {v11, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$5;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 701
    :pswitch_3
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700b5

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700b6

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const v10, 0x7f0700b7

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 703
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v9, :cond_6

    .line 704
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 706
    :cond_6
    const-string v9, "[AlbumDetailActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .end local v4           #items:[Ljava/lang/CharSequence;
    :pswitch_4
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f0700b5

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f0700b6

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 713
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v9, :cond_7

    .line 714
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/16 v10, 0x13

    invoke-virtual {v9, v4, v10}, Lcom/htc/music/util/RingtoneHelper;->createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    goto/16 :goto_0

    .line 716
    :cond_7
    const-string v9, "[AlbumDetailActivity]"

    const-string v10, "mRingToneHelper is null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local v4           #items:[Ljava/lang/CharSequence;
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShareBundle:Landroid/os/Bundle;

    invoke-static {v9, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 732
    :pswitch_6
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const v10, 0x7f070124

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const v10, 0x7f070125

    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 735
    .restart local v4       #items:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-nez v9, :cond_8

    .line 736
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 739
    :cond_8
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v11, "trackname"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;

    invoke-direct {v10, p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$7;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    invoke-virtual {v9, v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 758
    .local v8, shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 762
    .end local v4           #items:[Ljava/lang/CharSequence;
    .end local v8           #shareTypeDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_a

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 763
    :cond_a
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v10, "audioid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 764
    .local v0, audioId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v0, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v7

    .local v7, shareNormaldialog:Landroid/app/Dialog;
    move-object v8, v7

    .line 767
    goto/16 :goto_0

    .line 771
    .end local v0           #audioId:I
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #shareNormaldialog:Landroid/app/Dialog;
    :pswitch_8
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v9, :cond_c

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 772
    :cond_c
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v10, "audioid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 773
    .restart local v0       #audioId:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "_data"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 774
    .restart local v5       #path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v0, v5, v10}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;

    move-result-object v6

    .local v6, shareDRMDialog:Landroid/app/Dialog;
    move-object v8, v6

    .line 776
    goto/16 :goto_0

    .line 779
    .end local v0           #audioId:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #shareDRMDialog:Landroid/app/Dialog;
    :pswitch_9
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v8

    goto/16 :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 5
    .parameter "playlistName"

    .prologue
    .line 791
    iget v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    packed-switch v1, :pswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 793
    :pswitch_0
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 794
    .local v0, id:I
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v4, "audioid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 797
    .end local v0           #id:I
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 798
    .restart local v0       #id:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 582
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 583
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 584
    const/16 v0, 0x1b

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    invoke-static {p0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const/16 v0, 0x1c

    const v1, 0x7f07000b

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 588
    :cond_0
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const/16 v0, 0x1d

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 591
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    .line 549
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 550
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;

    .line 554
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 562
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 567
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->nonUIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 569
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    :try_start_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 578
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumDetailActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 563
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 557
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 17
    .parameter "id"

    .prologue
    .line 987
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onHtcContextItemSelected, id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    packed-switch p1, :pswitch_data_0

    .line 1125
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v13

    :goto_1
    return v13

    .line 990
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "position"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->playAllFromIndex(I)V

    .line 991
    const/4 v13, 0x1

    goto :goto_1

    .line 994
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v13

    if-gtz v13, :cond_0

    .line 995
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    .line 996
    const/16 v13, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1006
    :goto_2
    const/4 v13, 0x1

    goto :goto_1

    .line 999
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1000
    .local v9, intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1001
    const-string v13, "pickermode"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1002
    const/4 v13, 0x1

    new-array v1, v13, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v1, v13

    .line 1003
    .local v1, addToPlaylistData:[I
    const-string v13, "AddToPlaylistData"

    invoke-virtual {v9, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1004
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1011
    .end local v1           #addToPlaylistData:[I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, mSelectedId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v16, "audioid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :try_start_0
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v16, "audioid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_3
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1014
    :catch_0
    move-exception v6

    .line 1015
    .local v6, e:Landroid/os/RemoteException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1021
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1022
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1026
    :pswitch_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1027
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1028
    const-string v13, "track"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const/4 v13, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1031
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1035
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "position"

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1036
    .local v11, position:I
    const/4 v13, -0x1

    if-ne v11, v13, :cond_1

    .line 1037
    const-string v13, "[AlbumDetailActivity]"

    const-string v14, "USE_AS_RINGTONE : the click position is invalid"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1040
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v13, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1041
    const-string v13, "[AlbumDetailActivity]"

    const-string v14, "USE_AS_RINGTONE : moveToPosition fail"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1044
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v15, "_data"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1046
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 1047
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1049
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->getAudioType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 1051
    .local v3, currentAudioType:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    if-eqz v13, :cond_5

    .line 1052
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v15, "audioid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/htc/music/util/RingtoneHelper;->setAudioId(I)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v13, v10}, Lcom/htc/music/util/RingtoneHelper;->setAudioPath(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    invoke-virtual {v13, v3}, Lcom/htc/music/util/RingtoneHelper;->setAudioType(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/util/RingtoneHelper;->useAsRingtone(Z)V

    .line 1058
    :cond_5
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1062
    .end local v3           #currentAudioType:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #position:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "audioid"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1063
    .local v8, index:Ljava/lang/Integer;
    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    .line 1064
    .local v5, dataPathArray:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v4

    .line 1065
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_6

    .line 1066
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1067
    const/4 v13, 0x0

    const-string v14, "_data"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v13

    .line 1068
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1069
    const/4 v4, 0x0

    .line 1071
    :cond_6
    new-instance v12, Ljava/lang/String;

    const-string v13, "com.htc.vmm.service.VMMEngineService"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v12, szAction:Ljava/lang/String;
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "upload"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1077
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1074
    :catch_1
    move-exception v7

    .line 1075
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We do not have permission to start the service :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1081
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v5           #dataPathArray:[Ljava/lang/String;
    .end local v7           #ex:Ljava/lang/SecurityException;
    .end local v8           #index:Ljava/lang/Integer;
    .end local v12           #szAction:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 1082
    .local v2, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1083
    const-string v2, "<unknown>"

    .line 1085
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v14, "trackname"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1090
    .end local v2           #artistName:Ljava/lang/String;
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->chooseShareType()V

    .line 1091
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1094
    :pswitch_a
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v13

    if-gtz v13, :cond_8

    .line 1095
    const/16 v13, 0xb

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mFirstPlaylistCreateType:I

    .line 1096
    const/16 v13, 0x25a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 1106
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1099
    :cond_8
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1100
    .restart local v9       #intent:Landroid/content/Intent;
    const-class v13, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1101
    const-string v13, "pickermode"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    .line 1103
    .restart local v1       #addToPlaylistData:[I
    const-string v13, "AddToPlaylistData"

    invoke-virtual {v9, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1104
    const/16 v13, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 1110
    .end local v1           #addToPlaylistData:[I
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_b
    :try_start_2
    sget-object v13, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v13, v14, v15}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1116
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1111
    :catch_2
    move-exception v6

    .line 1112
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1113
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v6

    .line 1114
    .local v6, e:Landroid/os/RemoteException;
    const-string v13, "[AlbumDetailActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1120
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 931
    const-string v4, "[AlbumDetailActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick, position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I

    move-result v4

    if-ne p3, v4, :cond_3

    .line 934
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->isNoNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 936
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    .line 941
    .local v0, artistName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->isUnknownArtist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 942
    const-string v0, "<unknown>"

    .line 945
    :cond_2
    const-string v4, "[AlbumDetailActivity]"

    const-string v5, "Trying to launching online artist detail view..."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.store.DETAIL_VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.htc.media/artist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 949
    const-string v4, "artistname"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string v4, "InnerActivityType"

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    const v4, 0xc351

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/OnlineMusicUtils;->showSplashScreen(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 955
    const/4 v4, -0x2

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 960
    .end local v0           #artistName:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    add-int/lit8 v1, p3, -0x1

    .line 961
    .local v1, i:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    if-ltz v1, :cond_0

    .line 964
    const v4, 0x7f08005a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 965
    .local v2, ib:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    .line 967
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->onHtcContextItemSelected(I)Z

    goto :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 971
    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemLongClick, position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setIntent(Landroid/content/Intent;)V

    .line 440
    const-string v1, "albumid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, albumId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearData()V

    .line 446
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 450
    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    .line 451
    const-string v1, "artistid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    .line 452
    const-string v1, "genreid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    .line 453
    const-string v1, "composer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 456
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 457
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 467
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 469
    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate(Bundle)] mAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mArtistId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mGenre="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mComposer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 474
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->backPressed(I)V

    .line 482
    :goto_1
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 459
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 460
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 462
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    .line 463
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 465
    :cond_2
    new-instance v1, Lcom/htc/music/NpCategory;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;

    goto/16 :goto_0

    .line 478
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mOrientation:I

    .line 480
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryAlbumInfo(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->queryTrackCursor()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 614
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    :goto_0
    return v1

    .line 615
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 639
    const/4 v1, 0x0

    goto :goto_0

    .line 617
    :sswitch_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->playAll()V

    goto :goto_0

    .line 621
    :sswitch_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->shuffleAll()V

    goto :goto_0

    .line 625
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "albumid"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v2, "pickermode"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    const-class v2, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 629
    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 634
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v2, -0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1b -> :sswitch_0
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 807
    sparse-switch p1, :sswitch_data_0

    .line 861
    .end local p2
    :goto_0
    return-void

    .line 810
    .restart local p2
    :sswitch_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, f:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v5, "trackname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, desc:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    .end local v0           #desc:Ljava/lang/String;
    .end local v1           #f:Ljava/lang/String;
    .restart local p2
    :cond_0
    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/String;
    goto :goto_1

    .line 819
    .end local v1           #f:Ljava/lang/String;
    :sswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 831
    .restart local p2
    :sswitch_2
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mSelectedData:Landroid/os/Bundle;

    const-string v3, "trackname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 807
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 596
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 597
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 598
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 599
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 601
    :cond_0
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_1

    .line 603
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 605
    :cond_1
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_3

    .line 607
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z

    if-nez v1, :cond_2

    move v3, v2

    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 609
    :cond_3
    return v2

    :cond_4
    move v1, v3

    .line 599
    goto :goto_0

    :cond_5
    move v1, v3

    .line 603
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 388
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setMainTitle(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setSecondaryTitle(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 421
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 432
    const-string v0, "[AlbumDetailActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 528
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 530
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    .line 531
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z

    .line 537
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity;->mServiceBound:Z

    .line 542
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 543
    return-void
.end method
