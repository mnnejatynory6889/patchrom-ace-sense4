.class Lcom/htc/music/PluginPropertyListActivity$5;
.super Landroid/widget/BaseAdapter;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$600(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$600(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 296
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 305
    if-nez p2, :cond_0

    .line 306
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 308
    :cond_0
    const v3, 0x7f080025

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    move-object v1, v3

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 309
    .local v1, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$600(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 311
    const-string v2, ""

    .line 313
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$700(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$700(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$600(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mListItemArray is null or length is incorrect!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-object p2

    .line 320
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$700(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    aget v3, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 421
    :cond_3
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 422
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 333
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 334
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    goto :goto_1

    .line 337
    :cond_5
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 338
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 344
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mTrackName:Ljava/lang/String;

    goto :goto_1

    .line 348
    :cond_6
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 349
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 354
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 355
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mArtistName:Ljava/lang/String;

    .line 362
    :cond_7
    :goto_2
    const-string v3, "<unknown>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f07004d

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 357
    :cond_8
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 358
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 367
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 368
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mAlbumName:Ljava/lang/String;

    .line 375
    :cond_9
    :goto_3
    const-string v3, "<unknown>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f07004e

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 370
    :cond_a
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 371
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 381
    :pswitch_5
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 382
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mGenre:Ljava/lang/String;

    .line 389
    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 390
    :cond_c
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f070050

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 384
    :cond_d
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 385
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 395
    :pswitch_6
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 396
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mComposer:Ljava/lang/String;

    .line 403
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    :cond_f
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f07004f

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 398
    :cond_10
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 399
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 409
    :pswitch_7
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 410
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mLocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 412
    :cond_11
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 413
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$5;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getLocation()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 320
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
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method
