.class Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "GenreBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GenreListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mGenreIdx:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownGenre:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/GenreBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    .line 966
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 926
    iput-object v8, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraint:Ljava/lang/String;

    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraintIsValid:Z

    .line 1083
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v8}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;Lcom/htc/music/browserlayer/GenreBrowserActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 968
    iput-object p2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    .line 969
    new-instance v0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 973
    const v0, 0x7f070050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mUnknownGenre:Ljava/lang/String;

    .line 975
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 979
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020058

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 985
    .local v6, b:Landroid/graphics/Bitmap;
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 986
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mResources:Landroid/content/res/Resources;

    .line 988
    if-eqz p4, :cond_0

    .line 989
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 990
    :cond_0
    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 993
    if-eqz p1, :cond_0

    .line 994
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mGenreIdx:I

    .line 996
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mGenreIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;

    .line 1026
    .local v4, vh:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;
    iget v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mGenreIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, name:Ljava/lang/String;
    move-object v0, v2

    .line 1028
    .local v0, displayname:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, "<unknown>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 1029
    .local v3, unknown:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mUnknownGenre:Ljava/lang/String;

    .line 1032
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1033
    iget-object v5, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    iget-object v6, v6, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v0, v6}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$900(Lcom/htc/music/browserlayer/GenreBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1035
    .local v1, markedString:Ljava/lang/CharSequence;
    iget-object v5, v4, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1039
    .end local v1           #markedString:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1028
    .end local v3           #unknown:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1037
    .restart local v3       #unknown:Z
    :cond_3
    iget-object v5, v4, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1046
    :cond_0
    if-eqz p1, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$1002(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1050
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->updateOptionsMenu()V

    .line 1051
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1052
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1054
    :cond_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1076
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1014
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1015
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)V

    .line 1016
    .local v1, vh:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;
    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    .line 1017
    iget-object v2, v1, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1018
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1019
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1066
    :goto_0
    return-object v0

    .line 1063
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivity;->getGenreCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$500(Lcom/htc/music/browserlayer/GenreBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1064
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraint:Ljava/lang/String;

    .line 1065
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    .line 1006
    return-void
.end method
