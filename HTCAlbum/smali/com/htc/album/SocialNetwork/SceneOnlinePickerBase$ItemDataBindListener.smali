.class Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;
.super Ljava/lang/Object;
.source "SceneOnlinePickerBase.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IGridItemDataBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataBindListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V

    return-void
.end method


# virtual methods
.method public onItemBindMediaDataIRT(ILcom/htc/sunnyCore/widget/gridview/GridViewItem;Lcom/htc/sunnyCore/IMediaData;)V
    .locals 8

    const/4 v3, 0x2

    const/high16 v7, 0x3f80

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v5, v5, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v5, :cond_0

    invoke-virtual {v0, v7, v7, v7}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setScale(FFF)V

    invoke-virtual {v0, v2, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v5, v5, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-nez v5, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setStyle(I)V

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v5, v5, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v5, v4, :cond_5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget-boolean v3, v3, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    if-nez v3, :cond_4

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v5, v5, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-ne v5, v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v5, v5, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eq v5, v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget v3, v3, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    :cond_6
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$ItemDataBindListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2, v6}, Lcom/htc/sunny2/widget/gridview/GridItemThumbnail;->setPicked(ZLcom/htc/sunnyCore/view/animation/SAnimationController;)V

    goto :goto_1
.end method

.method public onItemUnbindMediaDataIRT(Lcom/htc/sunnyCore/widget/gridview/GridViewItem;)V
    .locals 0

    return-void
.end method
