.class public Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "ScenePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;


# direct methods
.method protected constructor <init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    iget-object v2, v2, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V

    iget-object v2, p0, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;->access$100(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    move v1, p2

    new-instance v2, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/UploadEditor/ScenePhotoTagEditor$FilmstripItemSelectedListner;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0

    return-void
.end method
