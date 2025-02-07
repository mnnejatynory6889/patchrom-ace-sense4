.class public Lcom/htc/album/helper/ImageProcessManager;
.super Ljava/lang/Object;
.source "ImageProcessManager.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ImageProcessManager$ProcessThread;,
        Lcom/htc/album/helper/ImageProcessManager$PartialIImageImpl;,
        Lcom/htc/album/helper/ImageProcessManager$EmptyIImageImpl;,
        Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;,
        Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;,
        Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;,
        Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    }
.end annotation


# static fields
.field public static final CLEAR_CACHE_BESIDES_IN_ONE_DAY:J = 0x15180L

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DIALOG_3D_FLATTEN_PROCESS_PROGRESS:I = 0x440001

.field public static final DIALOG_INK_MERGE_PROCESS_PROGRESS:I = 0x440000

.field public static final DIALOG_SD_CARD_FULL_PROGRESS:I = 0x440002

.field private static final KILL_CACHE_BESIDES_ONE_DAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MIN_STORAGE_LIMITE:I = 0x500000

.field public static final TIME_OUT_IN_1_5_SEC:J = 0x5dcL


# instance fields
.field private featureID:I

.field private inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

.field private isSaveToTheSameFolder:Z

.field private isShareCancel:Z

.field private isSingle:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

.field private mFragment:Landroid/app/Fragment;

.field private mNeedActivityFinish:Z

.field private mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

.field private mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

.field private mPictureSaveToAlbumPrompt:Ljava/lang/String;

.field private mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

.field private mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

.field private mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private mSDCardRootFolderName:Ljava/lang/String;

.field private mShouldShow3DConverted2DHintToast:Z

.field private originalFolder:Ljava/lang/String;

.field private originalFolderOutputPath:Ljava/lang/String;

.field private pickerResult:Landroid/content/Intent;

.field private position:I

.field private resultDataPath:Ljava/lang/String;

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field private resultMimeType:Ljava/lang/String;

.field private resultUri:Landroid/net/Uri;

.field private rootFolder:Ljava/lang/String;

.field private sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

.field private shareIntent:Landroid/content/Intent;

.field private targetIntent:Landroid/content/Intent;

.field private threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    iput v2, p0, Lcom/htc/album/helper/ImageProcessManager;->featureID:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/helper/ImageProcessManager;->position:I

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    iput-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;

    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mSDCardRootFolderName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mSDCardRootFolderName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/ImageProcessManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/album/helper/ImageProcessManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/ImageProcessManager;->isShareCancel:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/ImageProcessManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/album/helper/ImageProcessManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/ImageProcessManager;->position:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolderOutputPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/album/helper/ImageProcessManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/album/helper/ImageProcessManager;->featureID:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/album/helper/ImageProcessManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/album/helper/ImageProcessManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/album/helper/ImageProcessManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/app/HtcProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/album/helper/ImageProcessManager;Lcom/htc/album/helper/ImageProcessManager$ProcessThread;)Lcom/htc/album/helper/ImageProcessManager$ProcessThread;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/helper/ImageProcessManager;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/helper/ImageProcessManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/album/helper/ImageProcessManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/album/helper/ImageProcessManager;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/htc/album/helper/ImageProcessManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mSDCardRootFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureConvertedSaveToAlbumPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPictureSaveToAlbumPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/helper/ImageProcessManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/album/helper/ImageProcessManager;->shareMultiProcessedMedia()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->setKeepScreenOn(Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/helper/ImageProcessManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/helper/ImageProcessManager;)Lcom/htc/album/PaintManager/HtcPaintMergeTool;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/album/helper/ImageProcessManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/album/helper/ImageProcessManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/album/helper/ImageProcessManager;->originalFolder:Ljava/lang/String;

    return-object p1
.end method

