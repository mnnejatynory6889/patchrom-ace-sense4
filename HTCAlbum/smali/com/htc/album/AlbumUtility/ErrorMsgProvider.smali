.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(Landroid/content/Context;IZ)I
    .locals 5

    const v1, 0x20401fe

    const-wide/32 v3, 0x500000

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->isInternalStorageEnough(J)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorMessage(Landroid/content/Context;IZ)I

    move-result v0

    new-instance v1, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    invoke-direct {v1, v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;-><init>(I)V

    return-object v1
.end method

.method private static getMountedMediaError(I)I
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    const v4, 0x20401f8

    const/16 v0, 0xf

    const/16 v1, 0xf0

    and-int v6, p0, v0

    if-eqz v6, :cond_0

    move v2, v3

    :goto_0
    and-int v6, p0, v1

    if-eqz v6, :cond_1

    :goto_1
    const/4 v5, -0x1

    if-ne p0, v5, :cond_2

    const v4, 0x7f0a005b

    :goto_2
    return v4

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    const v4, 0x20401f7

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    const v4, 0x20401f6

    goto :goto_2

    :cond_4
    const v4, 0x20401f8

    goto :goto_2
.end method

.method private static getSDErrorMsg(Ljava/lang/String;I)I
    .locals 9

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ErrorMsgProvider][getSDErrorMsg] status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mediaType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x20401fb

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v4, 0x20401f9

    :goto_0
    return v4

    :cond_0
    const-string v6, "removed"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "bad_removal"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const v4, 0x20400a0

    goto :goto_0

    :cond_2
    const-string v6, "unmounted"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v4, 0x20401fa

    goto :goto_0

    :cond_3
    const-string v6, "unmountable"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v4, 0x20400a0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v0, 0xf

    const/16 v1, 0xf0

    and-int v6, p1, v0

    if-eqz v6, :cond_5

    move v2, v3

    :goto_1
    and-int v6, p1, v1

    if-eqz v6, :cond_6

    :goto_2
    const/4 v5, -0x1

    if-ne p1, v5, :cond_7

    const v4, 0x7f0a005b

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    const v4, 0x20401f8

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_9

    const v4, 0x20401f7

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    const v4, 0x20401f6

    goto :goto_0

    :cond_a
    const v4, 0x20401f8

    goto :goto_0

    :cond_b
    const-string v5, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const v4, 0x20401fc

    goto :goto_0

    :cond_c
    const-string v5, "Albums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sd card: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I
    .locals 8

    const v7, 0x20401fb

    const v6, 0x20401fd

    const/4 v5, 0x0

    sget-object v2, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ErrorMsgProvider][getStoragesErrorMessage] sd card status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phone storage status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const v1, 0x20401f9

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x20401f9

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v1, 0x20401f9

    goto :goto_0

    :cond_4
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v1, 0x20401f9

    if-eqz p2, :cond_1

    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const v1, 0x20401f9

    goto :goto_0

    :cond_6
    const-string v2, "removed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "bad_removal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "unmountable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    if-eqz v0, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const v1, 0x20400a0

    goto :goto_0

    :cond_9
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v1, 0x20401f9

    goto :goto_0

    :cond_a
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto :goto_0

    :cond_b
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const v1, 0x20401fe

    goto :goto_0

    :cond_c
    const v1, 0x20400a0

    goto :goto_0

    :cond_d
    const-string v2, "unmounted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_e

    if-nez p1, :cond_f

    :cond_e
    const v1, 0x20401fa

    goto/16 :goto_0

    :cond_f
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const v1, 0x20401f9

    goto/16 :goto_0

    :cond_10
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const v1, 0x20401fa

    goto/16 :goto_0

    :cond_11
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const v1, 0x20401fa

    if-eqz p2, :cond_1

    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    const v1, 0x20401fa

    goto/16 :goto_0

    :cond_13
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    :cond_15
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const v1, 0x20401f9

    goto/16 :goto_0

    :cond_16
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_17
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    :cond_18
    const-string v2, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const v1, 0x20401fc

    goto/16 :goto_0

    :cond_19
    const-string v2, "nofs"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1b

    :cond_1a
    const v1, 0x20401fe

    goto/16 :goto_0

    :cond_1b
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const v1, 0x20401f9

    if-eqz p2, :cond_1

    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1c
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    if-eqz p2, :cond_1

    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1d
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const v1, 0x20401fe

    goto/16 :goto_0

    :cond_1e
    const v1, 0x20401fe

    goto/16 :goto_0
.end method
