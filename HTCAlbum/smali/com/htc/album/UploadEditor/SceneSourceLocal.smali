.class public Lcom/htc/album/UploadEditor/SceneSourceLocal;
.super Ljava/lang/Object;
.source "SceneSourceLocal.java"

# interfaces
.implements Lcom/htc/album/UploadEditor/ISceneSourcePlugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/album/UploadEditor/ISceneSourcePlugin;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SceneSourceLocal"


# instance fields
.field private final KEY_TAGS_DESCRIPTION:Ljava/lang/String;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field private mPreviousIndex:I

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mService:Ljava/lang/String;

.field private mServiceSource:I

.field private mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mbCleanTop5FriendList:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tags_description"

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->KEY_TAGS_DESCRIPTION:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-void
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    const-string v0, ""

    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v4, v1, :cond_1

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    :cond_0
    :goto_0
    const-string v1, "SceneSourceLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLocal][getServiceName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v5, v1, :cond_3

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v3, v1, :cond_4

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    iget v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v1, v5

    goto :goto_0
.end method

.method private getServiceNameWithMode(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    :pswitch_2
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    :pswitch_3
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    :pswitch_4
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onPhotoDetailReady()V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v0, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->prepareBundleData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/addons/UploadEditorViewManager;->setBundleData(Ljava/util/ArrayList;)V

    invoke-interface {v0}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->onShowUploadEditorViewManager()V

    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "AdapterLocalPhoto4UploadEditor"

    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getServicePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "com.htc.socialnetwork.facebook"

    goto :goto_0

    :cond_1
    const-string v1, "flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    :cond_2
    const-string v1, "Sina"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    :cond_3
    const-string v1, "Sina Weibo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    :cond_4
    const-string v1, "RenRen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0

    :cond_5
    const-string v1, "SceneSourceLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneSourceLocal][getServicePackageName]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServiceSource()I
    .locals 1

    iget v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultDisplayScreenControl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v3, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v5

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v3}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v6

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/htc/album/addons/UploadEditorViewManager;->updateTags(IZLandroid/content/Intent;)V

    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onClickTagButton()V
    .locals 15

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v6, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v11

    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v11}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v6}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v12, "clear_top5_frined_list"

    iget-boolean v13, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "service"

    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->getServiceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v12, v13, v14}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "tags"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "photoList"

    invoke-virtual {v1, v12, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v12, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v12, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mbCleanTop5FriendList:Z

    const v12, 0x88b9

    invoke-virtual {v0, v5, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 25

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v21

    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v17

    check-cast v17, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    invoke-interface/range {v16 .. v16}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const-string v22, "title"

    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextTitle()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "description"

    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/addons/UploadEditorViewManager;->getTextDescription()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    if-eqz v12, :cond_2

    new-instance v4, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>()V

    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setName(Ljava/lang/String;)V

    const-string v22, "description"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setDescription(Ljava/lang/String;)V

    const-string v22, "uri"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/htc/opensense/social/data/Medium;->setUrl(Ljava/lang/String;)V

    const-string v22, "SceneSourceLocal"

    const-string v23, "KA>>> Upload "

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "SceneSourceLocal"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KA>>> KEY_TITLE : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "SceneSourceLocal"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KA>>> KEY_DESCRIPTION : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "SceneSourceLocal"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KA>>> KEY_URI : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Medium;->getUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    const-string v22, "mimeType"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setMimeType(Ljava/lang/String;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const-string v22, "tags"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/album/TagUtils/TagInfo;

    const-string v22, "SceneSourceLocal"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KA>>> Add Tag : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " X: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Y: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    iget v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    const/high16 v22, 0x40a0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    const/high16 v22, 0x40a0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    iget-object v0, v13, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->getServiceNameWithMode(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string v22, "SceneSourceLocal"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[HTCAlbum][SceneSourceLocal][onConfirm]: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v14}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onBackPressed()Z

    :goto_3
    const-string v22, "SceneSourceLocal"

    const-string v23, "[HTCAlbum][SceneSourceLocal][onConfirm]: End"

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v22, "SceneSourceLocal"

    const-string v23, "[HTCAlbum][SceneSourceLocal][onConfirm]: fail"

    invoke-static/range {v22 .. v23}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreate(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object p2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    :cond_0
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    :cond_1
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SOCIAL_SERVICE_FEATURES:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "local_uploader"

    invoke-static {v0, v1}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    :cond_0
    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mMainView:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    return-void
.end method

.method public onDisplayEditorViewer(Z)V
    .locals 8

    const-string v5, "SceneSourceLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneSourceLocal][onDisplayEditorViewer]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getUploadEditorViewManager()Lcom/htc/album/addons/UploadEditorViewManager;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->hide()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getFocusIndex()I

    move-result v1

    invoke-interface {v2}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    :cond_3
    iput v1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mPreviousIndex:I

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/album/addons/UploadEditorViewManager;->prepareEditorView(IZ)V

    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->show()V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/UploadEditor/SceneSourceLocal;->onPhotoDetailReady()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4e94
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v4, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, p0}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;-><init>(Landroid/app/Activity;Lcom/htc/album/UploadEditor/ISceneSourcePlugin;)V

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isCHS()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "Launch_Service"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateUploadEditorPlugin()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: Plugin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    iget-object v8, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    const/4 v8, 0x0

    invoke-static {v6, v0, v7, v8}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createUploadEditorDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-virtual {v4, v6}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/htc/album/UploadEditor/AdapterLocalPhoto4UploadEditor;->onLoadData()V

    return-object v4

    :catch_0
    move-exception v1

    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onNewAdapter]: Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "Launch_Service"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    const-string v6, "SceneSourceLocal"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][SceneSourceLocal][onSendToForeground]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "facebook"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v5, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface {v5}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    const-string v6, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_2
    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_3
    const-string v6, "flickr"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    :cond_4
    const-string v6, "Sina"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    :cond_5
    const-string v6, "Sina Weibo"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    :cond_6
    const-string v6, "RenRen"

    iget-object v7, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mServiceSource:I

    goto :goto_0

    :cond_7
    if-eq v4, v1, :cond_8

    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    const/16 v7, 0x4e94

    const/4 v8, 0x0

    invoke-interface {v6, v7, v9, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public prepareBundleData()Ljava/util/ArrayList;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSunnyScene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-object/from16 v26, v0

    check-cast v26, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;

    invoke-interface/range {v26 .. v26}, Lcom/htc/album/UploadEditor/ISceneSourcePluginHost;->getPluginAdapter()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v22

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    :try_start_0
    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v36

    check-cast v36, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v37, 0x7f0a00b8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    add-int/lit8 v40, v23, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    const/16 v37, 0x2e

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v10, v0, :cond_0

    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v14, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v37, "uri"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "index"

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "mimeType"

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "title"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "description"

    const-string v38, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "uri"

    invoke-interface/range {v36 .. v36}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v37, "clear_top5_frined_list"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v37, "tags"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x7f0a0070

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v37, "tags_description"

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v19

    if-nez v19, :cond_4

    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no intent"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    const-string v37, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    if-nez v20, :cond_5

    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: no media list"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: UploadLoader init NG !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Bundle photo information size is different with Current photo size !"

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_b

    const-string v37, "SceneSourceLocal"

    const-string v38, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Prepare launch from HtcMediaUpload."

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: Get mediaList Size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    if-eqz v6, :cond_7

    if-nez v7, :cond_8

    :cond_7
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_8
    const-string v37, "com.htc.opensense.upload.TITLE"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v37, "com.htc.opensense.upload.DESCRIPTION"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-eqz v30, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_9

    const-string v37, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v28, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v37

    if-lez v37, :cond_a

    const-string v37, "description"

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: mediaList["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "]:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: KEY_IMAGE_TITLE: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][prepareBundleData]: KEY_IMAGE_DESCRIPTION: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string v37, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v37

    if-lez v37, :cond_d

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][onCreate]: Get tagList Size : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_c
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    if-eqz v17, :cond_c

    const-string v37, "com.htc.opensense.upload.REFERENCE"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    const-string v37, "com.htc.opensense.upload.USER_ID"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v37, "tag_display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v37, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    const-string v37, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    const/16 v35, 0x0

    const-string v37, "tags"

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    new-instance v33, Lcom/htc/album/TagUtils/TagInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v37, "SceneSourceLocal"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "[HTCAlbum][SceneSourceLocal][onCreate]: Get Tag ["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "] : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " X: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " Y: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_e
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    if-eqz v18, :cond_e

    const/16 v35, 0x0

    const-string v37, "tags"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    if-eqz v35, :cond_e

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_e

    const-string v27, ""

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/TagUtils/TagInfo;

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v37

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    :cond_f
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    :cond_10
    const-string v37, "tags_description"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/UploadEditor/SceneSourceLocal;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-void
.end method
