.class public Lcom/htc/painting/util/PaintingLog;
.super Ljava/lang/Object;
.source "PaintingLog.java"


# static fields
.field private static enableLogd:Z

.field private static enableLoge:Z

.field private static enableLogi:Z

.field private static enableLogv:Z

.field private static enableLogw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    .line 13
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_1

    :cond_1
    sput-boolean v2, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    .line 14
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    .line 15
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    .line 16
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_4

    :goto_2
    sput-boolean v1, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    return-void

    :cond_2
    move v0, v2

    .line 14
    goto :goto_0

    :cond_3
    move v0, v2

    .line 15
    goto :goto_1

    :cond_4
    move v1, v2

    .line 16
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"
    .parameter "e"

    .prologue
    .line 65
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method
