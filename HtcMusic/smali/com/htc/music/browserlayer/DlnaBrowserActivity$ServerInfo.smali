.class public Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;
.super Ljava/lang/Object;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerInfo"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mImg:Landroid/graphics/Bitmap;

.field private mImgPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 747
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mId:Ljava/lang/String;

    .line 749
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mName:Ljava/lang/String;

    .line 750
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 751
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    .line 752
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "Id"
    .parameter "Name"
    .parameter "Path"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mId:Ljava/lang/String;

    .line 755
    iput-object p3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mName:Ljava/lang/String;

    .line 756
    iput-object p4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    .line 758
    return-void
.end method


# virtual methods
.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public SetImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImg:Landroid/graphics/Bitmap;

    .line 772
    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 763
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->mImgPath:Ljava/lang/String;

    .line 764
    return-void
.end method
