.class public final enum Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;
.super Ljava/lang/Enum;
.source "SAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/animation/SAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERPOLATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum EASEIN_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum EASEOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

.field public static final enum LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 53
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "EASEOUT_CUBIC"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 54
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "EASEINOUT_CUBIC"

    invoke-direct {v0, v1, v5}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 55
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "EASEOUT_QUARTIC"

    invoke-direct {v0, v1, v6}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 56
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "EASEIN_QUARTIC"

    invoke-direct {v0, v1, v7}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEIN_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 58
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    const-string v1, "DECELERATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->LINEAR:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEOUT_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEIN_QUARTIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->DECELERATE:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->$VALUES:[Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->$VALUES:[Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0}, [Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    return-object v0
.end method
