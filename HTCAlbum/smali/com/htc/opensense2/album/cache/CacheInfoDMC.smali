.class public Lcom/htc/opensense2/album/cache/CacheInfoDMC;
.super Ljava/lang/Object;
.source "CacheInfoDMC.java"


# static fields
.field public static final ACTION_DELETE_DMCTHUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_DMCTHUMBS"

.field public static final ARR_DMCFOLDER:[Ljava/lang/String;

.field public static final DMC720P:Ljava/lang/String;

.field private static EXTERNAL_DMCTHUMBNAIL_COUNT:[J

.field private static PHONE_DMCTHUMBNAIL_COUNT:[J

.field private static REMOVALBE_DMCTHUMBNAIL_COUNT:[J

.field private static USB_DMCTHUMBNAIL_COUNT:[J

.field public static bResetDMCCalculate:Z

.field public static mbInitExternalFolder:Z

.field public static mbInitPhoneFolder:Z

.field public static mbInitRemoveableFolder:Z

.field public static mbInitUsblFolder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_DMCFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->DMC720P:Ljava/lang/String;

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitExternalFolder:Z

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitRemoveableFolder:Z

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitUsblFolder:Z

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitPhoneFolder:Z

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_DMCFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->EXTERNAL_DMCTHUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_DMCFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->REMOVALBE_DMCTHUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_DMCFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->USB_DMCTHUMBNAIL_COUNT:[J

    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_DMCFOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->PHONE_DMCTHUMBNAIL_COUNT:[J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->bResetDMCCalculate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 8

    const/4 v7, 0x1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitExternalFolder:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_0

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitExternalFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v1, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_0
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitRemoveableFolder:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_1

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitRemoveableFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v4, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_1
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitUsblFolder:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_2

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitUsblFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_2
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitPhoneFolder:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_3

    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->mbInitPhoneFolder:Z

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v3, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    :cond_3
    return v7
.end method

.method private static final GetDMCFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v5, -0x1

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    add-int/lit8 v2, v3, -0x2

    if-gez v2, :cond_1

    move v1, v5

    :cond_0
    :goto_0
    return v1

    :cond_1
    aget-object v0, v4, v2

    const/4 v1, 0x0

    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    aget-object v6, p1, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_0
.end method

.method private static final GetDMCThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_2

    if-ge v1, v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    aput-wide v5, p0, v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    aput-wide v5, p0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final GetDMCThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->EXTERNAL_DMCTHUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->REMOVALBE_DMCTHUMBNAIL_COUNT:[J

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->USB_DMCTHUMBNAIL_COUNT:[J

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->PHONE_DMCTHUMBNAIL_COUNT:[J

    goto :goto_0
.end method

.method public static final GetFolderName(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static final GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1e

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final ResetCalculateAll(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->bResetDMCCalculate:Z

    return-void
.end method

.method public static final addDMCFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J
    .locals 6

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCFolderIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    array-length v4, v1

    if-ge v0, v4, :cond_0

    const-wide/16 v2, 0x1

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addDMCFolderCount]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, v1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    aget-wide v2, v1, v0

    goto :goto_0
.end method

.method public static final calculateDMCFolder(Z)Z
    .locals 4

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    sget-boolean v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->bResetDMCCalculate:Z

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->bResetDMCCalculate:Z

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->EXTERNAL_DMCTHUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->REMOVALBE_DMCTHUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->USB_DMCTHUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->PHONE_DMCTHUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetRootPath(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetDMCThumbnailCount([JLjava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->EXTERNAL_DMCTHUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->REMOVALBE_DMCTHUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->USB_DMCTHUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->PHONE_DMCTHUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_DMCTHUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v3
.end method

.method public static final isDMCCache(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    array-length v5, v0

    add-int/lit8 v2, v5, -0x2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    sget-object v5, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ARR_DMCFOLDER:[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_DMCTHUMBS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
