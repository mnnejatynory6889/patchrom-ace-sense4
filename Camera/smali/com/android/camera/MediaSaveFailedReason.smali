.class public final enum Lcom/android/camera/MediaSaveFailedReason;
.super Ljava/lang/Enum;
.source "MediaSaveFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/MediaSaveFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/MediaSaveFailedReason;

.field public static final enum NoStorage:Lcom/android/camera/MediaSaveFailedReason;

.field public static final enum Unknown:Lcom/android/camera/MediaSaveFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/MediaSaveFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/MediaSaveFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    new-instance v0, Lcom/android/camera/MediaSaveFailedReason;

    const-string v1, "NoStorage"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/MediaSaveFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/MediaSaveFailedReason;->NoStorage:Lcom/android/camera/MediaSaveFailedReason;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/MediaSaveFailedReason;

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/MediaSaveFailedReason;->NoStorage:Lcom/android/camera/MediaSaveFailedReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/MediaSaveFailedReason;->$VALUES:[Lcom/android/camera/MediaSaveFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/MediaSaveFailedReason;
    .locals 1

    const-class v0, Lcom/android/camera/MediaSaveFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/MediaSaveFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/MediaSaveFailedReason;
    .locals 1

    sget-object v0, Lcom/android/camera/MediaSaveFailedReason;->$VALUES:[Lcom/android/camera/MediaSaveFailedReason;

    invoke-virtual {v0}, [Lcom/android/camera/MediaSaveFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/MediaSaveFailedReason;

    return-object v0
.end method
