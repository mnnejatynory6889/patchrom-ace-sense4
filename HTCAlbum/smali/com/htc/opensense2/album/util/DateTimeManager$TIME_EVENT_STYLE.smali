.class final enum Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;
.super Ljava/lang/Enum;
.source "DateTimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/DateTimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TIME_EVENT_STYLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

.field public static final enum DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

.field public static final enum MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    const-string v1, "DMY"

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    new-instance v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    const-string v1, "MY"

    invoke-direct {v0, v1, v3}, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->DMY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->MY:Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->$VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;
    .locals 1

    const-class v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;
    .locals 1

    sget-object v0, Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->$VALUES:[Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    invoke-virtual {v0}, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense2/album/util/DateTimeManager$TIME_EVENT_STYLE;

    return-object v0
.end method
