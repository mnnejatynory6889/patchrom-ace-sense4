.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DmsDetailBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaListAdapter"
.end annotation


# instance fields
.field private mBar:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mDefaultServerIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mIcon:Lcom/htc/widget/HtcListItemTileImage;

.field private mName:Lcom/htc/widget/HtcListItem2LineText;

.field private mPlaying:Lcom/htc/widget/HtcListItemImageButton;

.field private mResources:Landroid/content/res/Resources;

.field private mServerIconIndex:I

.field private mServerIndex:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mResources:Landroid/content/res/Resources;

    .line 2170
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mContext:Landroid/content/Context;

    .line 2172
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 2177
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 2181
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2199
    int-to-long v0, p1

    .line 2201
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2205
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2207
    .local v6, size:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    if-gt p1, v6, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2208
    :cond_0
    const/4 v7, 0x0

    .line 2277
    :goto_0
    return-object v7

    .line 2210
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 2212
    .local v0, contentID:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 2214
    if-eqz p2, :cond_2

    const v7, 0x7f080022

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2215
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2217
    :cond_3
    const v7, 0x7f080023

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2218
    .local v1, contentText:Landroid/widget/TextView;
    const v7, 0x7f080022

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    .line 2220
    if-nez p1, :cond_6

    .line 2221
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0700ce

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2222
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingPrev:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v7, p2

    .line 2223
    goto :goto_0

    .line 2221
    :cond_4
    const v7, 0x7f0700cd

    goto :goto_1

    .line 2222
    :cond_5
    const/16 v7, 0x8

    goto :goto_2

    .line 2227
    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f0700cc

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2228
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mLoadingNext:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v7, p2

    .line 2229
    goto/16 :goto_0

    .line 2227
    :cond_7
    const v7, 0x7f0700cb

    goto :goto_3

    .line 2228
    :cond_8
    const/16 v7, 0x8

    goto :goto_4

    .line 2233
    .end local v1           #contentText:Landroid/widget/TextView;
    :cond_9
    if-eqz p2, :cond_a

    const v7, 0x7f080024

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    .line 2234
    :cond_a
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2236
    :cond_b
    const v7, 0x7f080025

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    .line 2237
    const v7, 0x7f080024

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    .line 2238
    const v7, 0x7f080029

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    .line 2239
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2241
    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2242
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2244
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->IsContainer()Z

    move-result v4

    .line 2246
    .local v4, isContainer:Z
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetPosition()I
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;)I

    move-result v7

    invoke-direct {v3, v8, v7, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;ILjava/lang/String;)V

    .line 2247
    .local v3, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 2252
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2253
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const v8, 0x2080089

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2254
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2256
    const-string v7, "[DMS]"

    const-string v8, "getView"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current content = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :cond_c
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v8

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetPosition()I
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2262
    .local v2, image:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_d

    .line 2264
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v7, p2

    .line 2265
    goto/16 :goto_0

    .line 2268
    :cond_d
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2270
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIsScrolling:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 2271
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2272
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "contentID"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v5           #msg:Landroid/os/Message;
    :cond_e
    move-object v7, p2

    .line 2277
    goto/16 :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 2282
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 2283
    .local v2, childCount:I
    if-gtz v2, :cond_1

    .line 2305
    :cond_0
    return-void

    .line 2289
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 2290
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 2291
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2292
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2293
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 2294
    const v7, 0x7f080024

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 2295
    .local v1, child:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 2296
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;

    .line 2297
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;->getPostion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2298
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2299
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2291
    .end local v1           #child:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$itemInfo;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
