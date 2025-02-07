.class Lcom/android/server/UiModeManagerService$8;
.super Landroid/os/Handler;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDidFirstInit:Z

.field mLastNetworkRegisterTime:J

.field mNetworkListenerEnabled:Z

.field mPassiveListenerEnabled:Z

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1323
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    return-void
.end method

.method private retrieveLocation()V
    .locals 13

    .prologue
    .line 1423
    const/4 v4, 0x0

    .line 1424
    .local v4, location:Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v6

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1426
    .local v5, providers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1427
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 1430
    .local v1, lastKnownLocation:Landroid/location/Location;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1432
    :cond_1
    move-object v4, v1

    goto :goto_0

    .line 1438
    .end local v1           #lastKnownLocation:Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    .line 1439
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1440
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1441
    const-wide v7, 0x3f71111111111111L

    iget-wide v9, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v11, v6

    sub-long/2addr v9, v11

    long-to-double v9, v9

    mul-double v2, v7, v9

    .line 1443
    .local v2, lngOffset:D
    new-instance v4, Landroid/location/Location;

    .end local v4           #location:Landroid/location/Location;
    const-string v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1444
    .restart local v4       #location:Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1445
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 1446
    const v6, 0x48cb9d00

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 1447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 1449
    .end local v0           #currentTime:Landroid/text/format/Time;
    .end local v2           #lngOffset:D
    :cond_3
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v7, v6, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1450
    :try_start_0
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #setter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v6, v4}, Lcom/android/server/UiModeManagerService;->access$1402(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;

    .line 1451
    monitor-exit v7

    .line 1452
    return-void

    .line 1441
    .restart local v0       #currentTime:Landroid/text/format/Time;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1451
    .end local v0           #currentTime:Landroid/text/format/Time;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 1327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1329
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 1333
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1335
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1338
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_0

    .line 1343
    iget-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    .line 1353
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1361
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 1368
    .local v10, networkLocationEnabled:Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    if-eqz v10, :cond_4

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    .line 1371
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1374
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mDidFirstInit:Z

    if-nez v0, :cond_4

    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mDidFirstInit:Z

    .line 1376
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1377
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$8;->retrieveLocation()V

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1380
    :try_start_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 1383
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1385
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1392
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    .line 1399
    .local v12, passiveLocationEnabled:Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_5

    if-eqz v12, :cond_5

    .line 1400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    .line 1401
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const v4, 0x469c4000

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1404
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_0

    .line 1405
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LAST_UPDATE_INTERVAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1406
    .local v8, interval:J
    long-to-double v0, v8

    const-wide/high16 v2, 0x3ff8

    mul-double/2addr v0, v2

    double-to-long v8, v0

    .line 1407
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    .line 1408
    const-wide/16 v8, 0x1388

    .line 1412
    :cond_7
    :goto_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1413
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "LAST_UPDATE_INTERVAL"

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1414
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1415
    .local v11, newMsg:Landroid/os/Message;
    invoke-virtual {v11, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$1100(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1363
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #interval:J
    .end local v10           #networkLocationEnabled:Z
    .end local v11           #newMsg:Landroid/os/Message;
    .end local v12           #passiveLocationEnabled:Z
    :catch_0
    move-exception v7

    .line 1366
    .local v7, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10       #networkLocationEnabled:Z
    goto/16 :goto_1

    .line 1385
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1394
    :catch_1
    move-exception v7

    .line 1397
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .restart local v12       #passiveLocationEnabled:Z
    goto :goto_2

    .line 1409
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #interval:J
    :cond_8
    const-wide/32 v0, 0xdbba0

    cmp-long v0, v8, v0

    if-lez v0, :cond_7

    .line 1410
    const-wide/32 v8, 0xdbba0

    goto :goto_3

    .line 1327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
