.class Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSActionDownloadSuccess"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mType:I

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mBundle:Landroid/os/Bundle;

    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mType:I

    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mType:I

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$OSActionDownloadSuccess;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onOSDownloadSuccess(ILandroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
