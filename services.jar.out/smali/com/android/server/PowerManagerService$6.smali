.class Lcom/android/server/PowerManagerService$6;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 2020
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2021
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v11, v0, v3

    .line 2022
    .local v11, value:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v12, v0, v3

    .line 2023
    .local v12, why:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v14, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    aput v3, v0, v9

    .line 2025
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)[I

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)[I

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    aput v3, v0, v9

    .line 2023
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->getPolicyLocked()Landroid/view/WindowManagerPolicy;

    move-result-object v10

    .line 2028
    .local v10, policy:Landroid/view/WindowManagerPolicy;
    if-ne v11, v13, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4300(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2029
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$4302(Lcom/android/server/PowerManagerService;Z)Z

    .line 2030
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2031
    const/16 v0, 0xaa5

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v3

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2034
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    if-ne v11, v13, :cond_4

    .line 2036
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOnStart:J

    .line 2038
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 2040
    :try_start_1
    const-string v0, "PowerManagerService"

    const-string v1, "ActivityManagerNative.getDefault().wakingUp();"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2047
    :goto_2
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2048
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastWakeLock="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2051
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2054
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5300()Lcom/android/server/HtcPMSExtension;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/HtcPMSExtension;->writeScreenState(Z)V

    goto/16 :goto_0

    .line 2034
    .end local v9           #i:I
    .end local v10           #policy:Landroid/view/WindowManagerPolicy;
    .end local v11           #value:I
    .end local v12           #why:I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2042
    .restart local v9       #i:I
    .restart local v10       #policy:Landroid/view/WindowManagerPolicy;
    .restart local v11       #value:I
    .restart local v12       #why:I
    :catch_0
    move-exception v8

    .line 2044
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: ActivityManagerNative.getDefault().wakingUp():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2057
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2058
    const/16 v0, 0xaa7

    const/4 v3, 0x2

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2060
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2061
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2063
    :cond_4
    if-nez v11, :cond_6

    .line 2064
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/PowerManagerService;->mScreenOffStart:J

    .line 2066
    invoke-interface {v10, v12}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 2068
    :try_start_4
    const-string v0, "PowerManagerService"

    const-string v1, "ActivityManagerNative.getDefault().goingToSleep();"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->goingToSleep()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2075
    :goto_3
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2076
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2079
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$5300()Lcom/android/server/HtcPMSExtension;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/HtcPMSExtension;->writeScreenState(Z)V

    goto/16 :goto_0

    .line 2070
    :catch_1
    move-exception v8

    .line 2072
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: ActivityManagerNative.getDefault().goingToSleep():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2082
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2083
    const/16 v0, 0xaa7

    const/4 v3, 0x2

    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v6

    iget v6, v6, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2085
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v0, v3, v4}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;II)V

    .line 2086
    iget-object v0, p0, Lcom/android/server/PowerManagerService$6;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2087
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2095
    :cond_6
    return-void
.end method
