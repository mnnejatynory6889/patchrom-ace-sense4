.class Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;
.super Lcom/htc/album/AlbumMain/AdapterLandingPage;
.source "AddShortCutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/AddShortCutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v9, p0, Lcom/htc/album/AlbumMain/AddShortCutActivity$ShortcutAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030023

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v9, 0x7f09004d

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    const v9, 0x7f09002c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iget-object v9, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    invoke-virtual {v8}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v6

    instance-of v9, v6, Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v9, :cond_1

    move-object v7, v6

    check-cast v7, Lcom/htc/opensense/plugin/TabPluginRemote;

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_5

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    :cond_3
    :goto_0
    invoke-virtual {v6}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    return-object p2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v6}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v4, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_1
.end method
