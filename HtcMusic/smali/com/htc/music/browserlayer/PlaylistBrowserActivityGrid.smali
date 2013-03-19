.class public Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;,
        Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final AFTER_PLAYALL_ONLINE_MUSIC:I = 0x2

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1e

.field private static final DELETE_ALL_PLAYLISTS:I = 0x23

.field private static final DELETE_ALL_PLAYLISTS_MESSAGE:I = 0x0

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x1b

.field private static final DELETE_PLAYLISTS:I = 0x22

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x1c

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FAVORITE_PLAYLIST:Ljava/lang/String; = "-6"

.field private static final FAVORITE_PLAYLIST_ID:I = -0x6

.field private static final FINISH_DELAY:I = 0x64

.field static final GET_ONLINE_MUSIC:I = 0x1

.field private static final HIDE_LOADING_ONLINE_MUSIC_DIALOG:I = 0x1

.field private static final NEW_PLAYLIST:I = 0x21

.field private static final PACKAGE_NAME_SINA:Ljava/lang/String; = "cn.sina.music"

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final RECENT_PLAYLIST:Ljava/lang/String; = "-5"

.field private static final RECENT_PLAYLIST_ID:I = -0x5

.field private static RECENT_PLAYLIST_POSITION:I = 0x0

.field private static final RENAME_PLAYLIST:I = 0x1d

.field public static final REQ_ONLINE_FAVORITE_DATAFEE_CHECK:I = 0x24

.field private static final SELECT_ALL:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivityGrid]"

.field private static final UNSELECT_ALL:I = 0x20


