.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field private mIsTaskCancel:Z

.field private mIsUsingCacheButNoCache:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsTaskCancel:Z

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsUsingCacheButNoCache:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 20

    :try_start_0
    const-string v1, "MediaHandlerPhotos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: getPhotos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v1, :cond_b

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    const/16 v18, 0x0

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v3

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_0
    const-string v1, "MediaHandlerPhotos"

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: sync live..."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->getPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    :cond_1
    :goto_0
    const/4 v7, 0x0

    if-eqz v10, :cond_8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_8

    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/MediumData;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/MediumData;->getUrlHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLHeader(Ljava/lang/String;)V

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/MediumData;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/MediumData;->getThumbnailUrlHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setPhotoURLThumbHeader(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v1, v1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    invoke-virtual {v1, v3}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->getPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    :cond_3
    const-string v1, "MediaHandlerPhotos"

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: getAlbumOps..."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v1, v11}, Lcom/htc/opensense/social/SocialServiceManager;->getAlbumOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v1, "MediaHandlerPhotos"

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: getMedia 1..."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/AlbumOp;

    invoke-virtual {v1}, Lcom/htc/opensense/social/AlbumOp;->getData()Lcom/htc/opensense/social/data/Album;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/AlbumOp;

    const/4 v3, 0x0

    aget v3, v17, v3

    const/4 v4, 0x1

    aget v4, v17, v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/opensense/social/AlbumOp;->getMedia(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    :try_start_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "MediaHandlerPhotos"

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: getMedia 2..."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    new-instance v6, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v6}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v1 .. v6}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;

    move-result-object v13

    :cond_6
    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v7, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-le v15, v0, :cond_8

    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFolderName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/AlbumOp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/opensense/social/AlbumOp;->getMedia(III)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    goto/16 :goto_2

    :catch_0
    move-exception v8

    :try_start_4
    const-string v1, "MediaHandlerPhotos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList] getAlbumOps Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsTaskCancel:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsUsingCacheButNoCache:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    const/4 v3, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v3

    if-ne v1, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mEnableCacheList:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$2000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->putListToFileCache(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$2100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    :cond_c
    new-instance v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    :cond_d
    :try_start_5
    const-string v1, "MediaHandlerPhotos"

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: use cache..."

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$1900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    :cond_f
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iput-object v12, v1, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v8

    const-string v1, "MediaHandlerPhotos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    goto/16 :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsTaskCancel:Z

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    const/16 v7, 0x4e88

    const/16 v6, 0x2761

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v5, v0, :cond_1

    :cond_0
    const-string v0, "MediaHandlerPhotos"

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: Error run! "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    return-void

    :cond_1
    const-string v0, "MediaHandlerPhotos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: Total Photos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsUsingCacheButNoCache:Z

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsUsingCacheButNoCache:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsUsingCacheButNoCache:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v7, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
