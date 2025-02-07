.class public Lcom/htc/album/picker/PickerItemMfFragment;
.super Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.source "PickerItemMfFragment.java"


# static fields
.field static final CLS_NAME_MULTI_PICKER:Ljava/lang/String;

.field static final CLS_NAME_SINGLE_PICKER:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/picker/PickerSingleItemScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    const-class v0, Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;-><init>()V

    const-string v0, "PickerItemMfFragment"

    iput-object v0, p0, Lcom/htc/album/picker/PickerItemMfFragment;->LOG_TAG:Ljava/lang/String;

    const/high16 v0, 0x20

    iput v0, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const-string v4, "PickerItemMfFragment"

    const-string v5, "[HTCAlbum][PickerItemMfFragment][checkCallerIntent]: exits..."

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "PickerItemMfFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][PickerItemMfFragment][checkCallerIntent]: Caller action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "picker_mode"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    iget v5, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v5

    iput v5, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    iget v5, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    if-eqz v5, :cond_0

    const-string v5, "picker_mode"

    iget v6, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string v5, "max_pick"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_4

    const-string v5, "max_pick"

    const/16 v6, 0x3e7

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "hide_max_pick_hint"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.htc.HTCAlbum.action.MULTIPLE_ITEMS_PICKER_FROM_COLLECTIONS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    goto/16 :goto_0

    :cond_4
    const-string v5, "max_pick"

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "hide_max_pick_hint"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "PickerItemMfFragment"

    const-string v2, "[HTCAlbum][PickerItemMfFragment][onBroadcastMediaDisconnected]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    return v1
.end method

.method public onCreateScene()Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    invoke-static {v2}, Lcom/htc/album/picker/PickerConstants;->isMultiPicker(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget v2, p0, Lcom/htc/album/picker/PickerItemMfFragment;->mPickerMode:I

    invoke-static {v2}, Lcom/htc/album/picker/PickerConstants;->isInternalPicker(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerItemMfFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/HtcIfKeyguardManager;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/app/HtcIfKeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onStop()V

    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_MULTI_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/htc/album/picker/PickerMultiItemScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerMultiItemScene;-><init>()V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    sget-object v1, Lcom/htc/album/picker/PickerItemMfFragment;->CLS_NAME_SINGLE_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/picker/PickerSingleItemScene;

    invoke-direct {v0}, Lcom/htc/album/picker/PickerSingleItemScene;-><init>()V

    goto :goto_0
.end method
