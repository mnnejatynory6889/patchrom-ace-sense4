.class Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;
.super Ljava/lang/Object;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Parameter"
.end annotation


# instance fields
.field cacheName:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

.field type:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->cacheName:Ljava/lang/String;

    iput p4, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->type:I

    return-void
.end method
