.class Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field viewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 1215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput p1, p0, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;->viewType:I

    .line 1217
    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 3
    .parameter "listItemTag"

    .prologue
    const/4 v1, 0x1

    .line 1226
    move-object v0, p1

    check-cast v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;

    .line 1227
    .local v0, temp:Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;
    iget v2, v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$ViewHolder;->viewType:I

    if-ne v2, v1, :cond_0

    .line 1230
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
