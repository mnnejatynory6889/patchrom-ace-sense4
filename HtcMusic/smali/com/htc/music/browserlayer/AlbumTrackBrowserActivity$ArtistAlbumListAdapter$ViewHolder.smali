.class public Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

.field listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

.field listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

.field listItemOptions:Lcom/htc/widget/HtcRimImageButton;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->this$1:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
