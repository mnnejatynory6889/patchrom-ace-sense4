.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "namephoto"
.end annotation


# instance fields
.field mObj:Landroid/provider/Telephony$namephoto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1988
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1989
    new-instance v0, Landroid/provider/Telephony$namephoto;

    invoke-direct {v0}, Landroid/provider/Telephony$namephoto;-><init>()V

    iput-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    .line 1990
    return-void
.end method

.method public constructor <init>(Landroid/provider/Telephony$namephoto;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 1992
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    new-instance v0, Landroid/provider/Telephony$namephoto;

    invoke-direct {v0}, Landroid/provider/Telephony$namephoto;-><init>()V

    iput-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    .line 1994
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-object v1, p1, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 1995
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-object v1, p1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 1996
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-wide v1, p1, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iput-wide v1, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 1997
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-boolean v1, p1, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    iput-boolean v1, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 1998
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-object v0, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalID()J
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-wide v0, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    return-wide v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-object v0, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isFromSIM()Z
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iget-boolean v0, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    return v0
.end method

.method public setIsFromSIM(Z)V
    .locals 1
    .parameter "bool"

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iput-boolean p1, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 2026
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iput-object p1, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 2010
    return-void
.end method

.method public setPersonalID(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iput-wide p1, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 2018
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;->mObj:Landroid/provider/Telephony$namephoto;

    iput-object p1, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 2002
    return-void
.end method
