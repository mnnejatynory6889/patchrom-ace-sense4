.class final Landroid/database/CursorWindow$1;
.super Ljava/lang/Object;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/database/CursorWindow;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 736
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 2
    .parameter "source"

    .prologue
    .line 738
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Landroid/database/CursorWindow$1;->createFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/database/CursorWindow;
    .locals 1
    .parameter "size"

    .prologue
    .line 742
    new-array v0, p1, [Landroid/database/CursorWindow;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Landroid/database/CursorWindow$1;->newArray(I)[Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method
