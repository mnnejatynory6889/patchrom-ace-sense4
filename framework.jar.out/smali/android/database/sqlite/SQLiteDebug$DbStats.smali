.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public cache:Ljava/lang/String;

.field public dbName:Ljava/lang/String;

.field public dbSize:J

.field public lookaside:I

.field public pageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIIII)V
    .locals 4
    .parameter "dbName"
    .parameter "pageCount"
    .parameter "pageSize"
    .parameter "lookaside"
    .parameter "hits"
    .parameter "misses"
    .parameter "cachesize"

    .prologue
    const-wide/16 v2, 0x400

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 170
    div-long v0, p4, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 171
    mul-long v0, p2, p4

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    .line 172
    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    .line 174
    return-void
.end method
