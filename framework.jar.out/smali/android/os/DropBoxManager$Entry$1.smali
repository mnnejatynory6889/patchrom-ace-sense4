.class final Landroid/os/DropBoxManager$Entry$1;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;
    .locals 6
    .parameter "in"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, tag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 232
    .local v2, millis:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 233
    .local v5, flags:I
    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    and-int/lit8 v5, v5, -0x9

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    .line 236
    .end local v5           #flags:I
    :goto_0
    return-object v0

    .restart local v5       #flags:I
    :cond_0
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/DropBoxManager$Entry;
    .locals 1
    .parameter "size"

    .prologue
    .line 228
    new-array v0, p1, [Landroid/os/DropBoxManager$Entry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->newArray(I)[Landroid/os/DropBoxManager$Entry;

    move-result-object v0

    return-object v0
.end method
