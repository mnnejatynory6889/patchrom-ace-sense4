.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TexturePool"
.end annotation


# instance fields
.field private mTexturePool:[Lcom/htc/sunnyCore/Texture;

.field private textureCounts:I

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;I)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    new-array v1, p2, [Lcom/htc/sunnyCore/Texture;

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    return v0
.end method


# virtual methods
.method public get()Lcom/htc/sunnyCore/Texture;
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aget-object v1, v3, v0

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aput-object v2, v3, v0

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method public put(Lcom/htc/sunnyCore/Texture;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->mTexturePool:[Lcom/htc/sunnyCore/Texture;

    aput-object p1, v1, v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$TexturePool;->textureCounts:I

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
