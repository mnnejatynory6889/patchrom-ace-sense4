.class Lcom/htc/music/carmode/CarNowPlayingActivity$18;
.super Landroid/os/Handler;
.source "CarNowPlayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarNowPlayingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarNowPlayingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 1440
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1442
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->isShown()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1446
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->isShown()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1450
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;

    .line 1451
    .local v23, trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTrackName:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mTrackName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    :goto_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .local v21, secoondaryText:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1463
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mAlbumName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1471
    const-string v24, " - "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mArtistName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mAlbumArtistName:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1486
    .local v18, queuePos:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueuePos:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1487
    const-string v24, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    move-object/from16 v0, v23

    iget v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;->mQueueSize:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mQueueSize:I
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3700(Lcom/htc/music/carmode/CarNowPlayingActivity;)I

    move-result v24

    if-lez v24, :cond_7

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    .end local v18           #queuePos:Ljava/lang/StringBuilder;
    .end local v21           #secoondaryText:Ljava/lang/StringBuilder;
    :cond_4
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "track is  null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1465
    .restart local v21       #secoondaryText:Ljava/lang/StringBuilder;
    :cond_5
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "album name is  null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1474
    :cond_6
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "artist name is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1493
    .restart local v18       #queuePos:Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mTitle:Lcom/htc/widget/ActionBarText;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3800(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/widget/ActionBarText;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto/16 :goto_0

    .line 1499
    .end local v18           #queuePos:Ljava/lang/StringBuilder;
    .end local v21           #secoondaryText:Ljava/lang/StringBuilder;
    .end local v23           #trackInfo:Lcom/htc/music/carmode/CarNowPlayingActivity$TrackInfo;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "is_playing"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1500
    .local v12, isPlaying:Z
    const-string v24, "[CarNowPlayingActivity]"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isPlaying = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setPlayPauseButtonImage(Z)V
    invoke-static {v0, v12}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3900(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)V

    goto/16 :goto_0

    .line 1506
    .end local v12           #isPlaying:Z
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "shuffle_mode"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1507
    .local v22, shuffleMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setShuffleButtonImage(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4000(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto/16 :goto_0

    .line 1512
    .end local v22           #shuffleMode:I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "repeat_mode"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1513
    .local v20, repeatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->setRepeatButtonImage(I)V
    invoke-static {v0, v1}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4100(Lcom/htc/music/carmode/CarNowPlayingActivity;I)V

    goto/16 :goto_0

    .line 1518
    .end local v20           #repeatMode:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshTrackTime()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2900(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1522
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v24

    if-nez v24, :cond_8

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, ""

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v25

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4202(Lcom/htc/music/carmode/CarNowPlayingActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1526
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/Toast;->setText(I)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mToast:Landroid/widget/Toast;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1531
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->animationRefresh()V
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$2100(Lcom/htc/music/carmode/CarNowPlayingActivity;)V

    goto/16 :goto_0

    .line 1535
    :pswitch_7
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "reveice REFRESH_GLIDER + "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "album_queue"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1537
    .local v4, albumQueue:[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "album_queue_pos"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1538
    .local v5, albumQueuePos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->refreshGlider([II)V
    invoke-static {v0, v4, v5}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4300(Lcom/htc/music/carmode/CarNowPlayingActivity;[II)V

    .line 1539
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "reveice REFRESH_GLIDER - "

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    .end local v4           #albumQueue:[I
    .end local v5           #albumQueuePos:I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "album_queue_pos"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1545
    .local v16, pos:I
    if-nez v16, :cond_a

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    if-eqz v24, :cond_9

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1550
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x12

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1549
    :cond_9
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_START_NEXT_ANIMATION mPresetnation is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1554
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    if-eqz v24, :cond_b

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0

    .line 1558
    :cond_b
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_START_NEXT_ANIMATION mPresetnation is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1565
    .end local v16           #pos:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "album_queue_size"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1566
    .local v13, len:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "album_queue_pos"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1567
    .restart local v16       #pos:I
    add-int/lit8 v24, v13, -0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    if-eqz v24, :cond_c

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    add-int/lit8 v25, v13, -0x1

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setSelection(IZ)V

    .line 1572
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x12

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1571
    :cond_c
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_START_PREV_ANIMATION mPresetnation is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1576
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    if-eqz v24, :cond_e

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollTo(I)V

    goto/16 :goto_0

    .line 1579
    :cond_e
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_START_PREV_ANIMATION mPresetnation is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1585
    .end local v13           #len:I
    .end local v16           #pos:I
    :pswitch_a
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_DO_STATE_CHANGE_UI"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 1587
    .local v7, data:Landroid/os/Bundle;
    const-string v24, "animation_state"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1588
    .local v6, animationState:Z
    const-string v24, "glider_state"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1589
    .local v8, gliderState:I
    const-string v24, "album_queue_pos"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1590
    .local v19, queuePosition:I
    if-nez v6, :cond_f

    const/16 v24, 0x12

    move/from16 v0, v24

    if-ne v8, v0, :cond_f

    .line 1591
    const/16 v17, 0x0

    .line 1592
    .local v17, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    if-eqz v24, :cond_11

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mPresentation:Lcom/htc/sunny2/widget/presentation/SPresentation;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$1600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/sunny2/widget/presentation/SPresentation;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSelection()I

    move-result v17

    .line 1596
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_f

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    .line 1600
    .local v15, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const-wide/16 v25, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v15, v1, v2}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1607
    .end local v15           #message:Landroid/os/Message;
    .end local v17           #position:I
    :cond_f
    const/16 v24, 0x3

    move/from16 v0, v24

    if-eq v0, v8, :cond_10

    const/16 v24, 0x9

    move/from16 v0, v24

    if-eq v0, v8, :cond_10

    const/16 v24, 0xb

    move/from16 v0, v24

    if-eq v0, v8, :cond_10

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v0, v8, :cond_12

    .line 1611
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4402(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mNonUiHandler:Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$200(Lcom/htc/music/carmode/CarNowPlayingActivity;)Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1595
    .restart local v17       #position:I
    :cond_11
    const-string v24, "[CarNowPlayingActivity]"

    const-string v25, "UI_DO_STATE_CHANGE_UI mPresentation is null"

    invoke-static/range {v24 .. v25}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1614
    .end local v17           #position:I
    :cond_12
    const/16 v24, 0x12

    move/from16 v0, v24

    if-ne v0, v8, :cond_0

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    #setter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mEnalbeAutoPlay:Z
    invoke-static/range {v24 .. v25}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4402(Lcom/htc/music/carmode/CarNowPlayingActivity;Z)Z

    goto/16 :goto_0

    .line 1627
    .end local v6           #animationState:Z
    .end local v7           #data:Landroid/os/Bundle;
    .end local v8           #gliderState:I
    .end local v19           #queuePosition:I
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/view/MotionEvent;

    .line 1628
    .local v14, me:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1635
    .end local v14           #me:Landroid/view/MotionEvent;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #calls: Lcom/htc/music/carmode/CarNowPlayingActivity;->checkCurrentStorateState()Z
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4500(Lcom/htc/music/carmode/CarNowPlayingActivity;)Z

    move-result v11

    .line 1636
    .local v11, isMounted:Z
    if-eqz v11, :cond_13

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    const v25, 0x7f07003e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1640
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mGlanceView:Landroid/view/ViewGroup;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$700(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mErrorText:Landroid/widget/TextView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$3400(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/TextView;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1646
    .end local v11           #isMounted:Z
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "is_beats_on"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1647
    .local v9, isBeatsOn:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "is_headset_plugged"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1648
    .local v10, isHeadSetPlugged:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "is_playing"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1649
    .restart local v12       #isPlaying:Z
    if-eqz v12, :cond_15

    if-eqz v10, :cond_15

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1651
    if-eqz v9, :cond_14

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v24

    const v25, 0x7f02000d

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1654
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v24

    const v25, 0x7f02000b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1657
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarNowPlayingActivity$18;->this$0:Lcom/htc/music/carmode/CarNowPlayingActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/music/carmode/CarNowPlayingActivity;->mBeatsIndicator:Landroid/widget/ImageView;
    invoke-static/range {v24 .. v24}, Lcom/htc/music/carmode/CarNowPlayingActivity;->access$4600(Lcom/htc/music/carmode/CarNowPlayingActivity;)Landroid/widget/ImageView;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1440
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
