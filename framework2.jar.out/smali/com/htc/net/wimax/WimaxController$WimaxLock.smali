.class public Lcom/htc/net/wimax/WimaxController$WimaxLock;
.super Ljava/lang/Object;
.source "WimaxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WimaxLock"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/net/wimax/WimaxController;


# direct methods
.method private constructor <init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 829
    iput-object p1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->this$0:Lcom/htc/net/wimax/WimaxController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 830
    iput-object p2, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mTag:Ljava/lang/String;

    .line 831
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    .line 832
    iput v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCounted:Z

    .line 834
    iput-boolean v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    .line 835
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;Lcom/htc/net/wimax/WimaxController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Lcom/htc/net/wimax/WimaxController$WimaxLock;-><init>(Lcom/htc/net/wimax/WimaxController;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 841
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->this$0:Lcom/htc/net/wimax/WimaxController;

    iget-object v0, v0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/htc/net/wimax/IWimaxController;->acquireWimaxLock(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 844
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    .line 846
    :cond_0
    monitor-exit v1

    .line 847
    return-void

    .line 839
    :cond_1
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 842
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 890
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 893
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->this$0:Lcom/htc/net/wimax/WimaxController;

    iget-object v0, v0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->releaseWimaxLock(Landroid/os/IBinder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 897
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 894
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 869
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 850
    iget-object v1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 851
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 853
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->this$0:Lcom/htc/net/wimax/WimaxController;

    iget-object v0, v0, Lcom/htc/net/wimax/WimaxController;->mService:Lcom/htc/net/wimax/IWimaxController;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/htc/net/wimax/IWimaxController;->releaseWimaxLock(Landroid/os/IBinder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    .line 858
    :cond_0
    iget v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I

    if-gez v0, :cond_2

    .line 859
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WimaxLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 851
    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 861
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 862
    return-void

    .line 854
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "refCounted"

    .prologue
    .line 865
    iput-boolean p1, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCounted:Z

    .line 866
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 876
    iget-object v4, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 877
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string v1, "held; "

    .line 879
    .local v1, s2:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/net/wimax/WimaxController$WimaxLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, s3:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WimaxLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 878
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 882
    .restart local v1       #s2:Ljava/lang/String;
    :cond_1
    const-string v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_1

    .line 885
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
