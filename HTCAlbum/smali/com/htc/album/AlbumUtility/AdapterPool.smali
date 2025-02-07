.class public Lcom/htc/album/AlbumUtility/AdapterPool;
.super Ljava/lang/Object;
.source "AdapterPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/AdapterPool$Item;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = null

.field private static final TIMEOUT:I = 0x7530

.field private static gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/album/AlbumUtility/AdapterPool$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v0, Lcom/htc/album/AlbumUtility/AdapterPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/AdapterPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static popAdapter(Ljava/lang/String;)Landroid/widget/BaseAdapter;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object v2, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/AdapterPool;->removeTimeoutAdapter()V

    const-string v1, "Skyer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skyer popAdapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;->mAdapter:Landroid/widget/BaseAdapter;

    goto :goto_0
.end method

.method public static pushAdapter(Ljava/lang/String;Landroid/widget/BaseAdapter;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    new-instance v0, Lcom/htc/album/AlbumUtility/AdapterPool$Item;

    invoke-direct {v0, p1}, Lcom/htc/album/AlbumUtility/AdapterPool$Item;-><init>(Landroid/widget/BaseAdapter;)V

    sget-object v1, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/htc/album/AlbumUtility/AdapterPool;->removeTimeoutAdapter()V

    const-string v1, "Skyer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skyer pushAdapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeTimeoutAdapter()V
    .locals 13

    sget-object v7, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v0, 0x0

    sget-object v8, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v7, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/AlbumUtility/AdapterPool$Item;

    if-eqz v2, :cond_2

    iget-wide v9, v2, Lcom/htc/album/AlbumUtility/AdapterPool$Item;->mTicks:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x7530

    cmp-long v7, v9, v11

    if-lez v7, :cond_2

    sget-object v7, Lcom/htc/album/AlbumUtility/AdapterPool;->gAdapterPool:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    sget-object v7, Lcom/htc/album/AlbumUtility/AdapterPool;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " timeout adapters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
