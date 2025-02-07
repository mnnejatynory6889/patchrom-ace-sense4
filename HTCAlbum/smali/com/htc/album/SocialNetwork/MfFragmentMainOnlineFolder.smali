.class public Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;
.super Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;
.source "MfFragmentMainOnlineFolder.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MfFragmentMainOnlineFolder"

    sput-object v0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;-><init>()V

    return-void
.end method


# virtual methods
.method public enable2Pane()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 5

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "social_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "fromMainActivity"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    sget-object v2, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MfFragmentMainOnlineFolder][onCreateScene]: external: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v2

    sget v3, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v2, v3}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->onCreateScene()Z

    move-result v2

    return v2
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][MfFragmentMainOnlineFolder][onDestroy]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnlineFolder;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    sget v1, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    invoke-super {p0}, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->onDestroy()V

    return-void
.end method

.method public paneRight()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/MfFragmentMainOnline;->mIsExternal:Z

    if-eqz v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SceneOnlineFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;-><init>()V

    :cond_0
    return-object v0
.end method