.method private doProcessSingleMedia(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private processMedias()V
    .locals 8

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v5}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v6, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-direct {v5, p0, v6, v7}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/ObserverAdapter;)V

    iput-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v5}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->start()V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :try_start_0
    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iget v6, p0, Lcom/htc/album/helper/ImageProcessManager;->position:I

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v2

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v2, :cond_3

    const v4, 0x440001

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    instance-of v5, v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_4

    iget-object v5, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_2

    const/high16 v4, 0x44

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProcessManager][processMedias]can\'t get showingDialogID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][ImageProcessManager][processMedias]can\'t show dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setKeepScreenOn(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/helper/ImageProcessManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/album/helper/ImageProcessManager$1;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/app/Activity;Z)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private shareMultiProcessedMedia()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    :cond_0
    sget-boolean v21, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v21, :cond_1

    sget-object v21, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v22, "[HTCAlbum][ImageProcessManager][shareMultiProcessedMedia] Error..."

    invoke-static/range {v21 .. v22}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    const-string v21, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "com.htc.socialnetwork.flickr"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v21, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v21, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v19, v21, v22

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v9, :cond_4

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v21, "com.htc.opensense.upload.URI"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "com.htc.opensense.upload.TITLE"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "com.htc.opensense.upload.DESCRIPTION"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v21, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v19, v21, v22

    goto :goto_1

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v21, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v21, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v21, "com.htc.android.mail"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    sget-boolean v21, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v21, :cond_8

    sget-object v21, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v22, "[HTCAlbum][ImageProcessManager][shareMultiProcessedMedia]: com.htc.android.mail"

    invoke-static/range {v21 .. v22}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v9, :cond_9

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-boolean v21, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v21, :cond_b

    sget-object v21, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[HTCAlbum][ImageProcessManager][shareMultiProcessedMedia][Mail] Find IImage by Index Result Time = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v23, v6, v17

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "android.intent.action.SEND"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "multiple_files"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v21, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v9, :cond_d

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v21, "uri"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v21, "mimeType"

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "data"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string v21, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    sget-boolean v21, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v21, :cond_10

    sget-object v21, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v22, "[HTCAlbum][ImageProcessManager][shareMultiProcessedMedia]: Intent.ACTION_SEND_MULTIPLE"

    invoke-static/range {v21 .. v22}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v9}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public OnMenuItemSelected(IILandroid/content/Intent;)V
    .locals 17

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.HTCAlbum.MY_FAVORITES"

    if-eq v4, v5, :cond_2

    :cond_0
    sget-boolean v4, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][ImageProcessManager][OnMenuItemSelected][Single]curImage.is3D, flatten to 2D."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    invoke-direct/range {p0 .. p3}, Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_1
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.htc.album.actions.threedconvert"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "SharedAdapter.KEY_PACKAGE"

    const-string v5, "SharedAdapter.KEY_PACKAGE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00e8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00e7

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040151

    new-instance v6, Lcom/htc/album/helper/ImageProcessManager$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$4;-><init>(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x2040152

    new-instance v6, Lcom/htc/album/helper/ImageProcessManager$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/album/helper/ImageProcessManager$3;-><init>(Lcom/htc/album/helper/ImageProcessManager;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    invoke-direct/range {p0 .. p3}, Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.HTCAlbum.MY_FAVORITES"

    if-eq v4, v5, :cond_5

    :cond_3
    sget-boolean v4, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[InkMergeManager][OnMenuItemSelected][Single]curImage.isInked, pop dialog."

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0101

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0100

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0106

    new-instance v6, Lcom/htc/album/helper/ImageProcessManager$6;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$6;-><init>(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0107

    new-instance v6, Lcom/htc/album/helper/ImageProcessManager$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v13}, Lcom/htc/album/helper/ImageProcessManager$5;-><init>(Lcom/htc/album/helper/ImageProcessManager;ILandroid/content/Intent;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v11

    invoke-interface {v13}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v12}, Lcom/htc/album/helper/ImageProcessManager;->handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 14

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    const/16 v11, 0x9

    if-ne p1, v11, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getCount()I

    move-result v6

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    iget-object v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v11, v4}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v4

    :cond_0
    :goto_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    sget-boolean v11, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][ImageProcessManager][OnMenuItemSelected][Single]FEATURE_PRINT, pos = -1!"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    invoke-virtual {v11, v10}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-nez v5, :cond_6

    sget-boolean v11, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][ImageProcessManager][OnMenuItemSelected][Single]FEATURE_PRINT, image is null!"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mShouldShow3DConverted2DHintToast:Z

    :cond_7
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/album/helper/ImageProcessManager;->isSaveToTheSameFolder:Z

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v10, v0, v11}, Lcom/htc/album/helper/ImageProcessManager;->doProcessSingleMedia(IILandroid/content/Intent;Z)V

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v11

    if-nez v11, :cond_9

    move v3, v10

    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v12, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0a0101

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0100

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0106

    new-instance v13, Lcom/htc/album/helper/ImageProcessManager$8;

    move-object/from16 v0, p3

    invoke-direct {v13, p0, p1, v3, v0}, Lcom/htc/album/helper/ImageProcessManager$8;-><init>(Lcom/htc/album/helper/ImageProcessManager;IILandroid/content/Intent;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0107

    new-instance v13, Lcom/htc/album/helper/ImageProcessManager$7;

    invoke-direct {v13, p0, v9, v8}, Lcom/htc/album/helper/ImageProcessManager$7;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    sget-object v11, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v12, "[HTCAlbum][ImageProcessManager][OnMenuItemSelected][Single]pickerResult.getData() = null!"

    invoke-static {v11, v12}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public cancelProcessMedias()V
    .locals 4

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->cancel()V

    :try_start_0
    sget-boolean v1, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProcessManager][cancelProcessMedias] Join process thread start!!"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/htc/album/helper/ImageProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ImageProcessManager][cancelProcessMedias] Join process thread time out @ 2000!!"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public doProcessSingleMedia(IILandroid/content/Intent;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/ImageProcessManager;->isSingle:Z

    iput p1, p0, Lcom/htc/album/helper/ImageProcessManager;->featureID:I

    iput p2, p0, Lcom/htc/album/helper/ImageProcessManager;->position:I

    iput-object p3, p0, Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager$ProcessThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/album/helper/ImageProcessManager;->processMedias()V

    goto :goto_0
.end method

.method public handleRoutes(ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 10

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/album/helper/ImageProcessManager$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/htc/album/helper/ImageProcessManager$2;-><init>(Lcom/htc/album/helper/ImageProcessManager;ILandroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_3D_FLATTEN_PROCESS_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_INK_MERGE_PROCESS_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    invoke-direct {v1, p0, p2, v2}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;-><init>(Lcom/htc/album/helper/ImageProcessManager;Landroid/os/Bundle;Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    iget-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_SD_CARD_FULL_PROGRESS"

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x440000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;->dismiss()V

    :cond_0
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->threeDFlattenProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_3D_FLATTEN_PROCESS_PROGRESS;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;->dismiss()V

    :cond_1
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->inkMergeProcessProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_INK_MERGE_PROCESS_PROGRESS;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    invoke-virtual {v1}, Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;->dismiss()V

    :cond_2
    iput-object v2, p0, Lcom/htc/album/helper/ImageProcessManager;->sdCardFullProgress:Lcom/htc/album/helper/ImageProcessManager$DLG_SD_CARD_FULL_PROGRESS;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x440000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onShowSDCardFullDialog(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z

    sget-object v0, Lcom/htc/album/helper/ImageProcessManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ImageProcessManager][onShowSDCardFullDialog]: pop SD Card Full Dialog, mNeedActivityFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/helper/ImageProcessManager;->mNeedActivityFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;

    const v1, 0x440002

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IFragmentDialog;->showFragmentDialog(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/HtcPaintMergeTool;->release()V

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mPaintMergeTool:Lcom/htc/album/PaintManager/HtcPaintMergeTool;

    :cond_0
    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mFragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mAdapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessCallback:Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->mProcessThread:Lcom/htc/album/helper/ImageProcessManager$ProcessThread;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->targetIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->shareIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->pickerResult:Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultDataPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->rootFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/htc/album/helper/ImageProcessManager;->resultList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
