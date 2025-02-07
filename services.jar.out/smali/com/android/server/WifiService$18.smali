.class Lcom/android/server/WifiService$18;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2479
    iput-object p1, p0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2482
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2484
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_idle_ms"

    const-wide/32 v19, 0xdbba0

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 2487
    .local v5, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "stay_on_while_plugged_in"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 2490
    .local v11, stayAwakeConditions:I
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->actionScreenOn()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)V

    .line 2493
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessage(I)Z

    .line 2496
    const-string v17, "WifiService"

    const-string v18, "[C+W] mReceiver send MESSAGE_CHECK_CW_STATUS"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x1388

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x2710

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    const-wide/16 v19, 0x3a98

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2636
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->actionScreenOff()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$4900(Lcom/android/server/WifiService;)V

    .line 2506
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xd8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;

    move-result-object v17

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService$AsyncServiceHandler;->removeMessages(I)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;Z)Z

    .line 2509
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[C+W] screen off with mCWRegisteredWhenScreenOff = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2512
    :cond_2
    const-string v17, "android.net.wifi.UNREGISTER_RECEIVER"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$5000(Lcom/android/server/WifiService;)Landroid/content/BroadcastReceiver;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5102(Lcom/android/server/WifiService;Z)Z

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #calls: Lcom/android/server/WifiService;->persistWifiState(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 2517
    :cond_3
    const-string v17, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5200(Lcom/android/server/WifiService;Z)V

    goto/16 :goto_0

    .line 2520
    :cond_4
    const-string v17, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2521
    const-string v17, "WifiService"

    const-string v18, "[C+W] got ACTION_CW_EXPIRED_REREGISTER"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregisterExpire()V

    goto/16 :goto_0

    .line 2524
    :cond_5
    const-string v17, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2525
    const-string v17, "WifiService"

    const-string v18, "Got ACTION_UPDATE_WIFI_STATE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2528
    :cond_6
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2536
    const-string v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2538
    .local v9, pluggedType:I
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$5300(Lcom/android/server/WifiService;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    #calls: Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z
    invoke-static {v0, v11, v1}, Lcom/android/server/WifiService;->access$5400(Lcom/android/server/WifiService;II)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z
    invoke-static {v0, v11, v9}, Lcom/android/server/WifiService;->access$5400(Lcom/android/server/WifiService;II)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    add-long v14, v17, v5

    .line 2544
    .local v14, triggerTime:J
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5600(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$5500(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2548
    .end local v14           #triggerTime:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v9}, Lcom/android/server/WifiService;->access$5302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2550
    .end local v9           #pluggedType:I
    :cond_8
    const-string v17, "android.net.hotspot.ASSOCLIST"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2552
    const-string v17, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2553
    const-string v17, "WifiService"

    const-string v18, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    goto/16 :goto_0

    .line 2556
    :cond_9
    const-string v17, "android.net.hotspot.connecitonrequest"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2557
    const-string v17, "WifiService"

    const-string v18, "Got HOTSPOT_CONNECTION_REQUEST"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    .line 2560
    const-string v17, "hotspot_block_mac"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2561
    .local v8, mac:Ljava/lang/String;
    const-string v17, "hotspot_lastest_time_of_request"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 2562
    .local v12, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v12, v13}, Landroid/net/wifi/WifiStateMachine;->updateConnectionList(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2565
    .end local v8           #mac:Ljava/lang/String;
    .end local v12           #time:J
    :cond_a
    const-string v17, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2566
    const-string v17, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2568
    .local v10, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 2569
    .end local v10           #state:I
    :cond_b
    const-string v17, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2570
    const-string v17, "WifiService"

    const-string v18, "Got WIFI_AP_IDLE"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v17

    if-nez v17, :cond_0

    .line 2573
    const-string v17, "WifiService"

    const-string v18, "Got WIFI_AP_IDLE WIFI_AP_STATE_ENABLED and getWifiApClients 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2581
    const/16 v16, 0x0

    .line 2583
    .local v16, wifiSavedState:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_saved_state"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 2587
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "wifi_saved_state"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2590
    const-string v17, "WifiService"

    const-string v18, "Restore wifi when hotspot is off"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2615
    .end local v16           #wifiSavedState:I
    :cond_c
    const-string v17, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const-string v18, "phoneinECMState"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5702(Lcom/android/server/WifiService;Z)Z

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2618
    :cond_d
    const-string v17, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    const-string v18, "EMERGENCY_AND_CALLBACK_STATUS"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5802(Lcom/android/server/WifiService;Z)Z

    .line 2620
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HTC_EMERGENCY_MODE_CHANGED:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$5800(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Previous:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$5900(Lcom/android/server/WifiService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5800(Lcom/android/server/WifiService;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$5900(Lcom/android/server/WifiService;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 2622
    const-string v17, "WifiService"

    const-string v18, "Don\'t have emergency call"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mEmergencyModeChanged:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$5800(Lcom/android/server/WifiService;)Z

    move-result v18

    #setter for: Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/WifiService;->access$5902(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 2624
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)V

    goto :goto_2

    .line 2627
    :cond_f
    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2628
    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 2631
    .local v7, info:Landroid/net/NetworkInfo;
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WIFI"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2632
    const-string v17, "WifiService"

    const-string v18, "forceUpdateRSSI when title bar UI already can get RSSI change intent"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$18;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static/range {v17 .. v17}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiStateMachine;->forceUpdateRSSI()V

    goto/16 :goto_0

    .line 2585
    .end local v7           #info:Landroid/net/NetworkInfo;
    .restart local v16       #wifiSavedState:I
    :catch_0
    move-exception v17

    goto/16 :goto_1
.end method
