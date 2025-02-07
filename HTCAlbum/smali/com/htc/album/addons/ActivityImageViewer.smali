.class public Lcom/htc/album/addons/ActivityImageViewer;
.super Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.source "ActivityImageViewer.java"


# static fields
.field private static final CLASS_VIEWER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/addons/ViewerScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/ActivityImageViewer;->CLASS_VIEWER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.album.action.VIEW_WEB_PHOTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/ActivityImageViewer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityImageViewer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-class v2, Lcom/htc/album/addons/ViewerScene;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/album/addons/ActivityImageViewer;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityImageViewer;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->dismissDrmStateDlg()V

    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->onPause()V

    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/album/addons/ActivityImageViewer;->CLASS_VIEWER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/album/addons/ViewerScene;

    invoke-direct {v0}, Lcom/htc/album/addons/ViewerScene;-><init>()V

    :cond_0
    return-object v0
.end method
