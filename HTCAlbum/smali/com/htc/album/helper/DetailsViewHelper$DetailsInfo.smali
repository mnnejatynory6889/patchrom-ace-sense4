.class Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
.super Ljava/lang/Object;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsInfo"
.end annotation


# instance fields
.field public mImageFileName:Ljava/lang/String;

.field public mImageSubFileName:Ljava/lang/String;

.field public mInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLatitude:F

.field public mLongitude:F

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;)V
    .locals 2

    const/high16 v1, 0x437f

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageSubFileName:Ljava/lang/String;

    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    iput v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Lcom/htc/album/helper/DetailsViewHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;)V

    return-void
.end method


# virtual methods
.method public AddInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v1, v2, p1, p2}, Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/helper/DetailsViewHelper$ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLatitude()F
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    return v0
.end method

.method public isLatLongLegal()Z
    .locals 2

    const/high16 v1, 0x437f

    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageFileName:Ljava/lang/String;

    return-void
.end method

.method public setImageSubFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mImageSubFileName:Ljava/lang/String;

    return-void
.end method

.method public setLatLong(FF)V
    .locals 0

    iput p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLatitude:F

    iput p2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->mLongitude:F

    return-void
.end method
