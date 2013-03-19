.class public Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;
.super Ljava/lang/Object;
.source "MemoryCacheBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KEY:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final CACHETAG:Ljava/lang/String;

.field protected mItems:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TKEY;TT;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mRangeMax:I

.field protected mRangeMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cache"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->CACHETAG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mRangeMin:I

    iput v1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mRangeMax:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method protected checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public lock()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public push(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;TT;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->checkCapacity(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->removeTheLowestPriorityItem()Z

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-le v1, v5, :cond_2

    const-string v5, "Cache"

    const-string v6, "push fail. buffer full"

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "Cache"

    const-string v6, "OutOfCapacity"

    invoke-static {v5, v6, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    :try_start_3
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    :cond_6
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKEY;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected removeTheLowestPriorityItem()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sunny2/frameworks/cache/OutOfCapacityException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public setRangeBoundaries(II)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mRangeMin:I

    iput p2, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mRangeMax:I

    return-void
.end method

.method public unlock()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
