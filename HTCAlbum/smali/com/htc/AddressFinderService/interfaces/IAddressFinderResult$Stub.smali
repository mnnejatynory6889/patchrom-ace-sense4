.class public abstract Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;
.super Landroid/os/Binder;
.source "IAddressFinderResult.java"

# interfaces
.implements Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

.field static final TRANSACTION_onLookupBegin:I = 0x1

.field static final TRANSACTION_onLookupEnd:I = 0x4

.field static final TRANSACTION_onLookupError:I = 0x3

.field static final TRANSACTION_onLookupResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p0, p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->onLookupBegin(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v4, Lcom/htc/AddressFinderService/interfaces/AddressData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->onLookupResult(I[Lcom/htc/AddressFinderService/interfaces/AddressData;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->onLookupError(II)V

    goto :goto_0

    :sswitch_4
    const-string v4, "com.htc.AddressFinderService.interfaces.IAddressFinderResult"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->onLookupEnd(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
