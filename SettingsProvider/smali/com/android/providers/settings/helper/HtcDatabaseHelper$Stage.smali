.class final enum Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
.super Ljava/lang/Enum;
.source "HtcDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/helper/HtcDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

.field public static final enum ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

.field public static final enum ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    .line 40
    new-instance v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    const-string v1, "ON_UPGRADE"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_CREATE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->ON_UPGRADE:Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->$VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->$VALUES:[Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    invoke-virtual {v0}, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/settings/helper/HtcDatabaseHelper$Stage;

    return-object v0
.end method
