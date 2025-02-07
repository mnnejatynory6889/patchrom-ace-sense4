.class public Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;
.super Ljava/lang/Object;
.source "SharedTexture.java"


# static fields
.field public static final NAME_TEXTURE_BACKGROUND:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND"


# instance fields
.field public referenceCount:I

.field protected textureSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sunny2/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->referenceCount:I

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    .line 19
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->release()V

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 63
    return-void
.end method

.method public getBackgroundTexture()Lcom/htc/sunny2/Texture;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/Texture;

    .line 54
    .local v1, t:Lcom/htc/sunny2/Texture;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    goto :goto_0

    .line 57
    .end local v1           #t:Lcom/htc/sunny2/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 58
    return-void
.end method

.method public removeTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/Texture;

    goto :goto_0
.end method

.method public setBackgroundTexture(Lcom/htc/sunny2/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public setTexture(Ljava/lang/String;Lcom/htc/sunny2/Texture;)V
    .locals 1
    .parameter "name"
    .parameter "texture"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    if-nez p2, :cond_1

    .line 38
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/SharedTexture;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
