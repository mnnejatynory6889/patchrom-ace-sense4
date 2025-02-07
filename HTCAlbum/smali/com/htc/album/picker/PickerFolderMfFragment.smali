.class public Lcom/htc/album/picker/PickerFolderMfFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerFolderMfFragment.java"


# static fields
.field public static final CLS_NAME_FOLDER_PICKER:Ljava/lang/String; = "PickerFolderScene"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMediaType:I

.field private mPickerMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    const-string v0, "PickerFolderMfFragment"

    iput-object v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    return-void
.end method


# virtual methods
.method public getPickerMode()I
    .locals 1

    iget v0, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    return v0
.end method

.method public gotoErrorScene(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PickerFolderMfFragment"

    const-string v1, "[PickerErrorScene]gotoErrorScene()"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v1, "PickerErrorScene"

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public isInErrorScene()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "PickerErrorScene"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCreateScene()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    const-string v7, "in_pickermode"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    invoke-static {v7}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v7

    iput v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "no3d_contents"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "MimeTypeFilter"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    const-string v5, "MimeTypeFilter"

    const-string v7, "image/jpeg;image/bmp;image/png;image/gif;image/vnd.wap.wbmp;image/x-ms-bmp;video/mp4;video/3gpp;video/x-ms-wmv;video/x-msvideo;video/x-xvid;image/webp;video/webm;"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v5, "mediaType"

    iget v7, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mMediaType:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/htc/album/picker/PickerFolderMfFragment;->startOpeningScene(Landroid/content/Intent;)V

    const-string v5, "PickerFolderMfFragment"

    const-string v7, "PickerFolderMfFragment.onCreateScene and startscene"

    invoke-static {v5, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    goto :goto_0
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v5, "PickerFolderMfFragment"

    const-string v6, "[HTCAlbum][PickerFolderMfFragment][onHandleSceneErrorReport]: exit 1"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v5, "scene_identifier"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scene_error_report"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "PickerFolderMfFragment"

    const-string v6, "[HTCAlbum][PickerFolderMfFragment][onHandleSceneErrorReport]: exit 2"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "PickerFolderMfFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][PickerFolderMfFragment][onHandleSceneErrorReport]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PickerFolderScene"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PickerEventScene"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    if-nez v1, :cond_0

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_5
    const-string v5, "goto_errorscene_from"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PickerFolderMfFragment"

    const-string v6, "[HTCAlbum][PickerFolderMfFragment][onHandleSceneErrorReport]: Remove all scene and goto ErrorScene."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0, v3}, Lcom/htc/album/picker/PickerFolderMfFragment;->gotoErrorScene(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onUpdateErrorScene()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/album/picker/PickerErrorScene;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/album/picker/PickerErrorScene;

    invoke-virtual {v0}, Lcom/htc/album/picker/PickerErrorScene;->onUpdateErrorView()V

    :cond_0
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PickerFolderScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/htc/album/picker/PickerFolderScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerFolderScene;-><init>()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v1, "PickerFolderCreateScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/htc/album/picker/PickerFolderCreateScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerFolderCreateScene;-><init>()V

    goto :goto_0

    :cond_3
    const-string v1, "PickerEventScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/htc/album/picker/PickerEventScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerEventScene;-><init>()V

    goto :goto_0

    :cond_4
    const-string v1, "PickerErrorScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/picker/PickerErrorScene;

    iget v1, p0, Lcom/htc/album/picker/PickerFolderMfFragment;->mPickerMode:I

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/album/picker/PickerErrorScene;-><init>(I)V

    goto :goto_0
.end method

.method protected startOpeningScene(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "com.htc.album.ACTION_PICK_FOLDER_CREATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PickerFolderCreateScene"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PickerFolderScene"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PickerEventScene"

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method
