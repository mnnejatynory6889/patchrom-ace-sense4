.class public Lcom/android/camera/AutoFocusEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "AutoFocusEventArgs.java"

# interfaces
.implements Lcom/android/camera/event/ISingleHandlerEventArgs;


# instance fields
.field public final focusAreas:[Landroid/graphics/RectF;

.field public final focusID:J

.field public final focusMode:Lcom/android/camera/AutoFocusMode;

.field public final isSuccessful:Z

.field private m_IsHandled:Z


# direct methods
.method public constructor <init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;J)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;J)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;JZ)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;JZ)V
    .locals 9

    const/high16 v8, 0x3e80

    const/high16 v7, 0x3e00

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    if-eqz p1, :cond_0

    array-length v3, p1

    new-array v3, v3, [Landroid/graphics/RectF;

    :goto_0
    iput-object v3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-wide p3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusID:J

    iput-boolean p5, p0, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    array-length v3, p1

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v1, v3, v7

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v2, v3, v7

    iget-object v3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    add-float v5, v1, v8

    add-float v6, v2, v8

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;J)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;JZ)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;JZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Landroid/graphics/RectF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/RectF;

    check-cast v0, [Landroid/graphics/RectF;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-wide p3, p0, Lcom/android/camera/AutoFocusEventArgs;->focusID:J

    iput-boolean p5, p0, Lcom/android/camera/AutoFocusEventArgs;->isSuccessful:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isHandled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/AutoFocusEventArgs;->m_IsHandled:Z

    return v0
.end method

.method public final setHandled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AutoFocusEventArgs;->m_IsHandled:Z

    return-void
.end method
