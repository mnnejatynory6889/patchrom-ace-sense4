.class Lcom/htc/album/helper/MenuManager$RotateStateListener;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$RotateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateStateListener"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    return-void
.end method

.method static synthetic access$800(Lcom/htc/album/helper/MenuManager$RotateStateListener;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/album/helper/MenuManager$RotateStateListener;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;

    return-object p1
.end method


# virtual methods
.method public onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;-><init>(Lcom/htc/album/helper/MenuManager$RotateStateListener;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method