.class Lcom/htc/music/PropertyListActivity$5;
.super Landroid/widget/BaseAdapter;
.source "PropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, loc:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 742
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #calls: Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/htc/music/PropertyListActivity;->access$1200(Lcom/htc/music/PropertyListActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 744
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 745
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 746
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    :cond_1
    if-eqz v0, :cond_2

    .line 749
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 753
    .end local v0           #cur:Landroid/database/Cursor;
    :cond_2
    return-object v1

    .line 738
    :cond_3
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 479
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2}, Lcom/htc/music/PropertyListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 482
    const-string v0, "MM-dd-yyyy"

    .line 483
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 484
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;
    .locals 11
    .parameter "drmCursor"
    .parameter "drmConstraint"

    .prologue
    .line 488
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 489
    :cond_0
    const/4 v5, 0x0

    .line 521
    :cond_1
    :goto_0
    return-object v5

    .line 491
    :cond_2
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v6

    .line 492
    .local v6, nCount:I
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v1

    .line 493
    .local v1, dateStart:Ljava/util/Date;
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v0

    .line 494
    .local v0, dateEnd:Ljava/util/Date;
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v2

    .line 496
    .local v2, lInterval:J
    const-string v5, ""

    .line 497
    .local v5, msg:Ljava/lang/String;
    if-ltz v6, :cond_4

    .line 498
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 500
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f07008b

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_6

    .line 503
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 504
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    :cond_5
    const-wide/32 v7, 0xea60

    div-long v7, v2, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, mins:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v8}, Lcom/htc/music/PropertyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700c3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    goto/16 :goto_0

    .line 510
    .end local v4           #mins:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_8

    .line 511
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f07008c

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity$5;->getDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 515
    :cond_8
    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f07008d

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity$5;->getDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 469
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 525
    if-nez p2, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2}, Lcom/htc/music/PropertyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 529
    :cond_0
    const v2, 0x7f080025

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object v14, v2

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 530
    .local v14, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 532
    const-string v17, ""

    .line 534
    .local v17, s:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 729
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextSingleLine(Z)V

    .line 730
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 731
    return-object p2

    .line 538
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v16, 0x0

    .line 539
    .local v16, playingAudioId:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v19, 0x0

    .line 541
    .local v19, showingAudioId:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "duration"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 544
    .local v12, duration:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    div-int/lit16 v3, v12, 0x3e8

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 545
    goto :goto_0

    .line 538
    .end local v12           #duration:I
    .end local v16           #playingAudioId:I
    .end local v19           #showingAudioId:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v16

    goto :goto_1

    .line 539
    .restart local v16       #playingAudioId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    goto :goto_2

    .line 548
    .restart local v19       #showingAudioId:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v6

    const-wide/16 v22, 0x3e8

    div-long v6, v6, v22

    invoke-static {v2, v6, v7}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 554
    .end local v16           #playingAudioId:I
    .end local v19           #showingAudioId:I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/PropertyListActivity$5;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 555
    if-eqz v17, :cond_5

    .line 556
    const-string v2, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 557
    .local v15, pathSeg:[Ljava/lang/String;
    array-length v2, v15

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v15, v2

    .line 558
    goto/16 :goto_0

    .line 559
    .end local v15           #pathSeg:[Ljava/lang/String;
    :cond_5
    const-string v17, ""

    .line 560
    goto/16 :goto_0

    .line 562
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "title"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 566
    :cond_6
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 567
    :cond_7
    const-string v17, ""

    goto/16 :goto_0

    .line 571
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "artist"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 574
    :cond_8
    const-string v2, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 579
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "album"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 582
    :cond_9
    const-string v2, "<unknown>"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07004e

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 587
    :pswitch_5
    const/4 v8, -0x1

    .line 588
    .local v8, audioId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$400(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$400(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 592
    :cond_a
    :goto_3
    if-ltz v8, :cond_b

    .line 593
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    .line 598
    .local v4, CursorCols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 604
    .local v10, cur:Landroid/database/Cursor;
    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 605
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 606
    const-string v2, "name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 610
    :goto_4
    if-eqz v10, :cond_b

    .line 611
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 615
    .end local v4           #CursorCols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v10           #cur:Landroid/database/Cursor;
    :cond_b
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 616
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 590
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v8

    goto :goto_3

    .line 609
    .restart local v4       #CursorCols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v10       #cur:Landroid/database/Cursor;
    :cond_e
    const/16 v17, 0x0

    goto :goto_4

    .line 620
    .end local v4           #CursorCols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #audioId:I
    .end local v10           #cur:Landroid/database/Cursor;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "composer"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 623
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 624
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07004f

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 626
    :cond_10
    const-string v17, ""

    .line 627
    goto/16 :goto_0

    .line 637
    :pswitch_7
    const-wide/16 v20, 0x0

    .line 638
    .local v20, trackNum:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "track"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 641
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_12

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 643
    :cond_12
    const-wide/16 v2, 0x3e8

    cmp-long v2, v20, v2

    if-ltz v2, :cond_13

    .line 644
    const-wide/16 v2, 0x3e8

    div-long v20, v20, v2

    .line 645
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 647
    :cond_13
    const-string v17, "1"

    .line 648
    goto/16 :goto_0

    .line 652
    .end local v20           #trackNum:J
    :pswitch_8
    const-wide/16 v20, 0x0

    .line 653
    .restart local v20       #trackNum:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "track"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 656
    :cond_14
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_15

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 658
    :cond_15
    const-wide/16 v2, 0x3e8

    cmp-long v2, v20, v2

    if-ltz v2, :cond_16

    .line 659
    const-wide/16 v2, 0x3e8

    rem-long v20, v20, v2

    .line 660
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 662
    :cond_16
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 664
    goto/16 :goto_0

    .line 668
    .end local v20           #trackNum:J
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$500(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "year"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 671
    :cond_17
    if-eqz v17, :cond_18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 672
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 677
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/PropertyListActivity$5;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2}, Lcom/htc/music/PropertyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 682
    .local v9, config:Landroid/content/res/Configuration;
    iget-object v2, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 686
    .local v18, sdcard:Ljava/lang/String;
    const-string v2, "/\u5b58\u50a8\u5361"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 688
    goto/16 :goto_0

    .line 694
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v18           #sdcard:Ljava/lang/String;
    :pswitch_b
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->isWMdrm:Z
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$900(Lcom/htc/music/PropertyListActivity;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070093

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 699
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "delivery_type"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 702
    .local v11, deliveryType:I
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_0

    .line 704
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 706
    goto/16 :goto_0

    .line 709
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1100(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070092

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 712
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$1100(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/PropertyListActivity$5;->getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v17

    .line 713
    goto/16 :goto_0

    .line 715
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1100(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$1100(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/PropertyListActivity$5;->getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 718
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$5;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070094

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 719
    goto/16 :goto_0

    .line 726
    .end local v11           #deliveryType:I
    :catch_0
    move-exception v13

    .line 727
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 534
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
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 702
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method
