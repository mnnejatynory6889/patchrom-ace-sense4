.class Lcom/htc/album/modules/collection/Collection$QueueComparator;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/collection/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/album/modules/collection/SimpleImage;",
        ">;"
    }
.end annotation


# instance fields
.field showLatest:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection$QueueComparator;->showLatest:Z

    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection$QueueComparator;->showLatest:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/album/modules/collection/SimpleImage;Lcom/htc/album/modules/collection/SimpleImage;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/htc/album/modules/collection/SimpleImage;->getDateModified()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/htc/album/modules/collection/SimpleImage;->getDateModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection$QueueComparator;->showLatest:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/album/modules/collection/SimpleImage;->getDateModified()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/htc/album/modules/collection/SimpleImage;->getDateModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection$QueueComparator;->showLatest:Z

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/album/modules/collection/SimpleImage;

    check-cast p2, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {p0, p1, p2}, Lcom/htc/album/modules/collection/Collection$QueueComparator;->compare(Lcom/htc/album/modules/collection/SimpleImage;Lcom/htc/album/modules/collection/SimpleImage;)I

    move-result v0

    return v0
.end method
