.class public Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;
.super Landroid/os/AsyncTask;
.source "ReverseGeocoderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"


# instance fields
.field private mCallback:Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mLat:F

.field private mLng:F


# direct methods
.method public constructor <init>(Landroid/location/Geocoder;[FLcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mLat:F

    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mLng:F

    iput-object p3, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mCallback:Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13

    const-string v12, ""

    :try_start_0
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mGeocoder:Landroid/location/Geocoder;

    iget v1, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mLat:F

    float-to-double v1, v1

    iget v3, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mLng:F

    float-to-double v3, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v12, ""

    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v12

    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    goto :goto_1

    :catch_1
    move-exception v8

    const-string v12, ""

    const-string v0, "ReverseGeocoder"

    const-string v1, "Geocoder exception: "

    invoke-static {v0, v1, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->mCallback:Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;

    invoke-interface {v0, p1}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;->onComplete(Ljava/lang/String;)V

    return-void
.end method
