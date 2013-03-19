.class public Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[GenreBrowserActivityExpGrid]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final UNKNOWN_GENRE:J = -0x1L


# instance fields
.field mAlbumCols:[Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field private mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mDeleteMessage:Landroid/os/Message;

.field mGenreCols:[Ljava/lang/String;

.field private mIsHVGA:Z

.field private mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

.field private mOrientation:I

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 184
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    .line 548
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$5;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 745
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    .line 1112
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    .line 1245
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method private checkDataset(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 1320
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "@@@@ checkDataset()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    if-nez p1, :cond_0

    .line 1323
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "@@@@ checkDataset() cursor is null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    :goto_0
    return-object v1

    .line 1327
    :cond_0
    const-string v2, "[GenreBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ checkDataset() cursor - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 1329
    .local v0, cur:Landroid/database/Cursor;
    const-string v2, "[GenreBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ checkDataset() cur - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1333
    const/4 v0, 0x0

    .line 1335
    invoke-direct {p0, v1, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method private getGenresAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "genreId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1097
    invoke-direct {p0, p2, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1098
    .local v0, ret:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1099
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "ret == null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_0
    invoke-direct {p0, p2, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1102
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1103
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v5

    aput-object v2, v3, v6

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1106
    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "unknown != null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1109
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_1
    return-object v0
.end method

.method private getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter "genreId"
    .parameter "unknown"

    .prologue
    .line 1128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1129
    .local v6, genresId:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    .local v8, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    if-nez p2, :cond_1

    .line 1132
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :goto_0
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 1143
    const-string v0, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    :goto_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1160
    .local v7, ret:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v7

    .line 1163
    :cond_0
    return-object v7

    .line 1134
    .end local v7           #ret:Landroid/database/Cursor;
    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1153
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getGenresAlbumCusror(I)Landroid/database/Cursor;
    .locals 5
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1054
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1067
    :goto_0
    return-object v3

    .line 1055
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, genresId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, genre:Ljava/lang/String;
    invoke-direct {p0, p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1058
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1059
    :cond_1
    const/4 v0, 0x0

    .line 1060
    goto :goto_0

    .line 1062
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    .line 1066
    .local v3, ret:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1067
    goto :goto_0
.end method

.method private getGenresCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1187
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    const/16 p2, 0x0

    .line 1190
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "name != \'\' AND name NOT LIKE \'(%)\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const/4 v7, 0x0

    .line 1199
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 1201
    .local v13, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1202
    const v1, 0x7f070050

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1203
    .local v16, unknownGenre:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1204
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 1205
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 1206
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1207
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 1208
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    const/4 v13, 0x1

    .line 1210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 1211
    const-string v1, "[GenreBrowserActivityExpGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keywords("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v7, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1199
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownGenre:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1213
    .restart local v9       #col:Ljava/text/Collator;
    .restart local v10       #i:I
    .restart local v13       #searchContainsUnkown:Z
    .restart local v14       #searchWords:[Ljava/lang/String;
    .restart local v16       #unknownGenre:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    .line 1214
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    const-string v1, "name LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1220
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownGenre:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1223
    .local v6, whereclause:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1224
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_6

    .line 1225
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setAsyncQueryStatus(Z)V

    .line 1226
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    move-object v1, v11

    .line 1241
    :goto_4
    return-object v1

    .line 1229
    :cond_6
    sget-object v4, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    const-string v8, "name COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1231
    if-eqz v13, :cond_5

    .line 1232
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1234
    .local v15, unknown:Landroid/database/Cursor;
    if-nez v15, :cond_7

    if-nez v11, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    .line 1236
    :cond_7
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    invoke-direct {v12, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v11           #ret:Landroid/database/Cursor;
    .local v12, ret:Landroid/database/Cursor;
    move-object v11, v12

    .end local v12           #ret:Landroid/database/Cursor;
    .restart local v11       #ret:Landroid/database/Cursor;
    goto :goto_3
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 3
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    .line 748
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 749
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "mCurrentGenreId = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    .line 775
    :cond_0
    :goto_0
    return-object v0

    .line 752
    :cond_1
    const/4 v0, 0x0

    .line 754
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v1, :cond_4

    .line 756
    :cond_2
    if-eqz p1, :cond_3

    .line 757
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenreAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 758
    if-eqz p2, :cond_0

    .line 759
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForGenre(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_4
    if-eqz p1, :cond_5

    .line 767
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 768
    if-eqz p2, :cond_0

    .line 769
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 772
    :cond_5
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private initExpGridView()V
    .locals 11

    .prologue
    const v10, 0x205000c

    const/4 v9, 0x0

    .line 268
    const v6, 0x7f080075

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 270
    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    .line 272
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 273
    .local v2, parentFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, childFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 276
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v1, p0, v6, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 277
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 279
    new-instance v6, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v6, p0, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 280
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v6, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 281
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewUtil()V

    .line 282
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 283
    .local v5, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v7}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 284
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 285
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 286
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 287
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 288
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 289
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 290
    const-string v6, "com.htc.R.drawable.common_popupmenu"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    .line 291
    .local v3, popupmenu:I
    const-string v6, "com.htc.R.drawable.common_popupmenu_arrow"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, popupmenu_arrow:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 293
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v4, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewBackground(II)V

    .line 295
    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x7f03002a

    const v8, 0x7f080069

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 296
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 297
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 298
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->child_view_offsetY:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewOffsetY(I)V

    .line 299
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildIndicatorOffsetY(I)V

    .line 300
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMargin(II)V

    .line 301
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->bottom_padding_child:I

    invoke-virtual {v6, v9, v7, v9, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 302
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x2080001

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 304
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v6, v9, v7, v9, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 305
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 307
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 308
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 309
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 310
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 493
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 494
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 495
    new-instance v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 517
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 375
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 416
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$2;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 445
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 8
    .parameter "parentFolderParam"
    .parameter "childFolderParam"

    .prologue
    const v7, 0x7f03002d

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 313
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 314
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003e

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 315
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 316
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 317
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 318
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 319
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 325
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 326
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003f

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 327
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 328
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 329
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 330
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 331
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 332
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 333
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 334
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 335
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 336
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 338
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 339
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 343
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 344
    .restart local v0       #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020042

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 345
    const v3, 0x7f020041

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 346
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 347
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 348
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 349
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 350
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 356
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 357
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020043

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 359
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 360
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 361
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 362
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 363
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 364
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 365
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 366
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 367
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 368
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 370
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 371
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 372
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 448
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 449
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    .line 489
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 490
    return-void
.end method

.method private mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "cursor"
    .parameter "genreId"
    .parameter "genre"
    .parameter "numTracks"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1034
    if-nez p1, :cond_0

    .line 1048
    .end local p1
    :goto_0
    return-object p1

    .line 1036
    .restart local p1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v0, albumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1038
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1039
    .restart local v2       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1048
    .local v1, albumListCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v3, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v3

    goto :goto_0
.end method

.method private mergeUnknown(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1308
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1309
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p1

    .line 1310
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1311
    const-string v2, "[GenreBrowserActivityExpGrid]"

    const-string v3, "@@@@ mergeUnknown() - not null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 1316
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private startAlbumDetailViewActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    .line 546
    return-void
.end method


# virtual methods
.method protected asyncQueryParentCursor()V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1179
    return-void
.end method

.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 520
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 521
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 522
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 524
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 526
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 529
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 535
    :goto_0
    return-void

    .line 531
    :cond_0
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 532
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 533
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1183
    invoke-direct {p0, v0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "wherea"

    .prologue
    const/4 v4, 0x0

    .line 1251
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v0, " AND is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const/4 v7, 0x0

    .line 1257
    .local v7, ret:Landroid/database/Cursor;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1258
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v0

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1262
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1263
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v9, unknownGenre:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1265
    .local v8, unknow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    .end local v7           #ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mGenreCols:[Ljava/lang/String;

    invoke-direct {v7, v0, v9}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1271
    .end local v8           #unknow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v9           #unknownGenre:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v7       #ret:Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 1272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1273
    const/4 v6, 0x0

    .line 1275
    :cond_1
    return-object v7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1012
    sparse-switch p1, :sswitch_data_0

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1014
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 1015
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 1016
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1017
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1018
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1023
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->finish()V

    goto :goto_0

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 188
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 190
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    .line 195
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 198
    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 199
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    if-eqz v1, :cond_2

    .line 200
    const/4 v0, 0x3

    .line 204
    .local v0, tempNumColumn:I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 205
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_landscape_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 212
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridViewParameters(IILcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    goto :goto_0

    .line 202
    .end local v0           #tempNumColumn:I
    :cond_2
    const/4 v0, 0x4

    .restart local v0       #tempNumColumn:I
    goto :goto_1

    .line 207
    .end local v0           #tempNumColumn:I
    :cond_3
    const/4 v0, 0x2

    .line 208
    .restart local v0       #tempNumColumn:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 209
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$GenreViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    if-eqz p1, :cond_2

    .line 236
    const-string v3, "playlisturi"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 243
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isHVGA(Landroid/util/DisplayMetrics;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mIsHVGA:Z

    .line 246
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setVolumeControlStream(I)V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 255
    const v3, 0x7f03002e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setContentView(I)V

    .line 256
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 258
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCategoryProgressVisible(Z)V

    .line 259
    invoke-direct {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initExpGridView()V

    .line 261
    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->enableSearch()V

    .line 265
    :cond_1
    return-void

    .line 238
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 239
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "playlisturi"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 780
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 781
    .local v0, id:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 782
    return-void
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1342
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1343
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1344
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1345
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1346
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 229
    return-void
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 718
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCusror(I)Landroid/database/Cursor;

    move-result-object v0

    .line 720
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateChildMediaList(Landroid/database/Cursor;)V

    .line 721
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 726
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 571
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 572
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "genreid"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v2, "pickermode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 612
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    const-string v2, "[GenreBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to launch album detail view. albumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_2

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v2, "genreid"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v2, "genre"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 594
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 602
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V

    goto :goto_0

    .line 605
    :cond_4
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 606
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    .line 607
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 608
    .local v1, msgs:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 609
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 730
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 731
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 732
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "@@@@ mDeleteType:TYPE_GENRE"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "@@@@ mDeleteType:TYPE_ALBUM"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1, v2}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 863
    const-string v3, "[GenreBrowserActivityExpGrid]"

    const-string v4, "call onDeletionCompleted()"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    .local v1, genresId:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 867
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg2:I

    aput v4, v0, v3

    .line 871
    .local v0, a:[I
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 872
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v3, v0, v6, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 874
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 616
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 617
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 706
    :goto_0
    return-void

    .line 618
    :cond_0
    const/4 v3, 0x0

    .line 619
    .local v3, headerTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_4

    .line 620
    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    .line 624
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 625
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 626
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 627
    .local v4, ids:[I
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 629
    .local v1, dlnaMode:I
    const/4 v2, 0x1

    .line 630
    .local v2, enableSearch:Z
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_5

    .line 631
    :cond_2
    const/4 v2, 0x0

    .line 637
    :cond_3
    :goto_2
    if-nez v2, :cond_8

    .line 640
    if-nez v1, :cond_7

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v6

    if-nez v6, :cond_7

    .line 643
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 649
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_0

    .line 704
    .restart local v4       #ids:[I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->hideHtcContextMenu()V

    .line 705
    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 622
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #enableSearch:Z
    .end local v4           #ids:[I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 632
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #enableSearch:Z
    .restart local v4       #ids:[I
    .restart local v5       #items:[Ljava/lang/CharSequence;
    :cond_5
    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 634
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 657
    :cond_7
    new-array v5, v8, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 662
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v8, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_1

    .restart local v4       #ids:[I
    goto :goto_3

    .line 671
    :cond_8
    if-nez v1, :cond_9

    invoke-static {}, Lcom/htc/music/online/Util;->serviceInOnlineMode()Z

    move-result v6

    if-nez v6, :cond_9

    .line 674
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 681
    .restart local v5       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x5

    new-array v4, v6, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_2

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 690
    :cond_9
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 696
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_3

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 649
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 662
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 681
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 696
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 710
    const-string v0, "[GenreBrowserActivityExpGrid]"

    const-string v1, "PREPARE_UPDATE_LIST_READY"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 712
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 878
    sparse-switch p1, :sswitch_data_0

    .line 930
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onHtcContextItemSelected(I)Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    .line 880
    :sswitch_0
    new-instance v3, Lcom/htc/music/NpCategory;

    invoke-direct {v3, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 881
    .local v3, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v4, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v2

    .line 882
    .local v2, list:[I
    if-eqz v2, :cond_1

    .line 883
    invoke-static {p0, v2, v7, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_1

    .line 887
    .end local v2           #list:[I
    .end local v3           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 888
    const/16 v5, 0x25a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDialog(I)V

    goto :goto_1

    .line 891
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 892
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 893
    const-string v5, "pickermode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    const-string v5, "AddToPlaylistData"

    const/4 v6, 0x0

    invoke-direct {p0, v7, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 895
    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 899
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v5, :cond_4

    .line 901
    :cond_3
    :try_start_0
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 902
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "[GenreBrowserActivityExpGrid]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click genre item, NumberFormatException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 906
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 907
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "[GenreBrowserActivityExpGrid]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click genre item, RemoteException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 911
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v5, :cond_1

    .line 912
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditions(III)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 914
    :catch_2
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "[GenreBrowserActivityExpGrid]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 916
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "[GenreBrowserActivityExpGrid]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDeleteDialog()V

    goto/16 :goto_1

    .line 925
    :sswitch_4
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v4, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareReadyIRT(I)V
    .locals 2
    .parameter "clickIndex"

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1169
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1170
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1171
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    return-void
.end method

.method public playAllAction(Z)Z
    .locals 24
    .parameter "forceShuffle"

    .prologue
    .line 935
    const/4 v14, 0x0

    .line 936
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v23, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 942
    .local v5, whereclause:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 946
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "name COLLATE NOCASE ASC"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 950
    .local v17, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 952
    :cond_1
    if-eqz v22, :cond_2

    .line 953
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 954
    const/16 v22, 0x0

    .line 956
    :cond_2
    if-eqz v17, :cond_3

    .line 957
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 958
    const/16 v17, 0x0

    .line 960
    :cond_3
    const/4 v2, 0x1

    .line 1006
    :goto_0
    return v2

    .line 962
    :cond_4
    const/4 v14, 0x0

    .line 963
    if-nez v17, :cond_7

    const/16 v16, 0x0

    .line 964
    .local v16, genreCount:I
    :goto_1
    move/from16 v20, v16

    .line 965
    .local v20, len:I
    if-eqz v22, :cond_5

    .line 966
    add-int/lit8 v20, v20, 0x1

    .line 967
    move-object/from16 v14, v22

    .line 970
    :cond_5
    move/from16 v0, v20

    new-array v15, v0, [Landroid/database/Cursor;

    .line 971
    .local v15, cursors:[Landroid/database/Cursor;
    if-eqz v22, :cond_6

    .line 973
    add-int/lit8 v2, v20, -0x1

    aput-object v22, v15, v2

    .line 975
    :cond_6
    if-eqz v17, :cond_9

    .line 976
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 977
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 978
    .local v13, colidx:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 979
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 980
    .local v18, gid:I
    const-string v2, "external"

    move/from16 v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "album COLLATE NOCASE ASC, track"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 984
    .local v12, c:Landroid/database/Cursor;
    aput-object v12, v15, v19

    .line 985
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 978
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 963
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #colidx:I
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genreCount:I
    .end local v18           #gid:I
    .end local v19           #i:I
    .end local v20           #len:I
    :cond_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v16

    goto :goto_1

    .line 987
    .restart local v13       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v16       #genreCount:I
    .restart local v19       #i:I
    .restart local v20       #len:I
    :cond_8
    new-instance v14, Landroid/database/MergeCursor;

    .end local v14           #cursor:Landroid/database/Cursor;
    invoke-direct {v14, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 990
    .end local v13           #colidx:I
    .end local v19           #i:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_9
    if-eqz v14, :cond_a

    .line 991
    const/16 v21, 0x0

    .line 993
    .local v21, npc:Lcom/htc/music/NpCategory;
    new-instance v21, Lcom/htc/music/NpCategory;

    .end local v21           #npc:Lcom/htc/music/NpCategory;
    const/16 v2, 0x11

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 995
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    if-eqz p1, :cond_c

    .line 996
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 999
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1000
    const/4 v14, 0x0

    .line 1002
    .end local v21           #npc:Lcom/htc/music/NpCategory;
    :cond_a
    if-eqz v17, :cond_b

    .line 1003
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1004
    const/16 v17, 0x0

    .line 1006
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 998
    .restart local v21       #npc:Lcom/htc/music/NpCategory;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v14, v1}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_3
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1303
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showEmptyView(I)V

    .line 1304
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1283
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1286
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1299
    :goto_0
    return-void

    .line 1295
    :cond_0
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 787
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 790
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 792
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 793
    const v4, 0x7f070018

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, f:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 799
    :cond_1
    const v4, 0x7f070050

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, headerTitle:Ljava/lang/String;
    :goto_1
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 818
    .end local v3           #headerTitle:Ljava/lang/String;
    .local v1, desc:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_2

    .line 819
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$6;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 856
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 857
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 859
    return-void

    .line 795
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_3
    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_0

    .line 801
    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreName:Ljava/lang/String;

    .restart local v3       #headerTitle:Ljava/lang/String;
    goto :goto_1

    .line 805
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #headerTitle:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 806
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 811
    .restart local v2       #f:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 812
    :cond_6
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_2

    .line 808
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_7
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_3

    .line 814
    :cond_8
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto/16 :goto_2
.end method
