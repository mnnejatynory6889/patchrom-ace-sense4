.class synthetic Lcom/htc/music/online/FriendsCollectionDetailActivity$11;
.super Ljava/lang/Object;
.source "FriendsCollectionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/online/FriendsCollectionDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$music$online$SinaActions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/htc/music/online/SinaActions;->values()[Lcom/htc/music/online/SinaActions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$11;->$SwitchMap$com$htc$music$online$SinaActions:[I

    :try_start_0
    sget-object v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$11;->$SwitchMap$com$htc$music$online$SinaActions:[I

    sget-object v1, Lcom/htc/music/online/SinaActions;->GET_COLLECTION_DETAIL:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v1}, Lcom/htc/music/online/SinaActions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/music/online/FriendsCollectionDetailActivity$11;->$SwitchMap$com$htc$music$online$SinaActions:[I

    sget-object v1, Lcom/htc/music/online/SinaActions;->ADD_TO_FAVORITE:Lcom/htc/music/online/SinaActions;

    invoke-virtual {v1}, Lcom/htc/music/online/SinaActions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
