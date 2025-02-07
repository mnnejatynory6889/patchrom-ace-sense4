.class public Lcom/htc/util/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/Folder$AsyncQueryRunnable;,
        Lcom/htc/util/mail/Folder$BasicMessageInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Folder"

.field private static final isServerIdVersion:Z = true

.field public static final sDefaultMailboxId:J = 0x7fffffffffffffffL

.field public static final sDraftMailboxId:J = 0x7ffffffffffffffcL

.field public static final sKindDefault:I = 0x7fffffff

.field public static final sKindDraft:I = 0x7ffffffc

.field public static final sKindNormal:I = 0x0

.field public static final sKindOut:I = 0x7ffffffb

.field public static final sKindSent:I = 0x7ffffffd

.field public static final sKindTrash:I = 0x7ffffffe

.field public static final sOutMailboxId:J = 0x7ffffffffffffffbL

.field public static final sSentMailboxId:J = 0x7ffffffffffffffdL

.field public static final sTrashMailboxId:J = 0x7ffffffffffffffeL


# instance fields
.field private mBelongAccount:Lcom/htc/util/mail/MailAccount;

.field private mBelongRealAccount:Lcom/htc/util/mail/MailAccount;

.field private mChildFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDefaultFolder:I

.field private mDelMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderId:J

.field private mFolderPathName:Ljava/lang/String;

.field private mFolderShortName:Ljava/lang/String;

.field private mIsMessageListFirstTimeQuery:Z

.field private mLastMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

.field private mMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNewMessageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFolder:Lcom/htc/util/mail/Folder;

.field private mParentId:I

.field private mServerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/Folder;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/mail/MailAccount;Lcom/htc/util/mail/MailAccount;Ljava/lang/String;Ljava/lang/String;JIII)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "realAccount"
    .parameter "folderName"
    .parameter "folderShortName"
    .parameter "folderId"
    .parameter "defaultFolderId"
    .parameter "serverId"
    .parameter "parentId"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    .line 104
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    .line 105
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mBelongRealAccount:Lcom/htc/util/mail/MailAccount;

    .line 106
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mFolderPathName:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mFolderShortName:Ljava/lang/String;

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    .line 109
    iput v3, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    .line 110
    iput v3, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    .line 111
    iput v3, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    .line 113
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    .line 114
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    .line 116
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    .line 120
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    .line 121
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    .line 122
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    .line 123
    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/Folder;->mIsMessageListFirstTimeQuery:Z

    .line 1121
    iput-object p1, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    .line 1123
    iput-object p2, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    .line 1124
    iput-object p3, p0, Lcom/htc/util/mail/Folder;->mBelongRealAccount:Lcom/htc/util/mail/MailAccount;

    .line 1125
    iput-object p4, p0, Lcom/htc/util/mail/Folder;->mFolderPathName:Ljava/lang/String;

    .line 1126
    iput-object p5, p0, Lcom/htc/util/mail/Folder;->mFolderShortName:Ljava/lang/String;

    .line 1127
    iput-wide p6, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    .line 1128
    iput p8, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    .line 1129
    iput p9, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    .line 1130
    iput p10, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    .line 1132
    return-void
.end method

.method static synthetic access$000(Lcom/htc/util/mail/Folder;)Lcom/htc/util/mail/IMailMessageListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    return-object v0
.end method

