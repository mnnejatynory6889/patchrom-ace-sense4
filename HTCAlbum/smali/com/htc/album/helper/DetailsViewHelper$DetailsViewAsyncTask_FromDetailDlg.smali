.class public Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;
.super Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;
.source "DetailsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DetailsViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DetailsViewAsyncTask_FromDetailDlg"
.end annotation


# instance fields
.field mDetailParams:Lcom/htc/album/DetailDlgParams;

.field public mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

.field protected mIsEditable:Z

.field mViewSingle:Z

.field final synthetic this$0:Lcom/htc/album/helper/DetailsViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;ZZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {p0, p1, p2, p6}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mViewSingle:Z

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIsEditable:Z

    iput-object p3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    iput-object p4, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    iput-boolean p5, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mViewSingle:Z

    return-void
.end method


# virtual methods
.method protected getDetailsViewData()Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;
    .locals 14

    const v10, 0x7f0a0088

    const/4 v13, 0x0

    const/4 v9, 0x1

    const-string v7, "[DetailsViewHelper]"

    const-string v8, "[DetailsViewAsyncTask_FromDetailDlg][getDetailsViewData][+]"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Lcom/htc/album/helper/DetailsViewHelper$1;)V

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->setImageFileName(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0087

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0091

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/htc/album/DetailDlgParams;->getSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0095

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v7

    if-ne v7, v9, :cond_7

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v4, v7, 0x3e8

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0089

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a008a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v7, 0xf4240

    cmp-long v7, v0, v7

    if-gez v7, :cond_9

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a008f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    const-wide/16 v9, 0x3e8

    div-long v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a008b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0092

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0093

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v7}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0096

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v8}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->AddInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v7, "[DetailsViewHelper]"

    const-string v8, "[DetailsViewAsyncTask_FromDetailDlg][getDetailsViewData][-]"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_9
    iget-object v7, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0090

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    long-to-double v9, v0

    const-wide v11, 0x412e848000000000L

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected showResult(Landroid/widget/ScrollView;Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;)V
    .locals 10

    const/4 v9, 0x0

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTask_FromDetailDlg][showResult][+]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPostExecute] scrollview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const v1, 0x7f090029

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItemTileImage;

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[showResult] start DecodeThumbTask"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->mDetailParams:Lcom/htc/album/DetailDlgParams;

    invoke-direct {v6, v1, v2, v8, v3}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;Lcom/htc/widget/HtcListItemTileImage;Lcom/htc/album/DetailDlgParams;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v6, v1}, Lcom/htc/album/helper/DetailsViewHelper$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f090023

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->isLatLongLegal()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[showResult] start GeocoderTask"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->this$0:Lcom/htc/album/helper/DetailsViewHelper;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getLatitude()F

    move-result v3

    invoke-virtual {p2}, Lcom/htc/album/helper/DetailsViewHelper$DetailsInfo;->getLongitude()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;-><init>(Lcom/htc/album/helper/DetailsViewHelper;Landroid/content/Context;FFLandroid/view/ViewGroup;)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/DetailsViewHelper$GeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mHeavyTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040174

    new-instance v3, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$1;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$1;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[showResult] Task has cancelled."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg$2;-><init>(Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0, v1}, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTask_FromDetailDlg;->SafeShow(Lcom/htc/widget/HtcAlertDialog;)V

    :goto_1
    const-string v1, "[DetailsViewHelper]"

    const-string v2, "[DetailsViewAsyncTask_FromDetailDlg][showResult][-]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showResult]mDetailsDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/DetailsViewHelper$DetailsViewAsyncTaskBase;->mDetailsDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "[DetailsViewHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showResult]dialogBuilder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
