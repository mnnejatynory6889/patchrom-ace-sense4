.class public Lcom/htc/music/util/MemoryCacheBitmap;
.super Lcom/htc/music/util/MemoryCacheBase;
.source "MemoryCacheBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/music/util/MemoryCacheBase",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheBitmap]"


# instance fields
.field protected mCount:I

.field protected mRefCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/htc/music/util/MemoryCacheBase;-><init>()V

    .line 10
    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    .line 14
    iput p1, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    .line 15
    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    .line 16
    return-void
.end method


# virtual methods
.method protected checkCapacity(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 31
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 8
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmap;->checkCapacity(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 44
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 46
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 47
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 51
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 54
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_1
    :try_start_1
    invoke-super {p0}, Lcom/htc/music/util/MemoryCacheBase;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 26
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mCount:I

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 65
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    .line 66
    const-string v0, "[MemoryCacheBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 74
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    .line 75
    const-string v0, "[MemoryCacheBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/htc/music/util/MemoryCacheBitmap;->mRefCount:I

    if-gtz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/htc/music/util/MemoryCacheBitmap;->clear()V

    .line 79
    :cond_0
    return-void
.end method

.method protected releaseItemResource(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 20
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    :cond_0
    return-void
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheBitmap;->releaseItemResource(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/htc/music/util/MemoryCacheBitmap;,"Lcom/htc/music/util/MemoryCacheBitmap<TK;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 37
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/util/MemoryCacheBase;->remove(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
