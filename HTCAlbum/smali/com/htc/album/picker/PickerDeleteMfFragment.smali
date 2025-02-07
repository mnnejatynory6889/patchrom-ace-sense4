.class public Lcom/htc/album/picker/PickerDeleteMfFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerDeleteMfFragment.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mPickerMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    const-string v0, "PickerDeleteMfFragment"

    iput-object v0, p0, Lcom/htc/album/picker/PickerDeleteMfFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerDeleteMfFragment;->mPickerMode:I

    return-void
.end method


# virtual methods
.method public checkCallerIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v2, "PickerDeleteMfFragment"

    const-string v3, "[HTCAlbum][PickerDeleteMfFragment][checkCallerIntent]: Null Intent found!!"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/picker/PickerDeleteMfFragment;->mPickerMode:I

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteMfFragment;->mPickerMode:I

    if-eqz v2, :cond_0

    const-string v1, "picker_mode"

    iget v2, p0, Lcom/htc/album/picker/PickerDeleteMfFragment;->mPickerMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.htc.album.ACTION_PICK_DELETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "PickerDeleteMfFragment"

    const-string v2, "[HTCAlbum][PickerDeleteMfFragment][onBroadcastMediaDisconnected]: "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    return v1
.end method

.method public onCreateScene()Z
    .locals 4

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerDeleteScene;-><init>()V

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    :cond_1
    return-object v0
.end method
