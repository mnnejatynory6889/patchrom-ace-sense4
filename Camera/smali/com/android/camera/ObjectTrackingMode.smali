.class public final enum Lcom/android/camera/ObjectTrackingMode;
.super Ljava/lang/Enum;
.source "ObjectTrackingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ObjectTrackingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ObjectTrackingMode;

.field public static final enum Face:Lcom/android/camera/ObjectTrackingMode;

.field public static final enum Object:Lcom/android/camera/ObjectTrackingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/ObjectTrackingMode;

    const-string v1, "Object"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ObjectTrackingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    new-instance v0, Lcom/android/camera/ObjectTrackingMode;

    const-string v1, "Face"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ObjectTrackingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ObjectTrackingMode;

    sget-object v1, Lcom/android/camera/ObjectTrackingMode;->Object:Lcom/android/camera/ObjectTrackingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ObjectTrackingMode;->Face:Lcom/android/camera/ObjectTrackingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/ObjectTrackingMode;->$VALUES:[Lcom/android/camera/ObjectTrackingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ObjectTrackingMode;
    .locals 1

    const-class v0, Lcom/android/camera/ObjectTrackingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ObjectTrackingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ObjectTrackingMode;
    .locals 1

    sget-object v0, Lcom/android/camera/ObjectTrackingMode;->$VALUES:[Lcom/android/camera/ObjectTrackingMode;

    invoke-virtual {v0}, [Lcom/android/camera/ObjectTrackingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/ObjectTrackingMode;

    return-object v0
.end method