# instance fields
.field private list:[I

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field private mAllOnlineMusic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation
.end field

.field mBeginIntent:Landroid/content/Intent;

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

.field mCursorCols:[Ljava/lang/String;

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

.field mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

.field private mNonUILooper:Landroid/os/Looper;

.field private mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

.field private mOnlineFavoriteListPos:I

.field private mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

.field private mOrientation:I

.field private mPickerMode:I

.field private mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mRecentPlayedPos:I

.field private mSelectedId:I

.field private final mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

.field mUiHandler:Landroid/os/Handler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field menuOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 135
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 136
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 137
    iput v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 138
    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 140
    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteListPos:I

    .line 142
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 143
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAllOnlineMusic:Ljava/util/ArrayList;

    .line 144
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    .line 145
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

    .line 146
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    invoke-static {p0, v0}, Lcom/htc/music/online/OnlineMusicPlayFactory;->getOnlineMusicPlay(Landroid/content/Context;Z)Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    .line 148
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 152
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 1115
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 1119
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCursorCols:[Ljava/lang/String;

    .line 1124
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 1125
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    .line 1195
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    .line 1855
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$15;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/online/OnlineMusicGetter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAllOnlineMusic:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAllOnlineMusic:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Lcom/htc/music/online/OnlineMusicGetter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getAllOnlineMusic(Lcom/htc/music/online/OnlineMusicGetter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->afterGetAllOnlineMusicInNonUI()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showOnlineMusicLoadingDialog(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->afterGetAllOnlineMusic(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private afterGetAllOnlineMusic(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/online/sinamusic/WrapperSong;>;"
    const/4 v1, 0x0

    .line 909
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSinaMusicPlayHelper:Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;

    invoke-interface {v0, p1, v1}, Lcom/htc/music/online/OnlineMusicPlayFactory$OnlineMusicPlay;->playSongAll(Ljava/util/ArrayList;I)V

    .line 919
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showOnlineMusicLoadingDialog(Z)V

    .line 920
    return-void

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

    invoke-virtual {v0}, Lcom/htc/music/online/OnlineMusicGetter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 915
    const v0, 0x7f07005f

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private afterGetAllOnlineMusicInNonUI()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 902
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 906
    :cond_0
    return-void
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1150
    if-nez p1, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 1152
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 1153
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1154
    .local v2, parentCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedCount()I

    move-result v3

    .line 1155
    .local v3, selectCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemDeselectedCount()I

    move-result v0

    .line 1157
    .local v0, deselectCount:I
    const/16 v4, 0x20

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1158
    if-eq v2, v0, :cond_3

    move v4, v5

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1160
    :cond_2
    const/16 v4, 0x1f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1161
    if-eq v2, v3, :cond_4

    :goto_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v4, v6

    .line 1158
    goto :goto_1

    :cond_4
    move v5, v6

    .line 1161
    goto :goto_2
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 1167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1168
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1169
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v2, :cond_0

    .line 1170
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_4

    .line 1173
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1174
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 1175
    add-int/lit8 v1, v1, -0x1

    .line 1177
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 1178
    add-int/lit8 v1, v1, -0x1

    .line 1181
    :cond_2
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteListPos:I

    if-ltz v2, :cond_3

    .line 1182
    add-int/lit8 v1, v1, -0x1

    .line 1185
    :cond_3
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    .end local v1           #playlistCount:I
    :cond_4
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-eqz v2, :cond_5

    .line 1189
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1192
    :cond_5
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1193
    return-void
.end method

.method private destroyForOnlineMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 964
    sget-boolean v0, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    invoke-virtual {v0}, Lcom/htc/music/online/OnlineMusicGetter;->destroy()V

    .line 969
    iput-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    if-eqz v0, :cond_2

    .line 974
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 979
    :goto_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUILooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    .line 980
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUILooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 976
    :cond_2
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "[onDestroy] mNonUIHandler is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 982
    :cond_3
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "[onDestroy] mNonUILooper is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doAfterCheckDataFeeSuccess(I)V
    .locals 3
    .parameter "reqType"

    .prologue
    .line 845
    packed-switch p1, :pswitch_data_0

    .line 852
    :goto_0
    return-void

    .line 847
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/favorite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 1385
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1386
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1391
    return-void
.end method

.method private getAllOnlineFavoriteInBackground()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    if-nez v0, :cond_0

    .line 861
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/music/online/OnlineMusicGetterFactory;->get(Landroid/content/Context;I)Lcom/htc/music/online/OnlineMusicGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteGetter:Lcom/htc/music/online/OnlineMusicGetter;

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getAllOnlineMusicInBackground(Lcom/htc/music/online/OnlineMusicGetter;)V

    .line 864
    return-void
.end method

.method private getAllOnlineMusic(Lcom/htc/music/online/OnlineMusicGetter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "getter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/music/online/OnlineMusicGetter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/online/sinamusic/WrapperSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    invoke-virtual {p1, p0}, Lcom/htc/music/online/OnlineMusicGetter;->fetchAll(Landroid/content/Context;)V

    .line 945
    invoke-virtual {p1}, Lcom/htc/music/online/OnlineMusicGetter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p1}, Lcom/htc/music/online/OnlineMusicGetter;->getAllSongs()Ljava/util/ArrayList;

    move-result-object v0

    .line 949
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAllOnlineMusicInBackground(Lcom/htc/music/online/OnlineMusicGetter;)V
    .locals 2
    .parameter "getter"

    .prologue
    const/4 v1, 0x1

    .line 867
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCurrentOnlineMusicGetter:Lcom/htc/music/online/OnlineMusicGetter;

    .line 868
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->removeMessages(I)V

    .line 870
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;->sendEmptyMessage(I)Z

    .line 872
    :cond_0
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 1362
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 690
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const/4 v6, 0x0

    .line 695
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 696
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 697
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 698
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 699
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 700
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 700
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 703
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 704
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 710
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 711
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 712
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 713
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_2
    return-object v9

    .line 715
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 716
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "playlistId"
    .parameter "unknow"

    .prologue
    const/4 v10, 0x0

    .line 999
    const/4 v8, 0x0

    .line 1000
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlistId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 1006
    const/4 v7, 0x0

    .line 1008
    .local v7, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v7

    .line 1009
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1043
    .end local v7           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1057
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1063
    :goto_2
    return-object v0

    .line 1037
    .restart local v7       #recentPlayed:[I
    :catch_0
    move-exception v6

    .line 1038
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1041
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v7           #recentPlayed:[I
    :cond_1
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_2
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "play_order LIMIT 0,1"

    move-object v0, p0

    move-object v4, v10

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 1059
    :cond_3
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 1063
    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 480
    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 481
    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    .line 482
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 485
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 486
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 488
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 489
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 490
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 491
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 492
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 493
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 494
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 495
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 496
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 497
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 499
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 500
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 501
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 502
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 503
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 504
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 662
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 663
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 664
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 685
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 580
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 603
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 627
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 550
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 551
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003e

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 552
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 553
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 554
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 555
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 556
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 562
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 563
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 564
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 565
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 566
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 567
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 568
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 569
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 570
    const v3, 0x7f03002d

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 571
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 572
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 573
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 575
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 576
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 577
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 630
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 632
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 658
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 659
    return-void
.end method

.method private joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1067
    if-nez p1, :cond_0

    .line 1068
    const/4 v0, 0x0

    .line 1112
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 1071
    goto :goto_0

    .line 1074
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1075
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1076
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .local v13, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v2, v0

    .line 1082
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1084
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1085
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 1086
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1087
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1088
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1094
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1095
    const/4 p1, 0x0

    .line 1096
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1099
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1101
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1102
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1103
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1104
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1105
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1111
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1112
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private mergeExtraCursorForSinaCustomization(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "c"
    .parameter "cookie"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 784
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v3, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    if-eqz p1, :cond_1

    instance-of v8, p1, Landroid/database/MergeCursor;

    if-nez v8, :cond_1

    .line 787
    iget-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v8, :cond_0

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 789
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v8, -0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    const v8, 0x7f07000a

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-nez v8, :cond_1

    .line 812
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 813
    .local v7, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v8, "-5"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    const v8, 0x7f070119

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    iput v11, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 820
    .end local v7           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-nez v8, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 822
    .local v6, manager:Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_2

    .line 824
    :try_start_0
    const-string v8, "cn.sina.music"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 825
    new-instance v5, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 826
    .local v5, favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v8, "-6"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    const v8, 0x7f0701db

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteListPos:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v5           #favorite:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6           #manager:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    new-instance v4, Lcom/htc/music/util/ArrayListCursor;

    iget-object v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-direct {v4, v8, v3}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 838
    .local v4, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v8, v10, [Landroid/database/Cursor;

    aput-object v4, v8, v11

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-direct {v1, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 841
    .local v1, cc:Landroid/database/Cursor;
    return-object v1

    .line 830
    .end local v1           #cc:Landroid/database/Cursor;
    .end local v4           #extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    .restart local v6       #manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 831
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pauseForOnlineMusic()V
    .locals 1

    .prologue
    .line 988
    sget-boolean v0, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-nez v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 993
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0
.end method

.method private playAllForOnlineFavorite()V
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showOnlineMusicLoadingDialog(Z)V

    .line 856
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getAllOnlineFavoriteInBackground()V

    .line 857
    return-void
.end method

.method private showOnlineMusicLoadingDialog(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 875
    if-eqz p1, :cond_2

    .line 876
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 877
    const v0, 0x204026b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/online/Util;->getProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 878
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 879
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 899
    :cond_1
    :goto_0
    return-void

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineMusicLoadingDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0
.end method

.method private startHandleThread()V
    .locals 3

    .prologue
    .line 953
    sget-boolean v1, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-nez v1, :cond_0

    .line 961
    :goto_0
    return-void

    .line 957
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[PlaylistBrowserActivityGrid]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 958
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 959
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUILooper:Landroid/os/Looper;

    .line 960
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUILooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mNonUIHandler:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$NonUIHandler;

    goto :goto_0
.end method

.method private updateButtonCounter(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1366
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1369
    :cond_0
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    .local v1, text:Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    :goto_1
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1373
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1374
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1370
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    move v2, v3

    .line 1373
    goto :goto_2
.end method


# virtual methods
.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1318
    return-void
.end method

.method public categoryRightAction()Z
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 1311
    .local v0, npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 1312
    const/4 v1, 0x1

    return v1
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 1394
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1395
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 1396
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    .line 1397
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 1398
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1322
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 1327
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 516
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 517
    :cond_0
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 518
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 519
    const v4, 0x7f08004f

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 520
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 521
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 523
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 527
    :goto_0
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 534
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 535
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 536
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 546
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 547
    return-void

    .line 525
    .restart local v1       #Save:Lcom/htc/widget/HtcFooterButton;
    .restart local v2       #savePanel:Lcom/htc/widget/HtcFooter;
    .restart local v3       #savePanelStub:Landroid/view/ViewStub;
    :cond_2
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "c"
    .parameter "cookie"

    .prologue
    .line 777
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mergeExtraCursorForSinaCustomization(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1242
    sparse-switch p1, :sswitch_data_0

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1244
    :sswitch_0
    if-nez p2, :cond_1

    .line 1245
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1247
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-eqz v3, :cond_0

    .line 1248
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 1253
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 1254
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 1255
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1256
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v3, :cond_2

    .line 1258
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1265
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1271
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 1272
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1273
    .local v1, playlist:I
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 1274
    .local v0, list:[I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1278
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v3, :cond_3

    .line 1279
    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1280
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 1281
    .restart local v0       #list:[I
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 1290
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 1294
    .end local v0           #list:[I
    .end local v2           #selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :sswitch_4
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1298
    :pswitch_0
    const/16 v3, 0x24

    invoke-direct {p0, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->doAfterCheckDataFeeSuccess(I)V

    goto :goto_0

    .line 1242
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_3
        0x24 -> :sswitch_4
    .end sparse-switch

    .line 1294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 232
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 234
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    .line 239
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 305
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 308
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 310
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 312
    :cond_0
    if-eqz p1, :cond_7

    .line 313
    const-string v9, "pickermode"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 314
    const-string v9, "AddToPlaylistData"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 320
    :goto_0
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 322
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 324
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 326
    const/4 v5, -0x1

    .line 328
    .local v5, id:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "playlist"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 398
    .end local v5           #id:I
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v3, f:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 403
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 407
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v9, :cond_2

    new-instance v9, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 408
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v9, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 409
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_8

    move v6, v7

    .line 419
    .local v6, requestOverlay:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v9

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v9, :cond_9

    .line 420
    const v9, 0x7f03002e

    invoke-virtual {p0, v9, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 421
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v9, "com.htc.music.recentplayedchanged"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->enableSearch()V

    .line 440
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v9, :cond_5

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 441
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_4

    .line 442
    new-instance v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    :cond_4
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.htc.music.lockscreen_start"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initButtonsPanel()V

    .line 454
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridView()V

    .line 455
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v9, v7, :cond_6

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v7

    if-gtz v7, :cond_6

    .line 456
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    .line 457
    invoke-virtual {p0, v8, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 458
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 466
    :cond_6
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startHandleThread()V

    .line 468
    .end local v3           #f:Landroid/content/IntentFilter;
    .end local v6           #requestOverlay:Z
    :goto_3
    return-void

    .line 316
    :cond_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "pickermode"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 317
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "AddToPlaylistData"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 329
    .restart local v5       #id:I
    :catch_0
    move-exception v1

    .line 330
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 331
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 332
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .line 334
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 336
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 337
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #id:I
    .restart local v3       #f:Landroid/content/IntentFilter;
    :cond_8
    move v6, v8

    .line 417
    goto/16 :goto_1

    .line 426
    .restart local v6       #requestOverlay:Z
    :cond_9
    const v9, 0x7f030030

    invoke-virtual {p0, v9, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 427
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v9, :cond_a

    .line 428
    new-instance v9, Lcom/htc/widget/ActionBarText;

    invoke-direct {v9, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 429
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v9, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 432
    :cond_a
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v9, :cond_3

    .line 433
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v9, v11, :cond_b

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    :cond_b
    move v2, v7

    .line 434
    .local v2, enable:Z
    :goto_4
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v9, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_2

    .end local v2           #enable:Z
    :cond_c
    move v2, v8

    .line 433
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1693
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1694
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1695
    :cond_0
    const/16 v0, 0x1f

    const v1, 0x204014f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1696
    const/16 v0, 0x20

    const v1, 0x2040150

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1720
    :cond_1
    :goto_0
    return v4

    .line 1697
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v0, :cond_4

    .line 1698
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1699
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1701
    const v0, 0x7f070098

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1705
    const/16 v0, 0x22

    const v1, 0x7f070099

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1707
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDeleteAllPlaylistEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1708
    const/16 v0, 0x23

    const v1, 0x7f07009b

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1711
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1713
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1715
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1716
    const v0, 0x204025c

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x208

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 227
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->destroyForOnlineMusic()V

    .line 226
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[PlaylistBrowserActivityGrid]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1669
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1402
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1403
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1404
    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->switchParentItemSelectedStatus(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1405
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange(I)V

    .line 1487
    :cond_1
    :goto_0
    return-void

    .line 1413
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 1414
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1416
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "playlist"

    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1417
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1425
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1429
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v8, :cond_4

    .line 1430
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1431
    .local v5, shortcut:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/playlist"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v6, "playlist"

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1436
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1437
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1438
    const-string v6, "android.intent.extra.shortcut.NAME"

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v8, 0x7f02003b

    invoke-static {p0, v8}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1445
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v2, intent2:Landroid/content/Intent;
    const-string v6, "silder_state"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1447
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 1448
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finishactivity()V

    goto :goto_0

    .line 1454
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent2:Landroid/content/Intent;
    .end local v5           #shortcut:Landroid/content/Intent;
    :cond_4
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v8, v6, :cond_5

    .line 1455
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1456
    .restart local v1       #intent:Landroid/content/Intent;
    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1457
    .local v4, playlistId:I
    const-string v6, "playlist_id"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1459
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto/16 :goto_0

    .line 1462
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #playlistId:I
    :cond_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOnlineFavoriteListPos:I

    if-ne v8, v9, :cond_7

    .line 1463
    sget-boolean v6, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-nez v6, :cond_6

    .line 1464
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1465
    .local v3, manager:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_1

    .line 1467
    :try_start_0
    const-string v6, "cn.sina.music"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1468
    new-instance v6, Landroid/content/Intent;

    const-string v7, "cn.sina.music.action.COLLECTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "[PlaylistBrowserActivityGrid]"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1474
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    :cond_6
    const/16 v6, 0x24

    invoke-static {p0, v6}, Lcom/htc/music/online/Util;->doDataFeeCheck(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 1477
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "com.htc.media/track"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    const-string v8, "playlist"

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string v8, "isrecentplayedplaylist"

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ne v9, v10, :cond_8

    :goto_1
    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    const-string v6, "InnerActivityType"

    const/4 v7, 0x7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1483
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move v6, v7

    .line 1481
    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1683
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1689
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, -0x6

    const v10, 0x7f070058

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1494
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1497
    sget-boolean v5, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-ne v5, v6, :cond_1

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    sget-boolean v5, Lcom/htc/music/online/Util;->TEST_FAVORITE_FEATURE_FLAG:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-ne v5, v6, :cond_2

    .line 1501
    invoke-static {p0}, Lcom/htc/music/online/Util;->hasUserLogin(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1507
    :cond_2
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v5

    if-nez v5, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1511
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_3

    move-object v0, p0

    .line 1513
    :cond_3
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1515
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1517
    .local v3, ids:[I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-gez v5, :cond_4

    .line 1518
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1521
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    const/4 v5, 0x5

    aput v5, v3, v7

    .line 1561
    .restart local v3       #ids:[I
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->hideHtcContextMenu()V

    .line 1562
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 1523
    :cond_4
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1525
    .local v1, dlnaMode:I
    if-nez v1, :cond_5

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1528
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const v5, 0x7f07009a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1536
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .restart local v3       #ids:[I
    goto :goto_1

    .line 1545
    :cond_5
    new-array v4, v9, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const v6, 0x7f07009a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1552
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v9, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_1

    .line 1536
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 1552
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1663
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 13
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1576
    sparse-switch p1, :sswitch_data_0

    .line 1656
    :cond_0
    :goto_0
    return v12

    .line 1578
    :sswitch_0
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    const-wide/16 v10, -0x4

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1580
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    const/4 v9, -0x5

    if-ne v8, v9, :cond_1

    .line 1582
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1583
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v6

    .line 1584
    .local v6, recentTrackId:[I
    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumListByTrackId(Landroid/content/Context;[I)V

    .line 1585
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v6, v8, v9}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1587
    .end local v6           #recentTrackId:[I
    :catch_0
    move-exception v1

    .line 1588
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    const-string v9, "Exception when playing recent played list."

    invoke-static {v8, v9, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1591
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    const/4 v9, -0x6

    if-ne v8, v9, :cond_2

    .line 1592
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->playAllForOnlineFavorite()V

    goto :goto_0

    .line 1595
    :cond_2
    new-instance v8, Lcom/htc/music/NpCategory;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v8, v9}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v5

    .line 1597
    .local v5, npc:Lcom/htc/music/NpCategory;
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    invoke-static {p0, v8, v9, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    .line 1602
    .end local v5           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 1603
    .local v0, addToPlaylistData:[I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1604
    .local v3, intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v3, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1605
    const-string v8, "pickermode"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1607
    invoke-virtual {p0, v3, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1611
    .end local v0           #addToPlaylistData:[I
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_1
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1612
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-interface {v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1614
    :catch_1
    move-exception v1

    .line 1615
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_3
    iput-boolean v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1620
    sget-object v8, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1623
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1624
    const v8, 0x7f070041

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1628
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1629
    .local v2, handler:Landroid/os/Handler;
    new-instance v8, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1649
    .end local v2           #handler:Landroid/os/Handler;
    .end local v7           #uri:Landroid/net/Uri;
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1650
    .local v4, intent2:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v4, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1652
    const-string v8, "playlist"

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const/16 v8, 0x1c

    invoke-virtual {p0, v4, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1576
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xd -> :sswitch_2
        0x1c -> :sswitch_4
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 1144
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 1146
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 1773
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1846
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 1789
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    goto :goto_0

    .line 1792
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1793
    new-instance v6, Lcom/htc/music/NpCategory;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 1797
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->categoryRightAction()Z

    goto :goto_0

    .line 1802
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1803
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1804
    const-string v6, "pickermode"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1805
    const/16 v6, 0x22

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1810
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemSelected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1811
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1815
    :sswitch_5
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemDeselected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1816
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1825
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1826
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, -0x2

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1830
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_7
    iput-boolean v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1833
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1834
    .local v0, deletCount:I
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS : delete item = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0005

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1837
    .local v3, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1838
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1839
    .end local v0           #deletCount:I
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1840
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iput-boolean v11, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    goto/16 :goto_0

    .line 1773
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x16 -> :sswitch_6
        0x1f -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x23 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 473
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onPause()V

    .line 474
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->pauseForOnlineMusic()V

    .line 475
    return-void
.end method

.method protected onPlaybackServiceConnection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 269
    .local v2, isPlaylistNotEmpty:Z
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, id:I
    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    .line 275
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    .line 276
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v3, v6, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 285
    :goto_1
    if-nez v2, :cond_4

    .line 287
    const-string v3, "[PlaylistBrowserActivityGrid]"

    const-string v4, "Send delay finish message"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 279
    :cond_2
    const v3, 0x7f07005f

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 283
    :cond_3
    int-to-long v3, v1

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    move-result v2

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVisible(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1725
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1726
    const/4 v0, 0x0

    .line 1727
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 1728
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1729
    .local v2, playlistCount:I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    .line 1730
    add-int/lit8 v2, v2, -0x1

    .line 1732
    :cond_0
    if-lez v2, :cond_b

    move v0, v3

    .line 1737
    .end local v2           #playlistCount:I
    :cond_1
    :goto_0
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1738
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1739
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1740
    :cond_2
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1741
    if-eqz v1, :cond_3

    .line 1742
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1743
    :cond_3
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1744
    if-eqz v1, :cond_5

    .line 1745
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1746
    :cond_5
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1747
    if-eqz v1, :cond_6

    .line 1748
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1752
    :cond_6
    const/16 v4, 0x23

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1753
    if-eqz v1, :cond_7

    .line 1754
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1755
    :cond_7
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1756
    if-eqz v1, :cond_8

    .line 1757
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1758
    :cond_8
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1759
    if-eqz v1, :cond_9

    .line 1760
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1761
    :cond_9
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1762
    if-eqz v1, :cond_a

    .line 1763
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1765
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 1767
    return v3

    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v2       #playlistCount:I
    :cond_b
    move v0, v4

    .line 1732
    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 509
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedlist"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 510
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 512
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 513
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 3
    .parameter "forceShuffle"

    .prologue
    const/4 v2, 0x1

    .line 1356
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1357
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v2, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 1358
    return v2
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f07006a

    const/high16 v8, 0x208

    const/4 v7, 0x1

    .line 1202
    const/4 v5, 0x0

    .line 1203
    .local v5, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 1205
    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 1207
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->isActivityResumed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1208
    const-string v6, "[PlaylistBrowserActivityGrid]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_1
    :goto_0
    return-void

    .line 1212
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 1213
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 1214
    check-cast v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 1217
    .local v3, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    if-eqz p1, :cond_3

    .line 1218
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 1220
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1221
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1222
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, label:Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1224
    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 1236
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 1230
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1231
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1232
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1233
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 1234
    invoke-interface {v3, v0, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1332
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showEmptyView(I)V

    .line 1333
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 1339
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1352
    :goto_0
    return-void

    .line 1348
    :cond_0
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
