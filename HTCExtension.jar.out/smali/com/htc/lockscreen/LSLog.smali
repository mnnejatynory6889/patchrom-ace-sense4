.class public Lcom/htc/lockscreen/LSLog;
.super Ljava/lang/Object;
.source "LSLog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "lockscreen"

.field private static final localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDebugLog()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    const-string v0, "lockscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    const-string v0, "lockscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 116
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 124
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 70
    const-string v0, "lockscreen"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 34
    sget-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "lockscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 88
    sget-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method private static output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "lockscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 78
    sget-boolean v0, Lcom/htc/lockscreen/LSLog;->localLOGV:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 54
    const-string v0, "lockscreen"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 108
    const-string v0, "lockscreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/LSLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
