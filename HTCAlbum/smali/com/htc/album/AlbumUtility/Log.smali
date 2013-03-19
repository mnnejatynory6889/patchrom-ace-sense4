.class public Lcom/htc/album/AlbumUtility/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final KEY_ENABLELOG:Ljava/lang/String; = "enablelog"

.field private static final KEY_LOGPREFIX:Ljava/lang/String; = "[HTCAlbum] "

.field private static final KEY_LOGSEVERITY:Ljava/lang/String; = "severity"

.field private static final KEY_LOGSTACK:Ljava/lang/String; = "[LogStack] "

.field private static final KEY_PREFIX:Ljava/lang/String; = "album.prop."

.field private static final SEVERITY_DEBUG:I = 0x3

.field private static final SEVERITY_ERROR:I = 0x0

.field private static final SEVERITY_INFORMATION:I = 0x2

.field private static final SEVERITY_VERBOSE:I = 0x4

.field private static final SEVERITY_WARNING:I = 0x1

.field private static gEnableLog:Z

.field private static gInitialized:Z

.field private static gSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    const/4 v0, 0x4

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[HTCAlbum] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static initialize()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "album.prop.enablelog"

    invoke-static {v0, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    const-string v0, "album.prop.severity"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    sput-boolean v2, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    goto :goto_0
.end method

.method public static stackTrace(Ljava/lang/String;)V
    .locals 7

    const-string v5, "[LogStack] --------------------------------"

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LogStack] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v0, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HTCAlbum] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static varargs w2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gInitialized:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/album/AlbumUtility/Log;->initialize()V

    :cond_0
    sget-boolean v3, Lcom/htc/album/AlbumUtility/Log;->gEnableLog:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/htc/album/AlbumUtility/Log;->gSeverity:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[HTCAlbum] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
