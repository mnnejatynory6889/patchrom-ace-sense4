.class public Lcom/htc/album/helper/CollectionMaker;
.super Ljava/lang/Object;
.source "CollectionMaker.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CollectionMaker"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCollection(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/htc/album/modules/collection/Collection;
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "collection_info"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/collection/Collection;

    if-nez v1, :cond_0

    const-string v4, "collection_info"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/collection/Collection;

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v2, v0}, Lcom/htc/album/helper/CollectionMaker;->makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    goto :goto_0
.end method

.method public static makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/FavoritesCollection;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    const-string v1, ""

    invoke-direct {v0, p0, p2, v1}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.htc.HTCAlbum.SMART_TIME_DAY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartDayCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.HTCAlbum.SMART_TIME_WEEK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartWeekCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.htc.HTCAlbum.SMART_TIME_MONTH"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartMonthCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.htc.HTCAlbum.SMART_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.htc.HTCAlbum.SMART_TIME_LOCATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartLocationCollection;->deserializeEventParams(Ljava/lang/String;)Z

    goto :goto_0

    :cond_6
    const-string v1, "com.htc.HTCAlbum.SMART_LOCAL_FOLDER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.htc.HTCAlbum.SMART_ALL_DOWNLOADS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/smart/SmartLocalCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "com.htc.HTCAlbum.SMART_SEPARATOR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventSeparator;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    const-string v1, "com.htc.HTCAlbum.MY_MAPVIEWS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;

    invoke-direct {v0, p0, v2, v2}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;-><init>(Landroid/content/Context;[D[D)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 17

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string v13, "CollectionMaker"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "context:"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p0, v14, v15

    const/4 v15, 0x2

    const-string v16, ", caller:"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object p1, v14, v15

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "com.htc.album.action.VIEW_WEB_PHOTO"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    new-instance v6, Lcom/htc/album/addons/SingleCollection;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v14}, Lcom/htc/album/addons/SingleCollection;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v13, "com.htc.album.ACTION_PICK_GEO_PHOTO"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v6, Lcom/htc/album/addons/carmode/PickerGeoPhotoCollection;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/album/addons/carmode/PickerGeoPhotoCollection;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v13, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "com.htc.HTCAlbum.CAMERA_SHOTS"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    goto :goto_0

    :cond_6
    const-string v13, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "com.htc.HTCAlbum.BURST_SHOTS"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    goto :goto_0

    :cond_7
    const-string v13, "com.htc.album.action.LAUNCH_LOCATION_PHOTO"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v6, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;

    const-string v13, "LocationViewRangeDouble"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v13

    const-string v14, "LocationExclusiveRanges"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v14}, Lcom/htc/album/TabPluginDevice/location/LocationsCollection;-><init>(Landroid/content/Context;[D[D)V

    goto :goto_0

    :cond_8
    const-string v13, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v13, "key_bucket_id"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "camera_last_file_path"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->instance()Lcom/htc/album/helper/FastCameraImagePreviewHelper;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/htc/album/helper/FastCameraImagePreviewHelper;->getCoverImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "com.htc.HTCAlbum.BURST_SHOTS"

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v14}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/BurstShotCollection;

    invoke-virtual {v2, v7}, Lcom/htc/album/TabPluginDevice/BurstShotCollection;->setCoverPath(Ljava/lang/String;)V

    move-object v6, v2

    goto/16 :goto_0

    :cond_9
    const-string v13, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    goto/16 :goto_0

    :cond_a
    const-string v13, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "com.htc.HTCAlbum.SNAPBOOTH"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    const-string v13, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "com.htc.HTCAlbum.ALL_VIDEOS"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const-string v13, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "folder_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d

    const-string v13, "CollectionMaker"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "action:"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x2

    const-string v16, " null folderInfo"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_10

    const/16 v13, 0x20

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v11, v4, v8}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    goto/16 :goto_0

    :cond_11
    const-string v13, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    const-string v13, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_12
    const-string v13, "folder_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "key_bucket_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "key_folder_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-static {v0, v11, v4, v8}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    goto/16 :goto_0

    :cond_13
    const-string v13, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/htc/album/helper/CollectionMaker;->makeSavedCollection(Landroid/content/Context;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    goto/16 :goto_0

    :cond_15
    const-string v13, "CollectionMaker"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public static makeSavedCollection(Landroid/content/Context;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "folder_type"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_bucket_id"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "key_folder_name"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v4, v0, v2}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->loadFromPerference()V

    return-object v1
.end method

.method public static makeSlideshowCollection(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 7

    const/4 v1, 0x0

    const-string v4, "collection_info"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v4, v5, v6}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->clone(Lcom/htc/album/modules/collection/Collection;)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v3

    const/4 v2, 0x1

    and-int/lit8 v4, v3, 0xe

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->setSupportedMediaTypes(I)V

    :cond_1
    return-object v1

    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 1

    invoke-static {p0, p1, p1, p1}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    return-object v0
.end method
