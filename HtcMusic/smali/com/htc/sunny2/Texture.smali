.class public Lcom/htc/sunny2/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field private static final ANTI_ALIAS_BORDERS:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field static sTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateStack:Ljava/lang/String;

.field private mHeight:I

.field private mIdentifier:Ljava/lang/String;

.field private mOriSourceHeight:I

.field private mOriSourceWidth:I

.field private mSunnyEnvironment:I

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    .line 22
    const-class v0, Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    .line 87
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SBitmap;)V
    .locals 2
    .parameter "sbmp"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v1, "SBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createTexture()Lcom/htc/sunny2/Texture;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0}, Lcom/htc/sunny2/Texture;-><init>()V

    return-object v0
.end method

.method public static createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 48
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/htc/sunny2/Texture;

    invoke-direct {v2, v0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v2, texture:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    :cond_0
    return-object v2
.end method

.method public static createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;
    .locals 6
    .parameter "context"
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 34
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 38
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    new-instance v3, Lcom/htc/sunny2/Texture;

    invoke-direct {v3, v0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v3, texture:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    :cond_0
    return-object v3
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "bmp"

    .prologue
    .line 58
    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;
    .locals 4
    .parameter "view"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    .line 68
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    const/4 v1, 0x0

    .line 69
    .local v1, texture:Lcom/htc/sunny2/Texture;
    if-nez v0, :cond_0

    .line 70
    sget-object v2, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v3, "[createTexture(view)] Can\'t create SBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lcom/htc/sunny2/Texture;

    .end local v1           #texture:Lcom/htc/sunny2/Texture;
    invoke-direct {v1}, Lcom/htc/sunny2/Texture;-><init>()V

    .line 78
    .restart local v1       #texture:Lcom/htc/sunny2/Texture;
    :goto_0
    return-object v1

    .line 74
    :cond_0
    new-instance v1, Lcom/htc/sunny2/Texture;

    .end local v1           #texture:Lcom/htc/sunny2/Texture;
    invoke-direct {v1, v0}, Lcom/htc/sunny2/Texture;-><init>(Lcom/htc/sunny2/SBitmap;)V

    .line 75
    .restart local v1       #texture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public static createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "bmp"

    .prologue
    .line 62
    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Texture;-><init>(Lcom/htc/sunny2/SBitmap;)V

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/Texture;->mSunnyEnvironment:I

    .line 115
    iget v6, p0, Lcom/htc/sunny2/Texture;->mSunnyEnvironment:I

    invoke-static {v6}, Lcom/htc/sunny2/Sunny2;->CreateTexture(I)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    .line 116
    iget v6, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v6, :cond_0

    .line 117
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    .line 120
    iput v7, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    .line 121
    iput v7, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    .line 123
    sget-boolean v6, Lcom/htc/sunny2/common/Constants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 124
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 125
    .local v2, elems:[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v5, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 127
    .local v1, e:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v1           #e:Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/sunny2/Texture;->mCreateStack:Ljava/lang/String;

    .line 132
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #elems:[Ljava/lang/StackTraceElement;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v7, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v7

    .line 133
    :try_start_0
    sget-object v6, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v7

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
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
    .line 280
    invoke-virtual {p0}, Lcom/htc/sunny2/Texture;->release()V

    .line 281
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 282
    return-void
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/sunny2/Texture;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceHeight()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/htc/sunny2/Texture;->mOriSourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/htc/sunny2/Texture;->mOriSourceWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 259
    iget v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-eqz v3, :cond_3

    .line 260
    iget v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    invoke-static {v3}, Lcom/htc/sunny2/Sunny2;->DestroyTexture(I)V

    .line 261
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    .line 263
    sget-object v4, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v4

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    :try_start_0
    sget-object v3, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 266
    .local v2, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 267
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 268
    move-object v1, v2

    .line 272
    .end local v2           #w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 273
    sget-object v3, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    :cond_2
    monitor-exit v4

    .line 277
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    :cond_3
    return-void

    .line 275
    .restart local v1       #remove:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/sunny2/Texture;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 170
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "bmp"
    .parameter "bAntialias"

    .prologue
    .line 173
    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, sbmp:Lcom/htc/sunny2/SBitmap;
    if-eqz p2, :cond_1

    .line 179
    const/16 v1, 0xf

    invoke-static {p1, v1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    .line 183
    :goto_0
    if-nez v0, :cond_2

    .line 184
    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setBitmap] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_1
    return-void

    .line 181
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    .line 189
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_1
.end method

.method public setBorder(IIIIII)V
    .locals 7
    .parameter "desX"
    .parameter "desY"
    .parameter "borderWidth"
    .parameter "borderHeight"
    .parameter "thickness"
    .parameter "color"

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v1, "[setBorder] texture handle is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Texture_RealizeBorder(IIIIIII)Z

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 239
    iput p1, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    .line 240
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setSBitmap(Lcom/htc/sunny2/SBitmap;)V
    .locals 1
    .parameter "sbmp"

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    .line 139
    return-void
.end method

.method public setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V
    .locals 4
    .parameter "sbmp"
    .parameter "discardBufferOfInputBitma"

    .prologue
    .line 142
    iget v2, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    if-nez p1, :cond_1

    .line 147
    sget-object v2, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v3, "setBitmap NG - SBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->cloneSBitmap()Lcom/htc/sunny2/SBitmap;

    move-result-object v1

    .line 153
    .local v1, cloneSBitmap:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->getBmpId()I

    move-result v0

    .line 154
    .local v0, bitmapHandle:I
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    :cond_2
    sget-object v2, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v3, "setBitmap NG - SunnyBitmap is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->releaseClone()V

    goto :goto_0

    .line 160
    :cond_3
    iget v2, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    invoke-static {v2, v0, p2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    .line 162
    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    .line 163
    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    .line 165
    invoke-virtual {v1}, Lcom/htc/sunny2/SBitmap;->releaseClone()V

    goto :goto_0
.end method

.method public setSourceHeight(I)V
    .locals 0
    .parameter "sourceHeight"

    .prologue
    .line 247
    iput p1, p0, Lcom/htc/sunny2/Texture;->mOriSourceHeight:I

    .line 248
    return-void
.end method

.method public setSourceWidth(I)V
    .locals 0
    .parameter "sourceWidth"

    .prologue
    .line 255
    iput p1, p0, Lcom/htc/sunny2/Texture;->mOriSourceWidth:I

    .line 256
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 193
    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    .line 198
    .local v0, sbmp:Lcom/htc/sunny2/SBitmap;
    if-nez v0, :cond_1

    .line 199
    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setView] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    .line 204
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 236
    iput p1, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    .line 237
    return-void
.end method
