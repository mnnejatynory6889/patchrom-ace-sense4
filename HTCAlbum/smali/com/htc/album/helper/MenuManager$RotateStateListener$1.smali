.class Lcom/htc/album/helper/MenuManager$RotateStateListener$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$RotateStateListener;->onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$RotateStateListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$RotateStateListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    iput p2, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateStateListener;->access$800(Lcom/htc/album/helper/MenuManager$RotateStateListener;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataChangedAt(I)V

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    #setter for: Lcom/htc/album/helper/MenuManager$RotateStateListener;->mActivity:Landroid/app/Activity;
    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager$RotateStateListener;->access$902(Lcom/htc/album/helper/MenuManager$RotateStateListener;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateStateListener$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateStateListener;

    #setter for: Lcom/htc/album/helper/MenuManager$RotateStateListener;->mAdapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-static {v0, v2}, Lcom/htc/album/helper/MenuManager$RotateStateListener;->access$802(Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    return-void
.end method
