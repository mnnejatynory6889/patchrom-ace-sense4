.class Lcom/htc/music/MusicPluginManager$PluginConnection;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1509
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    monitor-enter v3

    .line 1511
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager;->mIsBinding:Z
    invoke-static {v2, v4}, Lcom/htc/music/MusicPluginManager;->access$902(Lcom/htc/music/MusicPluginManager;Z)Z

    .line 1512
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/htc/music/MusicPluginManager;->access$1002(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginCount:I
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1100(Lcom/htc/music/MusicPluginManager;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1515
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1516
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {p2}, Lcom/htc/music/IMusicPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMusicPluginService;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 1517
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v4

    aget-object v4, v4, v1

    #setter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2, v4}, Lcom/htc/music/MusicPluginManager;->access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-interface {v2, v4}, Lcom/htc/music/IMusicPluginService;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    .line 1520
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getStartActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->startPluginActivity()V

    .line 1523
    :cond_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPlayAtBeginning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1524
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->play()V

    .line 1526
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const-string v4, "com.htc.music.pluginservicebinded"

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager;->access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v5

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/music/MusicPluginManager;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1534
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager;->access$1400(Lcom/htc/music/MusicPluginManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1535
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin(Z)V

    .line 1536
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const/4 v4, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager;->mStopActivePluginWhenBinding:Z
    invoke-static {v2, v4}, Lcom/htc/music/MusicPluginManager;->access$1402(Lcom/htc/music/MusicPluginManager;Z)Z

    .line 1539
    :cond_3
    monitor-exit v3

    .line 1540
    return-void

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1539
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1514
    .restart local v1       #i:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1543
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    monitor-enter p0

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager;->access$1500(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager;->access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1546
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager;->access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1547
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    #getter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager;->access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v0, v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$202(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;

    .line 1548
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$PluginConnection;->this$0:Lcom/htc/music/MusicPluginManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-static {v0, v1}, Lcom/htc/music/MusicPluginManager;->access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 1549
    monitor-exit p0

    .line 1550
    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
