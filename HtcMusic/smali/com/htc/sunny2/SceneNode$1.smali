.class synthetic Lcom/htc/sunny2/SceneNode$1;
.super Ljava/lang/Object;
.source "SceneNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/SceneNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->values()[Lcom/htc/sunny2/SceneNode$NODE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    :try_start_0
    sget-object v0, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    sget-object v1, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCENENODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v1}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/sunny2/SceneNode$1;->$SwitchMap$com$htc$sunny2$SceneNode$NODE_MODE:[I

    sget-object v1, Lcom/htc/sunny2/SceneNode$NODE_MODE;->NODE_MODE_SCISSORNODE:Lcom/htc/sunny2/SceneNode$NODE_MODE;

    invoke-virtual {v1}, Lcom/htc/sunny2/SceneNode$NODE_MODE;->ordinal()I

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