.method private getMessagesWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    iget-wide v1, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailAccount;->getMessagesWhere(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQueryPriorityString(I)Ljava/lang/String;
    .locals 4
    .parameter "priorityMask"

    .prologue
    .line 969
    and-int/lit8 v2, p1, 0x7

    if-nez v2, :cond_0

    const-string v2, ""

    .line 991
    :goto_0
    return-object v2

    .line 971
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 974
    .local v0, isSet:Z
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1

    .line 975
    const-string v2, " _importance=0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const/4 v0, 0x1

    .line 979
    :cond_1
    const/4 v2, 0x2

    and-int/lit8 v3, p1, 0x2

    if-ne v2, v3, :cond_3

    .line 980
    if-eqz v0, :cond_2

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    :cond_2
    const-string v2, " _importance=1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const/4 v0, 0x1

    .line 985
    :cond_3
    const/4 v2, 0x4

    and-int/lit8 v3, p1, 0x4

    if-ne v2, v3, :cond_5

    .line 986
    if-eqz v0, :cond_4

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_4
    const-string v2, " _importance=2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const/4 v0, 0x1

    .line 991
    :cond_5
    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getQueryReadStatusString(I)Ljava/lang/String;
    .locals 1
    .parameter "readStatus"

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    const-string v0, " AND _read=1"

    .line 963
    :goto_0
    return-object v0

    .line 960
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 961
    const-string v0, " AND _read=0"

    goto :goto_0

    .line 963
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getQueryRecipientsString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const-string v3, ""

    .line 1007
    :goto_0
    return-object v3

    .line 996
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 998
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1001
    .local v1, r:Ljava/lang/String;
    const-string v3, "_to like \"%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\" or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1005
    .end local v1           #r:Ljava/lang/String;
    :cond_2
    const-string v3, "\"false\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isMessagesExist()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/Folder;->refreshMessages()V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteMessage(J)I
    .locals 5
    .parameter "messageId"

    .prologue
    const/4 v4, 0x0

    .line 719
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 726
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/util/mail/MailUtils;->sDelMailURI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 729
    .local v1, delNum:I
    sget-boolean v2, Lcom/htc/util/mail/Folder;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 730
    const-string v2, "Folder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessage(long)("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    return v1
.end method

.method public deleteMessage(Lcom/htc/util/mail/MailMessage;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 698
    invoke-virtual {p1}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/mail/Folder;->deleteMessage(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/htc/util/mail/Folder;->release()V

    .line 1163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1164
    return-void
.end method

.method public getAllMessages()Z
    .locals 3

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 954
    :goto_0
    return v0

    .line 950
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;

    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->getMessagesWhere()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;-><init>(Lcom/htc/util/mail/Folder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 954
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBasicMessageInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 795
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getChildFolderName()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/htc/util/mail/Folder;->getChildFolders()Ljava/util/ArrayList;

    .line 543
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-object v2

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v2, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    monitor-enter v4

    .line 548
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    .line 549
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 551
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getChildFolders()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    .line 476
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 477
    .local v0, allAccountFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    if-eqz v0, :cond_4

    .line 478
    monitor-enter v0

    .line 479
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder;

    .line 482
    .local v1, f:Lcom/htc/util/mail/Folder;
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mBelongRealAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v3, :cond_1

    .line 484
    iget v3, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    iget v4, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    if-eq v3, v4, :cond_0

    .line 485
    iget v3, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getParentServerId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 486
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 487
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 519
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 491
    .restart local v1       #f:Lcom/htc/util/mail/Folder;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x4

    :try_start_3
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailAccount;->getProtocol()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 493
    iget v3, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    iget v4, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    if-eq v3, v4, :cond_0

    .line 494
    iget v3, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getParentServerId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 496
    :try_start_4
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v3

    .line 502
    :cond_2
    iget-wide v3, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getParentServerId()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 503
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 504
    :try_start_6
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v4

    goto :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v3

    .line 519
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    :cond_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 522
    .end local v0           #allAccountFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    return-object v3
.end method

.method public getDelMailList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    .line 839
    :cond_0
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 841
    iget-object v6, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 842
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    monitor-exit v6

    .line 862
    :goto_0
    return-object v5

    .line 844
    :cond_1
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 845
    .local v4, size:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 847
    .local v2, ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 848
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 847
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    iget-wide v7, v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    iget-wide v8, v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 860
    .end local v0           #i:I
    .end local v2           #ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 853
    .restart local v0       #i:I
    .restart local v2       #ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v4       #size:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 854
    .local v3, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    if-eqz v3, :cond_4

    .line 856
    iget-wide v7, v3, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 857
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 860
    .end local v3           #info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    return-wide v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mFolderShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mFolderPathName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(J)Z
    .locals 2
    .parameter "messageId"

    .prologue
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/Folder;->isMessageExist(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 931
    :goto_0
    return v0

    .line 927
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;-><init>(Lcom/htc/util/mail/Folder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMessageNum()I
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMessages(JJILjava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter
    .parameter "originator"
    .parameter "priorityMask"
    .parameter "filterMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .local p6, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1036
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 1077
    :goto_0
    return v1

    .line 1038
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->getMessagesWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    and-int/lit8 v2, p9, 0x1

    if-ne v1, v2, :cond_1

    .line 1043
    const-string v2, " AND _internaldate>="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _internaldate<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1049
    :cond_1
    const/4 v2, 0x2

    and-int/lit8 v3, p9, 0x2

    if-ne v2, v3, :cond_2

    .line 1050
    invoke-direct {p0, p5}, Lcom/htc/util/mail/Folder;->getQueryReadStatusString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_2
    const/4 v2, 0x4

    and-int/lit8 v3, p9, 0x4

    if-ne v2, v3, :cond_3

    .line 1054
    invoke-direct {p0, p6}, Lcom/htc/util/mail/Folder;->getQueryRecipientsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    :cond_3
    const/16 v2, 0x8

    and-int/lit8 v3, p9, 0x8

    if-ne v2, v3, :cond_4

    .line 1058
    if-eqz p7, :cond_4

    .line 1059
    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " _from like \"%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or _fromEmail like \"%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_4
    const/16 v2, 0x10

    and-int/lit8 v3, p9, 0x10

    if-ne v2, v3, :cond_5

    .line 1067
    invoke-direct {p0, p8}, Lcom/htc/util/mail/Folder;->getQueryPriorityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    :cond_5
    sget-boolean v2, Lcom/htc/util/mail/Folder;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Folder"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_6
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/util/mail/Folder$AsyncQueryRunnable;-><init>(Lcom/htc/util/mail/Folder;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public getMyserverId()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/htc/util/mail/Folder;->mServerId:I

    return v0
.end method

.method public getNewMailList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/Folder$BasicMessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    .line 805
    :cond_0
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 807
    iget-object v6, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 808
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-exit v6

    .line 828
    :goto_0
    return-object v5

    .line 810
    :cond_1
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 811
    .local v4, size:I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 813
    .local v2, ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 814
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 813
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 816
    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    iget-wide v7, v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    iget-wide v8, v5, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 826
    .end local v0           #i:I
    .end local v2           #ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 819
    .restart local v0       #i:I
    .restart local v2       #ids:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v4       #size:I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 820
    .local v3, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    if-eqz v3, :cond_4

    .line 822
    iget-wide v7, v3, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 823
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 826
    .end local v3           #info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    iget-object v5, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getParentFolder()Lcom/htc/util/mail/Folder;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 413
    invoke-virtual {p0}, Lcom/htc/util/mail/Folder;->isRootFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-object v3

    .line 415
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    if-nez v4, :cond_2

    .line 416
    iget v4, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    if-nez v4, :cond_3

    .line 417
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getRootFolder()Lcom/htc/util/mail/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    .line 465
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    goto :goto_0

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    .local v0, allAccountFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mBelongRealAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v4, :cond_0

    .line 424
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v4}, Lcom/htc/util/mail/MailAccount;->getProtocol()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 426
    if-eqz v0, :cond_2

    .line 427
    monitor-enter v0

    .line 428
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder;

    .line 429
    .local v1, f:Lcom/htc/util/mail/Folder;
    iget v3, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getMyserverId()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 430
    iput-object v1, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    .line 434
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    :cond_5
    monitor-exit v0

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 438
    :cond_6
    if-eqz v0, :cond_2

    .line 439
    monitor-enter v0

    .line 440
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder;

    .line 441
    .restart local v1       #f:Lcom/htc/util/mail/Folder;
    iget v3, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    int-to-long v3, v3

    invoke-virtual {v1}, Lcom/htc/util/mail/Folder;->getFolderId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 442
    iput-object v1, p0, Lcom/htc/util/mail/Folder;->mParentFolder:Lcom/htc/util/mail/Folder;

    .line 446
    .end local v1           #f:Lcom/htc/util/mail/Folder;
    :cond_8
    monitor-exit v0

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getParentServerId()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    return v0
.end method

.method public getReadMessageNum()I
    .locals 5

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 625
    :goto_0
    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 620
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 621
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 622
    .local v2, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-boolean v3, v2, Lcom/htc/util/mail/Folder$BasicMessageInfo;->isReaded:Z

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    .end local v2           #info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getUnReadMessageNum()I
    .locals 5

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    .line 641
    :cond_0
    const/4 v0, 0x0

    .line 642
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 644
    .local v2, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-boolean v3, v2, Lcom/htc/util/mail/Folder$BasicMessageInfo;->isReaded:Z

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    .end local v2           #info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public hasChildFolder()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0}, Lcom/htc/util/mail/Folder;->getChildFolders()Ljava/util/ArrayList;

    .line 528
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCombinedFolder()Z
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/util/mail/Folder;->mBelongAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraftFolder()Z
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    const v1, 0x7ffffffc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInBoxFolder()Z
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageExist(J)Z
    .locals 6
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->isMessagesExist()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    :goto_0
    return v2

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 264
    :try_start_0
    iget-object v4, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    .line 265
    .local v1, info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-wide v4, v1, Lcom/htc/util/mail/Folder$BasicMessageInfo;->messageId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 266
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isOutFolder()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    const v1, 0x7ffffffb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootFolder()Z
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/htc/util/mail/Folder;->mParentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentFolder()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    const v1, 0x7ffffffd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrashFolder()Z
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/htc/util/mail/Folder;->mDefaultFolder:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveMessageTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "messageId"
    .parameter "folderName"

    .prologue
    .line 677
    const/4 v0, 0x0

    return v0
.end method

.method public refreshMessages()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 282
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/util/mail/Folder;->getMessagesWhere()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_internaldate DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 288
    .local v7, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    .line 291
    :cond_0
    iget-object v10, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    .line 296
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    :cond_2
    new-instance v0, Lcom/htc/util/mail/Folder$BasicMessageInfo;

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/util/mail/Folder;->mFolderId:J

    const-string v1, "_read"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v8, v1, :cond_7

    move v6, v8

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/util/mail/Folder$BasicMessageInfo;-><init>(Lcom/htc/util/mail/Folder;JJZ)V

    .line 305
    .local v0, basicInfo:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    .end local v0           #basicInfo:Lcom/htc/util/mail/Folder$BasicMessageInfo;
    :cond_3
    iget-boolean v1, p0, Lcom/htc/util/mail/Folder;->mIsMessageListFirstTimeQuery:Z

    if-eqz v1, :cond_5

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/util/mail/Folder;->mIsMessageListFirstTimeQuery:Z

    .line 311
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    .line 314
    :cond_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_6
    return-void

    :cond_7
    move v6, v9

    .line 301
    goto :goto_0

    .line 314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .prologue
    .line 338
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 339
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mMessageList:Ljava/util/ArrayList;

    .line 342
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 346
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 347
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 348
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mLastMessageList:Ljava/util/ArrayList;

    .line 349
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 354
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 355
    :try_start_2
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 356
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mNewMessageList:Ljava/util/ArrayList;

    .line 357
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 362
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 363
    :try_start_3
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 364
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mDelMessageList:Ljava/util/ArrayList;

    .line 365
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 369
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/mail/Folder;->mIsMessageListFirstTimeQuery:Z

    .line 373
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 374
    iget-object v3, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    monitor-enter v3

    .line 375
    :try_start_4
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/Folder;

    .line 376
    .local v0, f:Lcom/htc/util/mail/Folder;
    invoke-virtual {v0}, Lcom/htc/util/mail/Folder;->release()V

    goto :goto_0

    .line 382
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 342
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 349
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 357
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 365
    :catchall_4
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v2

    .line 380
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_9
    iget-object v2, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 381
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/Folder;->mChildFolders:Ljava/util/ArrayList;

    .line 382
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 386
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 879
    iput-object p1, p0, Lcom/htc/util/mail/Folder;->mMailMessageListener:Lcom/htc/util/mail/IMailMessageListener;

    .line 880
    return-void
.end method
